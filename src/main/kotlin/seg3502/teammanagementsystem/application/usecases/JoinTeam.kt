package org.example.seg3502.teammanagementsystem.application.usecases

import java.util.*

interface JoinTeam {
    fun joinTeam(teamId: UUID, studentId: String): String?
}