package org.example.seg3502.teammanagementsystem.application.usecases

import java.util.*

interface QuitTeam {
    fun quitTeam(teamId: UUID, studentId: String): String?
}