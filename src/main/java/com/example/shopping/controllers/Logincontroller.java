package com.example.shopping.controllers;

import com.example.shopping.models.Login;
import com.example.shopping.models.Registration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Logincontroller {
    @Autowired
    RestTemplate restTemplate;

    @RequestMapping(value = "/Login")
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView("Login");
        return modelAndView;
    }

    @RequestMapping(value = "/Logindetails", method = RequestMethod.GET)
    public ModelAndView logindetails(@ModelAttribute Login login) {
        ModelAndView modelAndView = new ModelAndView();
        ResponseEntity<Login[]> responseEntity = restTemplate.postForEntity("url", login, Login[].class);
        int statusCode = responseEntity.getStatusCodeValue();
        if (statusCode >= 200 && statusCode <= 299) {
            System.out.println("Login details uploaded succesfully ");
        } else {
            System.out.println("internal server error");
            modelAndView.setViewName("Login");
            return modelAndView;
        }
        return modelAndView;
    }
}