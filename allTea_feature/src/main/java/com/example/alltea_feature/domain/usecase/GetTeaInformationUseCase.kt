package com.example.alltea_feature.domain.usecase
import com.example.database_module.db.dao.UsersTeaDao
import com.example.database_module.db.entity.UsersTeaEntity
import com.example.database_module.models.UsersTeas
import kotlinx.coroutines.delay
import javax.inject.Inject

class GetTeaInformationUseCase () {

    suspend fun execute(repeatNumber: Int): UsersTeas {
        val list =UsersTeas(MutableList(repeatNumber){
            UsersTeaEntity(
                "Oolong",
                "Sasha",
                "black",
                "rose",
                "none",
                "none"
            )
        })
        return list
    }
}