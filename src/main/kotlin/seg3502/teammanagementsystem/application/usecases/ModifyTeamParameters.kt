package org.example.seg3502.teammanagementsystem.application.usecases

import java.util.*

interface ModifyTeamParameters {
    fun modifyTeamParameters(teamId: UUID, minMembers: Int?, maxMembers: Int?, deadline: String?): String?
}