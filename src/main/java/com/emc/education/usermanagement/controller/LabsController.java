package com.emc.education.usermanagement.controller;

import com.emc.education.usermanagement.model.Lab;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import javax.validation.Valid;
import java.util.Arrays;
import java.util.List;


@Controller
public class LabsController {

    Logger logger = LoggerFactory.getLogger(LabsController.class);

    @Value("${resource.backend}")
    private String resource;
    @Value("${resource.backend}/{id}")
    private String idResource;

    @Autowired
    private RestTemplate restTemplate;

    @RequestMapping(value = "/list-labs", method = RequestMethod.GET)
    public String getAllLabs(ModelMap model) {
        logger.info("@@@@@@@@@getAllLabs :: @@@@@@@@@::: "+resource);
        //List labList = Arrays.stream(restTemplate.getForObject(URL_GET_ALL, Lab[].class)).collect(Collectors.toList());

        Lab lab1 = restTemplate.getForObject("http://localhost:8080/lab/5f3d02119bb8952ab5d7c740",Lab.class);
        System.out.print(lab1);

        Lab lab2 = restTemplate.getForObject("http://localhost:8080/lab/5f3d02889bb8952ab5d7c741",Lab.class);
        System.out.print(lab2);
        List labList = Arrays.asList(lab1,lab2);
        logger.info("@@@@@@@@@   lablist  size @@@@@@@@@@" + labList.size());
        model.put("labs", labList);
        logger.info("@@@@@@@@@ exit getAllLabs@@@@@@@@@@");
        return "list-labs";
    }


    @RequestMapping(value = "/add-lab", method = RequestMethod.GET)
    public String showAddLabPage(ModelMap model) {
        model.addAttribute("lab", new Lab());
        return "lab";
    }
    @RequestMapping(value = "/add-lab", method = RequestMethod.POST)
    public String addUser(ModelMap model, @Valid Lab lab, BindingResult result) {
        System.out.println("@adduser");
        if (result.hasErrors()) {
            return "lab";
        }

        restTemplate.postForObject(resource, lab, Lab.class);
        System.out.println("exit from @adduser");
        //userService.saveUser(lab);
        return "redirect:/list-labs";
    }
    @RequestMapping(value = "/delete-lab", method = RequestMethod.GET)
    public String deleteLab(@RequestParam String id) {
       // userService.deleteUser(id);
        return "redirect:/list-labs";
    }

    @RequestMapping(value = "/update-lab", method = RequestMethod.GET)
    public String showUpdateLabPage(@RequestParam String id, ModelMap model) {
        String URL = resource+"/"+id;
        System.out.println("@@@@@@@@@@ showUpdateLabPage @@@@@@@@@@@"+URL);
        Lab lab1 = restTemplate.getForObject(URL,Lab.class);
        model.put("lab", lab1);
        System.out.println("@@@@@@@@@@ out from showUpdateLabPage @@@@@@@@@@@");
        return "lab";
    }
    @RequestMapping(value = "/update-lab", method = RequestMethod.POST)
    public String updateLab(ModelMap model, @Valid Lab lab, BindingResult result) {
        String URL = resource+"/"+lab.getId();
        System.out.println("@@@@@@@@@@ updateLab @@@@@@@@@@@ resource >>> "+URL);
        if (result.hasErrors()) {
            return "lab";
        }
        //restTemplate.exchange(resource+"/"+lab.getId(), HttpMethod.PUT, new HttpEntity<>(lab), Lab.class, lab.getId()).getBody();
        restTemplate.put(URL, HttpMethod.PUT, lab);
        //userService.updateUser(lab);
        System.out.println("@@@@@@@@@@ out from updateLab @@@@@@@@@@@");
        return "redirect:/list-labs";
    }
}
