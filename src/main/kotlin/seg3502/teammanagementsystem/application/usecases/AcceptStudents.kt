package org.example.seg3502.teammanagementsystem.application.usecases

import java.util.*

interface AcceptStudents {
    fun acceptStudents(teamId: UUID, studentIds: List<String>): String?
}