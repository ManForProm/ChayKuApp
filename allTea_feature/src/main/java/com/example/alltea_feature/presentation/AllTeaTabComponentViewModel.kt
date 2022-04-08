package com.example.alltea_feature.presentation

import androidx.lifecycle.ViewModel
import com.example.alltea_feature.di.AllTeaDepsProvider
import com.example.alltea_feature.di.DaggerAllTeaComponent

internal class AllTeaTabComponentViewModel:ViewModel() {
    val allTeaComponent = DaggerAllTeaComponent
        .builder()
        .deps(AllTeaDepsProvider.deps)
        .build()
}