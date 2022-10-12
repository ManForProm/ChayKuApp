package com.example.alltea_feature.presentation

import android.content.Context
import androidx.lifecycle.ViewModelProvider
import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.View
import androidx.fragment.app.viewModels
import androidx.lifecycle.get
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import com.example.alltea_feature.R
import com.example.alltea_feature.databinding.AllTeaTabFragmentBinding
import com.example.alltea_feature.presentation.adapters.AllTeaTabRecyclerViewAdapter
import dagger.Lazy
import kotlinx.coroutines.flow.collectLatest
import javax.inject.Inject

class AllTeaTabFragment : Fragment(R.layout.all_tea_tab_fragment) {

    @Inject
    internal lateinit var allTeaTabViewModelFatory: Lazy<AllTeaTabViewModel.AllTeaViewModelFactory>

    private val allTeaViewModel: AllTeaTabViewModel by viewModels{ allTeaTabViewModelFatory.get() }

    private var adapter:AllTeaTabRecyclerViewAdapter? = null

    override fun onAttach(context: Context) {
        ViewModelProvider(this).get<AllTeaTabComponentViewModel>()
            .allTeaComponent
            .inject(this)
        super.onAttach(context)

    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        val binding = AllTeaTabFragmentBinding.bind(view)

        val allTeaAdapter = AllTeaTabRecyclerViewAdapter()

        this.adapter = allTeaAdapter

        collectAllTea(binding)

        with(binding.allTeaList){
            layoutManager = LinearLayoutManager(context)
            this.adapter = allTeaAdapter
        }
        binding.addAnotherTea.setOnClickListener {
            allTeaViewModel.isFloatingButtonClicked()
//            activity.supportFragmentManager.beginTransaction().replace(R.id.all_tea_main_layout, )
        }
    }
    fun collectAllTea(binding: AllTeaTabFragmentBinding){
        lifecycleScope.launchWhenStarted{
            allTeaViewModel.apply {
                loadingState?.collectLatest { status ->
                    checkStatusLoadingAllTea(status, binding )
                }

                teas.collectLatest { teas ->
                    adapter?.submitList(teas.teas)
                }

            }
        }
    }

    fun checkStatusLoadingAllTea(status: LoadingState,binding: AllTeaTabFragmentBinding){
        when(status.status){
            LoadingState.Status.RUNNING -> binding.allTeaProgressBar.visibility = View.VISIBLE
            LoadingState.Status.SUCCESS -> binding.allTeaProgressBar.visibility = View.GONE
            LoadingState.Status.FAILED -> binding.allTeaErrorLoadingText.visibility = View.VISIBLE

        }
    }
    override fun onDestroy() {
        super.onDestroy()
        adapter = null
    }
}