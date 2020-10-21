package com.aprinting.aprintingkart.controller;

import java.util.List;

import com.aprinting.aprintingkart.models.Category;
import com.aprinting.aprintingkart.service.CategoryService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RestController
@RequestMapping(value = "api")
public class CategoryAPIController {

    private final CategoryService categoryService;

    @Autowired
    protected CategoryAPIController(@Qualifier("categoryService") CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping(value = "sub-categories/{id}")
    public List<Category> getMethodName(@PathVariable("id") String id) {
        System.out.println(id);

        return categoryService.getSubCategories(id);
    }

    @DeleteMapping(value = "category/{id}")
    public ResponseEntity<Object> deleteCategory(@PathVariable("id") String id) {
        System.out.println(id);
        categoryService.deleteCategory(id);

        return ResponseEntity.ok("Successfully deleted");
    }

    @PutMapping(value = "category")
    public ResponseEntity<Object> updateCategory(@ModelAttribute Category category,
            @RequestParam("category_photo") MultipartFile photo) {

        System.out.println(category);
        System.out.println(photo.getOriginalFilename());

        try {
            categoryService.updateCategory(category, photo);
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("unable to update category");
        }

        return ResponseEntity.ok().body("Done");
    }

}
