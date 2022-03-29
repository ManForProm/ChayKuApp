package com.example.alltea_feature.domain.usecase
import com.example.database_module.db.entity.UsersTeaEntity
import com.example.database_module.models.UsersTeas
import kotlinx.coroutines.delay

class GetTeaInformationUseCase {

    suspend fun execute(): UsersTeas {
        return UsersTeas(
            listOf(
                UsersTeaEntity(
                    "Oolong",
                    "Sasha",
                    "black",
                    "rose",
                    "none",
                    "none"
                )
            )
        )
    }
}