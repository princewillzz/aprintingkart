package com.aprinting.aprintingkart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

    @GetMapping(value = "signin")
    public ModelAndView signinView() {
        ModelAndView modelAndView = new ModelAndView("signin"); // View Page Name

        return modelAndView;
    }

    @GetMapping(value = "register")
    public ModelAndView registerView() {
        ModelAndView modelAndView = new ModelAndView("signup");

        return modelAndView;
    }

    @GetMapping(value = "shopping-cart")
    public ModelAndView cartView() {
        ModelAndView modelAndView = new ModelAndView("cart");

        return modelAndView;
    }

}
