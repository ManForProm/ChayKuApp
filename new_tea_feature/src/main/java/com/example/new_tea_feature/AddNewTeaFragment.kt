package com.example.new_tea_feature

import androidx.lifecycle.ViewModelProvider
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.lifecycle.ViewModelStore
import androidx.lifecycle.ViewModelStoreOwner

class AddNewTeaFragment : androidx.fragment.app.Fragment(R.layout.add_new_tea_fragment){

    companion object {
        fun newInstance() = AddNewTeaFragment()
    }

    private lateinit var viewModel: AddNewTeaViewModel

//    override fun onActivityCreated(savedInstanceState: Bundle?) {
//        super.onActivityCreated(savedInstanceState)
//        viewModel = ViewModelProvider(this).get(AddNewTeaViewModel::class.java)
//        // TODO: Use the ViewModel
//    }


}