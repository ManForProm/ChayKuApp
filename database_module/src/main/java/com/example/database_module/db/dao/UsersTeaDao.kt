package com.example.database_module.db.dao

import androidx.room.*
import com.example.database_module.db.entity.UsersTeaEntity
import com.example.database_module.models.UsersTeas

@Dao
interface UsersTeaDao {
    @Query("SELECT * FROM users_tea_table")
    suspend fun getAllTeas():UsersTeas

    @Insert
    suspend fun insertUsersTea(userTea:UsersTeaEntity)

    @Delete
    suspend fun deleteUsersTea(userTea: UsersTeaEntity)

}