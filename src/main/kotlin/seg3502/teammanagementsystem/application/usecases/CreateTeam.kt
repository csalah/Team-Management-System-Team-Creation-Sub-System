package org.example.seg3502.teammanagementsystem.application.usecases

import java.util.*

interface CreateTeam {
    fun createTeam(courseCode: String, teamName: String, members: List<String> = emptyList()): UUID?
}