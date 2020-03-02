package com.jotov.admin.service;

import com.jotov.admin.domain.Setting;
import com.jotov.admin.domain.User;
import com.jotov.admin.repo.SettingRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SettingService {
    @Autowired
    private SettingRepo settingRepo;


    public List<Setting> findAll() {
        return settingRepo.findAll();
    }
}
