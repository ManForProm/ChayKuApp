package com.example.alltea_feature.presentation

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.alltea_feature.di.AllTeaComponent
import com.example.alltea_feature.di.DaggerAllTeaComponent
import com.example.alltea_feature.domain.usecase.GetTeaInformationUseCase
import com.example.database_module.models.UsersTeas
import kotlinx.coroutines.flow.*
import javax.inject.Inject

class AllTeaTabViewModel : ViewModel() {

//    @Inject lateinit var getTeaInformationUseCase: GetTeaInformationUseCase

    val AllTeaComponent: AllTeaComponent by lazy {
        DaggerAllTeaComponent
            .builder()
            .build()
    }
    val teas: Flow<UsersTeas> = flow {
        emit(AllTeaComponent.getTeaInformationUseCase.execute())
    }.stateIn(scope = viewModelScope,
            started = SharingStarted.Eagerly,
            initialValue = UsersTeas(emptyList())
    )
}