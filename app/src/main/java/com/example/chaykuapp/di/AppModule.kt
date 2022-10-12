package com.example.chaykuapp.di

import android.app.Application
import android.content.Context
import com.example.alltea_feature.navigation.FloatingActionButtonClick
import com.example.chaykuapp.navigation.AddNewTeaClickImpl
import com.example.chaykuapp.navigation.MainActivityViewModel
import com.example.chaykuapp.presentation.MainActivityViewModelImpl
import com.example.database_module.db.database.UsersTeaDatabase
import dagger.Binds
import dagger.Module
import dagger.Provides


@Module(includes = [AppModule.BindsModule::class])
class AppModule {
    @Provides
    @AppScope
    fun provideUsersTeaDao(db: UsersTeaDatabase) = db.usersTeaDao()

    @Provides
    fun probideUsersTeaDatabase(appContext: Context): UsersTeaDatabase {
        return UsersTeaDatabase.getDatabase(appContext)
    }

    @Provides
    fun provideMainActivityViewModel(): MainActivityViewModel{
        return MainActivityViewModelImpl()
    }


    @Module
    interface BindsModule {
        @Binds
        fun provideFloatingActionButtonClick(addNewTeaClickImpl: AddNewTeaClickImpl): FloatingActionButtonClick

    }
    @Provides
    @AppScope
    fun appContext(app: Application): Context = app
}