package com.aprinting.aprintingkart.service;

import java.util.List;

import com.aprinting.aprintingkart.models.Category;
import com.aprinting.aprintingkart.utilies.CategoryAndSubCategory;

import org.springframework.web.multipart.MultipartFile;

public interface CategoryService {

    /**
     * 
     * @return a list of all category from the database
     */
    List<Category> getCategories();

    List<Category> getSubCategories(String id);

    /**
     * Add new Category
     */
    void addCategories(Category category, MultipartFile photo);

    boolean containsName(String name);

    List<CategoryAndSubCategory> getCategoryWithSubCategories();

    void deleteCategory(String id);

    void updateCategory(Category category, MultipartFile photo);

    List<Category> getParentCategories();

    public Category getCategory(String id);

}
