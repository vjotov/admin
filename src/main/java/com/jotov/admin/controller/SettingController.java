package com.jotov.admin.controller;

import com.jotov.admin.domain.Role;
import com.jotov.admin.domain.User;
import com.jotov.admin.service.SettingService;
import com.jotov.admin.service.UserSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("/setting")
public class SettingController {
    @Autowired
    private SettingService settingSevice;

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping
    public String userList(Model model) {
        model.addAttribute("settings", settingSevice.findAll());

        return "settingList";
    }



}
