package com.jotov.admin.repo;

import com.jotov.admin.domain.Setting;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SettingRepo extends JpaRepository<Setting, Long> {
    Setting findByName(String name);
}
