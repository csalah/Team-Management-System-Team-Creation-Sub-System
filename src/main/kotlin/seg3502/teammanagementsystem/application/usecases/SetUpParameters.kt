package org.example.seg3502.teammanagementsystem.application.usecases

interface SetUpParameters {
    fun setUpParameters(courseCode: String, minMembers: Int, maxMembers: Int, deadline: String): String?
}