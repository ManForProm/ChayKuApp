package com.example.chaykuapp.di

import android.app.Application
import android.content.Context
import com.example.alltea_feature.di.AllTeaDeps
import com.example.database_module.db.dao.UsersTeaDao
import com.example.database_module.db.database.UsersTeaDatabase
import dagger.BindsInstance
import dagger.Component
import dagger.Module
import dagger.Provides
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
}


@Module
class AppModule() {
    @Provides
    @AppScope
    fun provideUsersTeaDao(db: UsersTeaDatabase) = db.usersTeaDao()

    @Provides
    fun probideUsersTeaDatabase(appContext: Context):UsersTeaDatabase {
     return UsersTeaDatabase.getDatabase(appContext)
    }
    @Provides
    @AppScope
    fun appContext(app:Application):Context = app
}

@Scope
annotation class AppScope