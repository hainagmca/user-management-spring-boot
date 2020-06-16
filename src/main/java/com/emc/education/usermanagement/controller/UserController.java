package com.emc.education.usermanagement.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import com.emc.education.usermanagement.model.User;
import com.emc.education.usermanagement.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class UserController {

    @Autowired
    private IUserService userService;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        // Date - dd/MM/yyyy
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }

    @RequestMapping(value = "/list-users", method = RequestMethod.GET)
    public String showUsers(ModelMap model) {
        String name = getLoggedInUserName(model);
        model.put("users", userService.getUsersByUser(name));
        return "list-users";
    }

    @RequestMapping(value="/list-assignments", method = RequestMethod.GET)
    public String showAssignments(ModelMap model){
        String name = getLoggedInUserName(model);
        model.put("assignmentsPojo", userService.retrieveAssignments(name));
        return "PivotalEducation";
    }

    private String getLoggedInUserName(ModelMap model) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            return ((UserDetails) principal).getUsername();
        }

        return principal.toString();
    }

    @RequestMapping(value = "/add-user", method = RequestMethod.GET)
    public String showAddUserPage(ModelMap model) {
        model.addAttribute("user", new User());
        return "user";
    }

    @RequestMapping(value = "/delete-user", method = RequestMethod.GET)
    public String deleteUser(@RequestParam long id) {
        userService.deleteUser(id);
        // service.deleteTodo(id);
        return "redirect:/list-users";
    }

    @RequestMapping(value = "/update-user", method = RequestMethod.GET)
    public String showUpdateUserPage(@RequestParam long id, ModelMap model) {
        User user = userService.getUserById(id).get();
        model.put("user", user);
        return "user";
    }

    @RequestMapping(value = "/update-user", method = RequestMethod.POST)
    public String updateUser(ModelMap model, @Valid User user, BindingResult result) {

        if (result.hasErrors()) {
            return "user";
        }

        user.setUserName(getLoggedInUserName(model));
        userService.updateUser(user);
        return "redirect:/list-users";
    }

    @RequestMapping(value = "/add-user", method = RequestMethod.POST)
    public String addUser(ModelMap model, @Valid User user, BindingResult result) {

        if (result.hasErrors()) {
            return "user";
        }

        user.setUserName(getLoggedInUserName(model));
        userService.saveUser(user);
        return "redirect:/list-users";
    }
}
