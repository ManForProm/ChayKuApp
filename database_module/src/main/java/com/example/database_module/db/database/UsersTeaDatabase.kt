package com.example.database_module.db.database

import android.content.Context
import androidx.room.Room
import androidx.room.RoomDatabase
import com.example.database_module.db.dao.UsersTeaDao

abstract class UsersTeaDatabase:RoomDatabase() {
    abstract fun usersTeaDao():UsersTeaDao

    companion object{
        @Volatile private var instace: UsersTeaDatabase? = null
        private val LOCK = Any()

        fun getDatabase(context: Context) = instace ?: synchronized(LOCK){
            instace ?: buildDatabase(context).also { instace = it }
        }
        private fun buildDatabase(context: Context) =
            Room.databaseBuilder(context.applicationContext,
                UsersTeaDatabase::class.java, "forecast.db")
                .fallbackToDestructiveMigration()
                .build()
    }

}