package com.example.chaykuapp.adapters

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.example.chaykuapp.data.UsersTea
import com.example.chaykuapp.databinding.AllTeaRecyclerItemBinding

class AllTeaTabRecyclerViewAdapter() : ListAdapter<UsersTea,
        AllTeaTabRecyclerViewAdapter.ViewHolder>(TeaItemCallBack()) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {

        return ViewHolder(
            AllTeaRecyclerItemBinding.inflate(
                LayoutInflater.from(parent.context),
                parent,
                false
            )
        )

    }

    override fun onBindViewHolder(holder: AllTeaTabRecyclerViewAdapter.ViewHolder, position: Int) {
        holder.bind(getItem(position))
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