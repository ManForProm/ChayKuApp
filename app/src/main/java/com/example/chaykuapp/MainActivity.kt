package com.example.chaykuapp

import android.os.Build
import android.os.Bundle
import com.google.android.material.snackbar.Snackbar
import androidx.appcompat.app.AppCompatActivity
import androidx.navigation.findNavController
import androidx.navigation.ui.AppBarConfiguration
import androidx.navigation.ui.navigateUp
import androidx.navigation.ui.setupActionBarWithNavController
import android.view.Menu
import android.view.MenuItem
import android.view.View
import android.view.WindowManager
import androidx.fragment.app.add
import androidx.fragment.app.commit
import com.example.alltea_feature.presentation.AllTeaTabFragment

class MainActivity : AppCompatActivity(R.layout.activity_main) {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val fragmentManager = supportFragmentManager

        if(fragmentManager.findFragmentById(R.id.fragment_container_view_tag) == null){
            fragmentManager.commit {
                add<AllTeaTabFragment>(R.id.fragment_container_view_tag,"All tea tab fragment")
            }
        }
    }
    override fun onResume() {
        super.onResume()
        actionBar?.hide()
    }

}