package com.jotov.admin.controller;

import com.jotov.admin.domain.Setting;
import com.jotov.admin.service.SettingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

    @PreAuthorize("hasAuthority('ADMIN')")
    @PostMapping("{setting}")
    public String saveSetting(
            @PathVariable Setting setting,
            @RequestParam(required = false, defaultValue = "0") String newValue
    ) {
        settingSevice.save(setting, newValue);

        return "redirect:/setting";
    }

}
