package com.example.alltea_feature.presentation

import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.viewModelScope
import com.example.alltea_feature.domain.usecase.GetTeaInformationUseCase
import com.example.database_module.models.UsersTeas
import kotlinx.coroutines.flow.*
import java.lang.Exception
import javax.inject.Inject
import javax.inject.Provider

internal class AllTeaTabViewModel(private val getTeaInformationUseCase: GetTeaInformationUseCase) : ViewModel() {

    var loadingState: Flow<LoadingState>? = null
    val teas: Flow<UsersTeas> = try {
        flow<UsersTeas> {
            repeat(10) {
                emit(getTeaInformationUseCase.execute(it))
                loadingState = flow<LoadingState> { LoadingState.LOADED }
                kotlinx.coroutines.delay(3000)
            }
        }.onStart {
            loadingState = flow { LoadingState.LOADING}
        }.stateIn(scope = viewModelScope,
            started = SharingStarted.Eagerly,
            initialValue = UsersTeas(emptyList())
        )
    } catch (e:Exception){
        loadingState = flow{ LoadingState.error(e.toString())}
        flow<UsersTeas>{emit(UsersTeas(emptyList()))}
    }


    class AllTeaViewModelFactory @Inject constructor(
        private val getTeaInformationUseCase: Provider<GetTeaInformationUseCase>
    ) : ViewModelProvider.Factory {

        @Suppress("UNCHECKED_CAST")
        override fun <T : ViewModel> create(modelClass: Class<T>): T {
            require(modelClass == AllTeaTabViewModel::class.java)
            return AllTeaTabViewModel(getTeaInformationUseCase.get()) as T
        }
    }

    override fun onCleared() {
        super.onCleared()
        loadingState = null
    }


}

data class LoadingState (val status: Status, val msg: String? = null) {
    companion object {
        val LOADED = LoadingState(Status.SUCCESS)
        val LOADING = LoadingState(Status.RUNNING)
        fun error(msg: String?) = LoadingState(Status.FAILED, msg)
    }

    enum class Status {
        RUNNING,
        SUCCESS,
        FAILED
    }
}