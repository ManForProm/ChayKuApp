package com.example.alltea_feature.di

import com.example.alltea_feature.domain.usecase.GetTeaInformationUseCase
import com.example.alltea_feature.navigation.FloatingActionButtonClick
import dagger.Binds
import dagger.Module
import dagger.Provides

@Module
class AllTeaModule{
        @Provides
        fun provideGetTeaInformationUseCase(): GetTeaInformationUseCase {
            return GetTeaInformationUseCase()
        }
}

