package com.aprinting.aprintingkart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("dashboard")
public class OrderController {

    @GetMapping(value = "manage-order")
    public ModelAndView getManageOrderView() {
        ModelAndView modelAndView = new ModelAndView("dashboard/manageOrder");

        return modelAndView;
    }

}
