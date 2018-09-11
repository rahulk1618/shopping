package com.example.shopping.controllers;

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
public class Registrationcontroller {
    @Autowired
    RestTemplate restTemplate;
    @RequestMapping(value = "/Registration")
    public ModelAndView registration(){
        ModelAndView modelAndView= new ModelAndView("Registration");
        return modelAndView;
    }
    @RequestMapping(value = "/Registrationdetails", method = RequestMethod.GET)
    public ModelAndView registerdetails(@ModelAttribute Registration registration)
    {
        ModelAndView modelAndView= new ModelAndView();
        ResponseEntity<Registration[]> responseEntity=restTemplate.postForEntity("url", registration,Registration[].class);
        int statusCode= responseEntity.getStatusCodeValue();
        if(statusCode >=200 && statusCode<=299){
            System.out.println("Registration details uploaded succesfully ");
        }else{
            System.out.println("internal server error");
            modelAndView.setViewName("resgistration");
            return modelAndView;
        }
        return modelAndView;
    }
}
