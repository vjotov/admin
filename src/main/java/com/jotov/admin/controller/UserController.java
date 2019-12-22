package com.jotov.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
    @GetMapping("/")
    public String getIndex() {
        return "index";
    }

    @GetMapping("/login")
    @PostMapping("/login")
    public String getLogin() {
        return "login";
    }

}
