package org.example.seg3502.teammanagementsystem.application.usecases

import java.util.*

interface RemoveTeamMember {
    fun removeTeamMember(teamId: UUID, studentId: String): String?
}