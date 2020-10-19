package com.aprinting.aprintingkart.controller;

import com.aprinting.aprintingkart.Exceptions.DuplicateFileException;
import com.aprinting.aprintingkart.models.Category;
import com.aprinting.aprintingkart.service.CategoryService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class CategoryController {

    private CategoryService categoryService;

    @Autowired
    public CategoryController(@Qualifier("categoryService") CategoryService categoryService) {
        this.categoryService = categoryService;

    }

    @GetMapping(value = "dashboard/manage-category")
    public ModelAndView manageCategoryView() {
        ModelAndView modelAndView = new ModelAndView("dashboard/manageCategory");

        modelAndView.addObject("categories", categoryService.getCategories());

        return modelAndView;
    }

    @GetMapping(value = "sub-category")
    public ModelAndView subCategoryView(@RequestParam(defaultValue = "", name = "parentid") String parentId) {

        ModelAndView modelAndView = new ModelAndView("category");

        return modelAndView;

    }

    // New Category view
    @GetMapping(value = "dashboard/add-category")
    public ModelAndView getMethodName(@ModelAttribute("error") String error) {

        ModelAndView modelAndView = new ModelAndView("dashboard/addCategory");

        try {
            modelAndView.addObject("categories", categoryService.getCategories());
            modelAndView.addObject("error", error);
        } catch (Exception e) {
            System.out.println("Unable to load categories from database");
        }

        return modelAndView;
    }

    // Add new Category
    @PostMapping(value = "dashboard/add-category")
    public RedirectView addNewCategory(@ModelAttribute Category category,
            @RequestParam("category_photo") MultipartFile photo, final RedirectAttributes redirectAttributes) {

        try {

            categoryService.addCategories(category, photo);
            System.out.println("added a new Category");

        } catch (DuplicateFileException e) {
            redirectAttributes.addAttribute("error", e.getMessage());
            System.out.println(e.getMessage());
        } catch (Exception e) {
            System.out.println("Unable to add a new Category");
        }

        return new RedirectView("/dashboard/add-category");
    }

}
