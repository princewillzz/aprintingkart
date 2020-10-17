package com.aprinting.aprintingkart.service;

import java.util.List;

import com.aprinting.aprintingkart.models.Category;

public interface CategoryService {

    /**
     * 
     * @return a list of all category from the database
     */
    List<Category> getCategories();

    /**
     * Add new Category
     */
    void addCategories(Category category);

    boolean containsName(String name);

}
