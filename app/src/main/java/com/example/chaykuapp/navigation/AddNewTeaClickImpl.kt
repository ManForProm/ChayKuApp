package com.example.chaykuapp.navigation

import androidx.fragment.app.commit
import androidx.fragment.app.replace
import com.example.alltea_feature.navigation.FloatingActionButtonClick
import com.example.chaykuapp.presentation.MainActivity
import com.example.chaykuapp.R
import com.example.new_tea_feature.AddNewTeaFragment
import javax.inject.Inject

class AddNewTeaClickImpl @Inject constructor(
   var mainActivityViewModel: MainActivityViewModel
): FloatingActionButtonClick{


    override fun goToNext() {
        mainActivityViewModel.actionButtonClick()
    }
}