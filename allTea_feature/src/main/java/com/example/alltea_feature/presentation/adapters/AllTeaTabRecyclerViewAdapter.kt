package com.example.alltea_feature.presentation.adapters

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.example.alltea_feature.databinding.AllTeaRecyclerItemBinding
import com.example.alltea_feature.databinding.AllTeaTabFragmentBinding
import com.example.database_module.models.UsersTea

class AllTeaTabRecyclerViewAdapter: ListAdapter<UsersTea,AllTeaTabRecyclerViewAdapter.ViewHolder>(TeaItemCallBack()) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {

        return ViewHolder(
            AllTeaRecyclerItemBinding.inflate(
                LayoutInflater.from(parent.context),
                parent,
                false
            )
        )

    }
    inner class ViewHolder(private val binding: AllTeaRecyclerItemBinding) :
        RecyclerView.ViewHolder(binding.root) {
        fun bind(tea: UsersTea){
            binding.apply {
                tea.apply {
                    allTeaRecyclerItemBaseText.text = base
                    allTeaRecyclerItemMainTasteText.text = mainTaste
                    allTeaRecyclerItemNameText.text = teaName
                    allTeaRecyclerItemTasteText.text = taste
                    allTeaRecyclerItemDecorationText.text = decoration
                }
            }

        }
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bind(getItem(position))
    }

}

//List Adapter Callback
private class TeaItemCallBack : DiffUtil.ItemCallback<UsersTea>(){
    override fun areItemsTheSame(oldItem: UsersTea, newItem: UsersTea): Boolean {
        return oldItem == newItem
    }

    override fun areContentsTheSame(oldItem: UsersTea, newItem: UsersTea): Boolean {
        return oldItem.teaName == newItem.teaName
    }

}