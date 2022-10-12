package com.example.chaykuapp.presentation
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.FragmentManager
import androidx.fragment.app.add
import androidx.fragment.app.commit
import androidx.fragment.app.replace
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.lifecycleScope
import com.example.alltea_feature.presentation.AllTeaTabFragment
import com.example.chaykuapp.R
import com.example.new_tea_feature.AddNewTeaFragment
import dagger.Lazy
import kotlinx.coroutines.flow.collectLatest
import javax.inject.Inject

class MainActivity : AppCompatActivity(R.layout.activity_main){

//    @Inject
//    internal lateinit var mainActivityViewModelFatory: Lazy<MainActivityViewModelImpl.MainActivityViewModelFactory>
//
//    private val mainActivityViewModel: MainActivityViewModelImpl by viewModels{ mainActivityViewModelFatory.get() }

    internal lateinit var mainActivityViewModelFactory: ViewModelProvider.Factory

    private val mainActivityViewModel: MainActivityViewModelImpl by lazy {
        ViewModelProviders
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val fragmentManager = supportFragmentManager

        collectMainActivityViewModel(fragmentManager)

        if(fragmentManager.findFragmentById(R.id.fragment_container_view_tag) == null){
            fragmentManager.commit {
                add<AllTeaTabFragment>(R.id.fragment_container_view_tag,"All tea tab fragment")
            }
        }

    }

    fun collectMainActivityViewModel(fragmentManager: FragmentManager){
        lifecycleScope.launchWhenStarted{
                mainActivityViewModel.apply {
                    isFloatingActionButtonClicked?.collectLatest { state ->
                        if (state){
                            fragmentManager.commit {
                                replace<AddNewTeaFragment>(R.id.fragment_container_view_tag, "add new tea tab fragment")
                            }
                        }

                    }
                }
        }
    }

    override fun onResume() {
        super.onResume()
        actionBar?.hide()
    }

}