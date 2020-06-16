package com.emc.education.usermanagement.service;

import com.emc.education.usermanagement.model.AssignmentsPojo;
import com.emc.education.usermanagement.model.User;

import java.util.Date;

import java.util.List;
import java.util.Optional;

public interface IUserService {

    List<User> getUsersByUser(String user);

    Optional<User> getUserById(long id);

    void updateUser(User user);

    void addUser(String name, String email, Date targetDate);

    void deleteUser(long id);

    void saveUser(User todo);

    AssignmentsPojo retrieveAssignments(String name);
}