package org.example.seg3502.teammanagementsystem.application.usecases

import java.util.*

interface RegisterUser {
    fun registerUser(userId: String, password: String, firstName: String, lastName: String, email: String): String?
}