package com.jotov.admin.controller;

import com.jotov.admin.service.UserSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.client.RestTemplate;

@Controller
public class RegistrationController {
    @Autowired
    private UserSevice userSevice;

//    @Autowired
//    private RestTemplate restTemplate;
}
