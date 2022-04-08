package com.example.alltea_feature.presentation

import android.content.Context
import androidx.lifecycle.ViewModelProvider
import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.viewModels
import androidx.lifecycle.get
import androidx.lifecycle.lifecycleScope
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import com.example.alltea_feature.R
import com.example.alltea_feature.databinding.AllTeaTabFragmentBinding
import com.example.alltea_feature.di.AllTeaComponent
import com.example.alltea_feature.di.AllTeaComponentViewModel
import com.example.alltea_feature.presentation.adapters.AllTeaTabRecyclerViewAdapter
import dagger.Lazy
import kotlinx.coroutines.flow.collect
import javax.inject.Inject
import javax.inject.Provider

class AllTeaTabFragment : Fragment(R.layout.all_tea_tab_fragment) {

    @Inject
    internal lateinit var allTeaTabViewModelFatory: Lazy<AllTeaTabViewModel.allTeaViewModelFactory>

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

        val allTeaAdapter = AllTeaTabRecyclerViewAdapter()

        this.adapter = allTeaAdapter

        lifecycleScope.launchWhenStarted{
            allTeaViewModel.teas.collect(){ teas ->
                adapter?.submitList(teas.teas)
            }
        }
        val binding = AllTeaTabFragmentBinding.bind(view)

        with(binding.allTeaList){
            layoutManager = LinearLayoutManager(context)
            this.adapter = allTeaAdapter
        }

        binding.addAnotherTea.setOnClickListener {
        }
    }
    override fun onDestroy() {
        super.onDestroy()
        adapter = null
    }
}