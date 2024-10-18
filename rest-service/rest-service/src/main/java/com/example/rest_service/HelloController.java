package com.example.rest_service;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String home() {
        return "Welcome to the Home Page!";
    }

    @GetMapping("/hello")
    public String sayHello() {
        return "Hello, World!";
    }
}
