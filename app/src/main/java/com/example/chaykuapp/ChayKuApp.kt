package com.example.chaykuapp

import android.app.Application
import com.example.alltea_feature.di.AllTeaDeps
import com.example.alltea_feature.di.AllTeaDepsProvider
import com.example.alltea_feature.di.AllTeaDepsStore
import com.example.chaykuapp.di.AppComponent
import com.example.chaykuapp.di.DaggerAppComponent

class ChayKuApp:Application(){

    val appComponent:AppComponent by lazy {
        DaggerAppComponent
            .builder()
            .application(this)
            .build()
    }

    override fun onCreate() {
        super.onCreate()
        AllTeaDepsStore.deps = appComponent
    }
}