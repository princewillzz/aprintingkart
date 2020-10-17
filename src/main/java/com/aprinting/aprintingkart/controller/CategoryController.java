package com.aprinting.aprintingkart.controller;

import java.util.stream.Collectors;

import com.aprinting.aprintingkart.models.Category;
import com.aprinting.aprintingkart.service.CategoryService;
import com.aprinting.aprintingkart.service.storage.StorageService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CategoryController {

    private CategoryService categoryService;
    private StorageService storageService;

    @Autowired
    public CategoryController(@Qualifier("categoryService") CategoryService categoryService,
            StorageService storageService) {
        this.categoryService = categoryService;
        this.storageService = storageService;
    }

    @GetMapping(value = "sub-category")
    public ModelAndView subCategoryView(@RequestParam(defaultValue = "", name = "parentid") String parentId) {

        ModelAndView modelAndView = new ModelAndView("category");

        return modelAndView;

    }

    @GetMapping(value = "dashboard/category")
    public ModelAndView getMethodName() {
        ModelAndView modelAndView = new ModelAndView("dashboard/addCategory");

        try {
            modelAndView.addObject("categories", categoryService.getCategories().stream()
                    .filter(item -> item.getParent() == null).collect(Collectors.toList()));
        } catch (Exception e) {
            modelAndView.addObject("categories", categoryService.getCategories());
        }

        return modelAndView;
    }

    // Add new Category
    @PostMapping(value = "dashboard/category")
    public RedirectView addNewCategory(@ModelAttribute Category category,
            @RequestParam("category_photo") MultipartFile photo) {

        try {

            try {
                if (!photo.isEmpty()) {
                    category.setPhoto(photo.getOriginalFilename());
                    System.out.println(photo.getOriginalFilename());

                    storageService.store(photo);
                } else {
                    System.out.println("No Photo uploaded");
                }

            } catch (Exception e) {
                category.setPhoto(null);
                System.out.println("exception");
            }

            System.out.println(category);
            System.out.println(category.getParent());

            categoryService.addCategories(category);
            System.out.println("added a new Category");

        } catch (Exception e) {
            System.out.println("Unable to add a new Category");
        }

        ModelAndView modelAndView = new ModelAndView("redirect:/dashboard/category");
        return new RedirectView("/dashboard/category");
    }

}
