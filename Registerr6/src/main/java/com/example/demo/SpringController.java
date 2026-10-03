package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SpringController {

    @Autowired
    SpringService springservice;

    // Open Login Page
    @GetMapping("/")
    public String loginPage() {
        return "login";
    }

    // Handle Login Form
    @PostMapping("/login")
    public String login(
            @RequestParam("phone") String phone,
            @RequestParam("password") String password) {

        System.out.println("Phone: " + phone);
        System.out.println("Password: " + password);

        return "redirect:/hm";
    }

    // Open H.M Clothes Main Page
    @GetMapping("/hm")
    public String hmPage() {
        return "hm";
    }

    // ⭐ Open First Product Page
    @GetMapping("/product1")
    public String product1() {
        return "product1";
    }

    // Save H.M Clothes Data
    @PostMapping("/savedata")
    public String savedata1(@ModelAttribute SpringEntity model) {

        springservice.Register(model);

        return "redirect:/hm";
    }
}