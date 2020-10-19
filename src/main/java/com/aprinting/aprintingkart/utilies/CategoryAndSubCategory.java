package com.aprinting.aprintingkart.utilies;

import java.util.ArrayList;
import java.util.List;

import com.aprinting.aprintingkart.models.Category;

public class CategoryAndSubCategory {
    private Category category;
    private List<Category> subCategories = new ArrayList<>();

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public List<Category> getSubCategories() {
        return subCategories;
    }

    public void setSubCategories(Category subCategories) {
        this.subCategories.add(subCategories);
    }

    @Override
    public String toString() {
        return "CategoryAndSubCategory [category=" + category + ", subCategories=" + subCategories + "]";
    }

}