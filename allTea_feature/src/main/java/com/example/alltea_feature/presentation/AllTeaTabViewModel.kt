package com.example.alltea_feature.presentation

import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.viewModelScope
import com.example.alltea_feature.di.AllTeaComponent
import com.example.alltea_feature.di.AllTeaDeps
import com.example.alltea_feature.di.AllTeaDepsProvider
import com.example.alltea_feature.domain.usecase.GetTeaInformationUseCase
import com.example.database_module.db.entity.UsersTeaEntity
import com.example.database_module.models.UsersTeas
import kotlinx.coroutines.flow.*
import javax.inject.Inject
import javax.inject.Provider

internal class AllTeaTabViewModel(val getTeaInformationUseCase: GetTeaInformationUseCase) : ViewModel() {

    val teas: Flow<UsersTeas> = flow {
           emit(getTeaInformationUseCase.execute())
    }.stateIn(scope = viewModelScope,
            started = SharingStarted.Eagerly,
            initialValue = UsersTeas(emptyList())
    )

    class allTeaViewModelFactory @Inject constructor(
        private val getTeaInformationUseCase: Provider<GetTeaInformationUseCase>
    ) : ViewModelProvider.Factory {

        @Suppress("UNCHECKED_CAST")
        override fun <T : ViewModel> create(modelClass: Class<T>): T {
            require(modelClass == AllTeaTabViewModel::class.java)
//            return AllTeaTabViewModel(getTeaInformationUseCase.get()) as T
            return AllTeaTabViewModel(getTeaInformationUseCase.get()) as T
        }
    }



}