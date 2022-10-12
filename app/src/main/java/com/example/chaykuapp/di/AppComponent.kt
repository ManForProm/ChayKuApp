package com.example.chaykuapp.di

import android.app.Application
import android.content.Context
import com.example.alltea_feature.di.AllTeaDeps
import com.example.alltea_feature.navigation.FloatingActionButtonClick
import com.example.database_module.db.dao.UsersTeaDao
import com.example.database_module.db.database.UsersTeaDatabase
import dagger.*
import javax.inject.Scope

@AppScope
@Component(modules = [AppModule::class])
interface AppComponent:AllTeaDeps {
    @Component.Builder
    interface Builder{

        @BindsInstance
        fun application(application: Application):Builder

        fun build():AppComponent
    }

    override val getAllTeaDB: UsersTeaDao
    override val floatingActionButtonClick: FloatingActionButtonClick

}

@Scope
annotation class AppScope