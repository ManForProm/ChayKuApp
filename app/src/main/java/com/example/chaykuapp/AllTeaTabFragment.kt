package com.example.chaykuapp

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import com.example.chaykuapp.adapters.AllTeaTabRecyclerViewAdapter
import com.example.chaykuapp.data.UsersTea
import com.example.chaykuapp.databinding.AllTeaTabFragmentBinding

/**
 * A simple [Fragment] subclass as the default destination in the navigation.
 */
class AllTeaTabFragment : Fragment(R.layout.all_tea_tab_fragment) {
    private var adapter:AllTeaTabRecyclerViewAdapter? = null


    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        val allTeaAdapter = AllTeaTabRecyclerViewAdapter()

        this.adapter = allTeaAdapter

        val binding = AllTeaTabFragmentBinding.bind(view)

        adapter?.submitList(listOf(UsersTea(
                "Oolong",
            "Sasha",
            "black",
            "rose",
            "none",
            "none"
        )))

        with(binding.allTeaList){
            layoutManager = LinearLayoutManager(context)
            this.adapter =allTeaAdapter
        }

        binding.addAnotherTea.setOnClickListener {
            findNavController().navigate(R.id.action_FirstFragment_to_SecondFragment)
        }

    }

    override fun onDestroyView() {
        super.onDestroyView()
        adapter = null
    }
}