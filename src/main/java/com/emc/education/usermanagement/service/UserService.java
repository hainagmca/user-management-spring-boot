package com.emc.education.usermanagement.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import com.emc.education.usermanagement.model.AssignmentsPojo;
import com.emc.education.usermanagement.model.Student;
import com.emc.education.usermanagement.model.User;
import com.emc.education.usermanagement.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService implements IUserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> getUsers() {
        return userRepository.findAll();
    }

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

    @Override
    public AssignmentsPojo retrieveAssignments(String name) {
        AssignmentsPojo assignmentsPojo = new AssignmentsPojo();
        assignmentsPojo.setPageTitile("Assignments");
        assignmentsPojo.setBatchName("APJ-Wipro Online fdsfa dfa dsf ");
        assignmentsPojo.setStudentCount(10);

        Student s1 = new Student(1,"User 1 (Nagendra.chunduru@dell.com) " , "na", "no", "no", "yes", "yes", "yes",  "yes", "yes", "yes", "yes","yes",  "yes", "na", "na", "na", "no");
        Student s2 = new Student(2,"User 2" , "na", "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "yes", "yes", "yes",  "yes", "na", "na", "na","no");
        Student s3 = new Student(3,"User 3" , "na", "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "yes", "na","no");
        Student s4 = new Student(4,"User 4" , "na", "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "yes", "na","no");
        Student s5 = new Student(5,"User 5" , "na", "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "yes", "na","no");
        Student s6 = new Student(6,"User 6" , "na", "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "yes", "na","no");
        Student s7 = new Student(7,"User 7" , "na", "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "yes", "na","no");
        Student s8 = new Student(8,"User 8" , "na", "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "no", "na","no");
        Student s9 = new Student(9,"User 9" , "na", "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "no", "na","no");
        Student s10 = new Student(10,"User 10" , "na", "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "yes", "yes", "yes",  "yes", "yes", "no", "na", "no");

        ArrayList<Student> studentList = new ArrayList<>();
        studentList.add(s1);studentList.add(s2);studentList.add(s3);studentList.add(s4);studentList.add(s5);studentList.add(s6);studentList.add(s7);studentList.add(s8);studentList.add(s9);studentList.add(s10);
        assignmentsPojo.setStudentList(studentList);

        assignmentsPojo.setLab1SucessCount(9);
        assignmentsPojo.setLab2SucessCount(9);
        assignmentsPojo.setLab3SucessCount(10);
        assignmentsPojo.setLab4SucessCount(10);
        assignmentsPojo.setLab5SucessCount(10);
        assignmentsPojo.setLab6SucessCount(10);
        assignmentsPojo.setLab7SucessCount(10);
        assignmentsPojo.setLab8SucessCount(10);
        assignmentsPojo.setLab9SucessCount(10);
        assignmentsPojo.setLab10SucessCount(10);
        assignmentsPojo.setLab11SucessCount(10);
        assignmentsPojo.setLab12SucessCount(8);
        assignmentsPojo.setLab13SucessCount(5);
        assignmentsPojo.setLab14SucessCount(0);
        assignmentsPojo.setLab15SucessCount(2);// not in use
        assignmentsPojo.setLab16SucessCount(3);// not in use



        return assignmentsPojo;
    }

}