package com.emc.education.usermanagement.controller;

import com.emc.education.usermanagement.model.Lab;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Test {


    public static void main(String[] args) {
        RestTemplate restTemplate = new RestTemplate();
        String URL_GET_ALL = "http://localhost:8080/lab";

        Lab lab1 = restTemplate.getForObject("http://localhost:8080/lab/5f3d02119bb8952ab5d7c740",Lab.class);
        http://localhost:8080/lab5f3d02119bb8952ab5d7c740

        System.out.print(lab1);


        /*LabList response = restTemplate.getForObject(
                "http://localhost:8080/lab",
                LabList.class);
        List<Lab> employees = response.getLabs();

*/
        //List labList = Arrays.stream(restTemplate.getForObject(URL_GET_ALL, List<Lab>)).collect(Collectors.toList());
        //System.out.print(employees);

    }
}
