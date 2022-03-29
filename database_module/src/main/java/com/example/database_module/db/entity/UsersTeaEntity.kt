package com.example.database_module.db.entity

import androidx.room.ColumnInfo
import androidx.room.Entity

@Entity(tableName = "users_tea_table")
data class UsersTeaEntity(
    @ColumnInfo(name = "teaName")
    val teaName:String,
    @ColumnInfo(name = "userName")
    val userName:String,
    @ColumnInfo(name = "base")
    val base:String,
    @ColumnInfo(name = "mainTaste")
    val mainTaste:String,
    @ColumnInfo(name = "taste")
    val taste:String,
    @ColumnInfo(name = "decoration")
    val decoration:String){
}