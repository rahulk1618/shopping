package com.example.shopping.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.client.RestTemplate;

@Controller
public class configuration {
@Bean
    public RestTemplate restTemplate(){
    return new RestTemplate();
}
}
