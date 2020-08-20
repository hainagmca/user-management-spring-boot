package com.emc.education.usermanagement.controller;

import com.emc.education.usermanagement.model.Lab;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
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

    private String backendUrl;

    @Value("${resource.tasks}")
    private String resource;
    @Value("${resource.tasks}/{id}")
    private String idResource;

    @Autowired
    private RestTemplate restTemplate;

    private final String URL_GET_ID = resource + "lab/#id#";
    private final String URL_GET_ALL = resource + "lab";

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

        if (result.hasErrors()) {
            return "lab";
        }

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
        //User user = userService.getUserById(id).get();
        Lab lab1 = restTemplate.getForObject("http://localhost:8080/lab/5f3d02119bb8952ab5d7c740",Lab.class);
        model.put("lab", lab1);
        return "lab";
    }
    @RequestMapping(value = "/update-lab", method = RequestMethod.POST)
    public String updateLab(ModelMap model, @Valid Lab lab, BindingResult result) {

        if (result.hasErrors()) {
            return "lab";
        }
        //userService.updateUser(lab);
        return "redirect:/list-labs";
    }





/*









*/
}
