package com.emc.education.usermanagement.repository;

import com.emc.education.usermanagement.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {
    List<User> findByUserName(String user);
}
