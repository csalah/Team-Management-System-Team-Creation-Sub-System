package org.example.seg3502.teammanagementsystem.application.usecases

import java.util.*

interface AddTeamMember {
    fun addTeamMember(teamId: UUID, studentId: String): String?
}