package com.example.alltea_feature.domain.usecase
import com.example.database_module.db.dao.UsersTeaDao
import com.example.database_module.db.entity.UsersTeaEntity
import com.example.database_module.models.UsersTeas
import kotlinx.coroutines.delay
import javax.inject.Inject

class GetTeaInformationUseCase () {

    suspend fun execute(): UsersTeas {
        delay(10000)
        return UsersTeas(
            listOf(
                UsersTeaEntity(
                    "Oolong",
                    "Sasha",
                    "black",
                    "rose",
                    "none",
                    "none"
                ),
                UsersTeaEntity(
                    teaName = "Очень долгое название чая",
                    base = "base",
                    mainTaste = "main taste",
                    taste = "taste",
                    decoration = "decor",
                    userName = "User"),
                UsersTeaEntity(
                    teaName = "оч мал",
                    base = "base",
                    mainTaste = "main taste",
                    taste = "taste",
                    decoration = "decor",
                    userName = "User"),
                UsersTeaEntity(
                    teaName = "нууу ооооооочеень  дооооолгое название",
                    base = "base",
                    mainTaste = "main taste",
                    taste = "taste",
                    decoration = "decor",
                    userName = "User")
            )
        )
    }
}