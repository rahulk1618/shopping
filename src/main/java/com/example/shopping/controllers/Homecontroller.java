package com.example.shopping.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class Homecontroller {
    @RequestMapping(value = "/")
        public ModelAndView viewHomePage() {

            ModelAndView modelAndView = new ModelAndView("Home");
            return modelAndView;

        }
    }

