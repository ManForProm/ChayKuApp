package com.example.alltea_feature.presentation

import androidx.lifecycle.ViewModelProvider
import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.viewModels
import androidx.lifecycle.lifecycleScope
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import com.example.alltea_feature.R
import com.example.alltea_feature.databinding.AllTeaTabFragmentBinding
import com.example.alltea_feature.presentation.adapters.AllTeaTabRecyclerViewAdapter
import kotlinx.coroutines.flow.collect

class AllTeaTabFragment : Fragment(R.layout.all_tea_tab_fragment) {

    private val allTeaViewModel: AllTeaTabViewModel by viewModels()
    private var adapter:AllTeaTabRecyclerViewAdapter? = null

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