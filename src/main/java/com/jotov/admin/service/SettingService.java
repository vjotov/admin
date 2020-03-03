package com.jotov.admin.service;

import com.jotov.admin.domain.Setting;
import com.jotov.admin.domain.SettingType;
import com.jotov.admin.repo.SettingRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SettingService {
    @Autowired
    private SettingRepo settingRepo;


    public List<Setting> findAll() {
        return settingRepo.findAllByOrderByIdAsc();
    }

    public void save(Setting setting, String newValue) {
        if(setting.getType().equals(SettingType.BOOLEAN)) {
            if("on".equals(newValue)) {
                setting.setValue("on");
            } else { //null and all other values
                setting.setValue("off");
            }
            settingRepo.save(setting);
        } else {
            try {
                if (setting.getType().equals(SettingType.NUMERIC)) {
                    Long numValue = Long.valueOf(newValue);
                    setting.setValue(String.valueOf(numValue));
                } else {
                    setting.setValue(newValue);
                }
                settingRepo.save(setting);
            } catch (Exception ex) {
                // TODO processing errors!
            }
        }
    }
}
