package com.example.alltea_feature.di

import android.app.Application
import android.content.Context
import androidx.annotation.RestrictTo
import androidx.lifecycle.ViewModelProvider
import com.example.alltea_feature.domain.usecase.GetTeaInformationUseCase
import com.example.alltea_feature.navigation.FloatingActionButtonClick
import com.example.alltea_feature.presentation.AllTeaTabFragment
import com.example.alltea_feature.presentation.AllTeaTabViewModel
import com.example.database_module.db.dao.UsersTeaDao
import dagger.Binds
import dagger.Component
import dagger.Module
import dagger.Provides
import javax.inject.Provider
import javax.inject.Scope
import javax.inject.Singleton
import kotlin.properties.Delegates.notNull


@Component(dependencies = [AllTeaDeps::class],
            modules = [AllTeaModule::class])
internal interface AllTeaComponent {

    @Component.Builder
    interface Builder{

        fun deps(allTeaDeps: AllTeaDeps):Builder

        fun build():AllTeaComponent

    }

    fun inject(fragment: AllTeaTabFragment)
}

//dependenses
interface AllTeaDeps{
    val getAllTeaDB: UsersTeaDao
    val floatingActionButtonClick: FloatingActionButtonClick
}

interface AllTeaDepsProvider{

    @get:RestrictTo(RestrictTo.Scope.LIBRARY)
    val deps: AllTeaDeps

    companion object: AllTeaDepsProvider by AllTeaDepsStore
}

object AllTeaDepsStore : AllTeaDepsProvider {

    override var deps: AllTeaDeps by notNull()
}

val Context.allTeaDepsProvider:AllTeaDepsProvider
    get()= when(this){
        is AllTeaDepsProvider -> this
        is Application -> error("Application must implements NewsDetailsDapsProvider")
        else -> this.applicationContext.allTeaDepsProvider
    }
@Scope
internal annotation class AllTeaScope

