package com.example.alltea_feature.di

import android.app.Application
import android.content.Context
import com.example.alltea_feature.domain.usecase.GetTeaInformationUseCase
import com.example.alltea_feature.presentation.AllTeaTabViewModel
import com.example.database_module.db.dao.UsersTeaDao
import dagger.Binds
import dagger.Component
import dagger.Module
import dagger.Provides
import javax.inject.Scope

@Component(dependencies = [AllTeaDeps::class],
            modules = [AllTeaModule::class])
interface AllTeaComponent {

    @Component.Builder
    interface Builder{

        fun deps(allTeaDeps: AllTeaDeps):Builder

        fun build():AllTeaComponent

    }

    val getTeaInformationUseCase: GetTeaInformationUseCase
}

@Module
interface AllTeaModule{
    //provides
    companion object {
        @Provides
        fun provideGetTeaInformationUseCase(): GetTeaInformationUseCase {
            return GetTeaInformationUseCase()
        }
    }
}

interface AllTeaDeps{
    //dependenses
    fun getAllTeaDB(): UsersTeaDao
}

interface AllTeaDepsProvider{
    val deps: AllTeaDeps
}

val Context.allTeaDepsProvider:AllTeaDepsProvider
    get()= when(this){
        is AllTeaDepsProvider -> this
        is Application -> error("Application must implements NewsDetailsDapsProvider")
        else -> applicationContext.allTeaDepsProvider
    }
@Scope
internal annotation class AllTeaScope