package org.example.seg3502.teammanagementsystem.application.usecases

interface UpdateParameters {
    fun updateParameters(courseCode: String, minMembers: Int, maxMembers: Int, deadline: String): String?
}