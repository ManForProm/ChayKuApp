package com.example.alltea_feature.di

import androidx.lifecycle.ViewModel

internal class AllTeaComponentViewModel : ViewModel() {
    val allTeaComponent = DaggerAllTeaComponent
        .builder()
        .deps(allTeaDeps = AllTeaDepsProvider.deps)
        .build()
}