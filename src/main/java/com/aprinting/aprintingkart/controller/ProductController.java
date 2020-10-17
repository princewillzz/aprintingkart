package com.aprinting.aprintingkart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "dashboard")
public class ProductController {

    @GetMapping(value = "manage-product")
    public ModelAndView getManageProductView() {
        return new ModelAndView("dashboard/manageProduct");
    }

    @GetMapping(value = "product")
    public ModelAndView getProductList() {
        return new ModelAndView("dashboard/addProduct");
    }

}
