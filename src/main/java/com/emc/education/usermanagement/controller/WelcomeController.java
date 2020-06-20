package com.emc.education.usermanagement.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.DefaultOAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

@Controller
public class WelcomeController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String showWelcomePage(ModelMap model) {
        System.out.println("NAGGGGGGGG");
        model.put("name", getLoggedinUserName());
        return "welcome";
    }

    private String getLoggedinUserName() {
        Object principal = SecurityContextHolder.getContext()
                .getAuthentication().getPrincipal();


        if (principal instanceof UserDetails) {
            return ((UserDetails) principal).getUsername();
        }
        if( principal instanceof DefaultOAuth2User) {
            DefaultOAuth2User user = (DefaultOAuth2User) principal;
            Map map = user.getAttributes();
            System.out.println("Logged in user id: "+map.get("login"));
            System.out.println("Logged in user Name: "+map.get("name"));
            return (String) map.get("name");
        }

        return principal.toString();
    }

}
