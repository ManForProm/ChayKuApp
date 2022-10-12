package com.example.chaykuapp.presentation

import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import com.example.alltea_feature.navigation.FloatingActionButtonClick
import com.example.chaykuapp.navigation.MainActivityViewModel
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import javax.inject.Inject

class MainActivityViewModelImpl @Inject constructor():ViewModel(), MainActivityViewModel {

    var isFloatingActionButtonClicked: Flow<Boolean>? = null

    override fun actionButtonClick() {
        isFloatingActionButtonClicked = flow{
            emit(true)
        }
    }

    class MainActivityViewModelFactory() : ViewModelProvider.Factory {
        @Suppress("UNCHECKED_CAST")
        override fun <T : ViewModel> create(modelClass: Class<T>): T {
            require(modelClass == MainActivityViewModelImpl::class.java)
            return MainActivityViewModelImpl() as T
        }
    }

}