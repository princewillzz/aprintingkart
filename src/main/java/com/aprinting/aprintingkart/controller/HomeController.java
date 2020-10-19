package com.aprinting.aprintingkart.controller;

import java.util.List;

import com.aprinting.aprintingkart.models.Category;
import com.aprinting.aprintingkart.service.CategoryService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    private CategoryService categoryService;

    @Autowired
    public HomeController(@Qualifier("categoryService") CategoryService categoryService) {
        this.categoryService = categoryService;

    }

    @GetMapping(value = "/")
    public ModelAndView home(@RequestParam(defaultValue = "apk_home", name = "name") String name) {
        ModelAndView mv = new ModelAndView(name);

        List<Category> categories = categoryService.getCategories();

        mv.addObject("categories", categories);

        return mv;
    }

}
