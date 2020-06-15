package com.emc.education.usermanagement.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import com.emc.education.usermanagement.model.User;
import com.emc.education.usermanagement.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService implements IUserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> getUsersByUser(String user) {
        return userRepository.findByUserName(user);
    }

    @Override
    public Optional<User> getUserById(long id) {
        return userRepository.findById(id);
    }


    @Override
    public void updateUser(User user) {
        userRepository.save(user);
    }


    @Override
    public void addUser(String name, String email, Date targetDate) {
        userRepository.save(new User(name, name, email, targetDate));
    }


    @Override
    public void deleteUser(long id) {
        Optional<User> user = userRepository.findById(id);
        if (user.isPresent()) {
            userRepository.delete(user.get());
        }
    }

    @Override
    public void saveUser(User user) {
        userRepository.save(user);
    }


}