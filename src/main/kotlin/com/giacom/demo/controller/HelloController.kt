package com.giacom.demo.controller

import com.giacom.demo.model.Person
import io.micronaut.http.annotation.Controller
import io.micronaut.http.annotation.Get

@Controller
class HelloController {

    @Get
    fun hello(): Person {
        return Person("Hello micronaut!")
    }
}
