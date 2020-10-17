package com.aprinting.aprintingkart.controller;

import com.aprinting.aprintingkart.service.storage.StorageService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "dashboard")
public class DashboardController {

    @Autowired
    StorageService storageService;

    @GetMapping(value = "")
    public ModelAndView getMethodName(@RequestParam(defaultValue = "dashboard", name = "name") String name) {

        return new ModelAndView("dashboard/" + name);
    }

    @GetMapping(value = "foo")
    public String getFoo() {
        return new String("dashboard/foo");
    }

    @PostMapping(value = "foo")
    public ModelAndView foo() {
        return new ModelAndView("dashboard/foo");
    }

    @GetMapping(value = "profile")
    public ModelAndView getProfileView() {
        return new ModelAndView("dashboard/manageProfile");
    }

}
