package com.aprinting.aprintingkart.controller;

import java.util.HashMap;
import java.util.List;

import com.aprinting.aprintingkart.models.Category;
import com.aprinting.aprintingkart.service.CategoryService;
import com.aprinting.aprintingkart.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping(value = "api")
public class CategoryAPIController {

    private final CategoryService categoryService;
    private final ProductService productService;

    @Autowired
    protected CategoryAPIController(@Qualifier("categoryService") CategoryService categoryService,
            @Qualifier("productService") ProductService productService) {
        this.categoryService = categoryService;
        this.productService = productService;
    }

    @GetMapping(value = "categories-or-products")
    public ResponseEntity<?> getCategoriesOrProducts(@RequestParam String id) {

        HashMap<String, List<?>> data = new HashMap<>(5);

        try {
            List<Category> subCategories = categoryService.getSubCategories(id);
            data.put("subCategories", subCategories);

            if (subCategories.size() <= 0) {
                data.put("products", productService.getProducts(id));
            }
        } catch (Exception e) {
            // TODO: handle exception
        }

        return ResponseEntity.ok().body(data);
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
