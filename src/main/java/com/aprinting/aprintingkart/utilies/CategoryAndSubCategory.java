package com.aprinting.aprintingkart.utilies;

import java.util.ArrayList;
import java.util.List;

import com.aprinting.aprintingkart.models.Category;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class CategoryAndSubCategory {
    private Category category;
    private List<CategoryAndSubCategory> subCategories = new ArrayList<>();

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public List<CategoryAndSubCategory> getSubCategories() {
        return subCategories;
    }

    public void setSubCategories(CategoryAndSubCategory subCategories) {
        this.subCategories.add(subCategories);
    }

    @Override
    public String toString() {
        return "CategoryAndSubCategory [category=" + category + ", subCategories=" + subCategories + "]";
    }

    public void setSubCategories(List<CategoryAndSubCategory> subCategories) {
        this.subCategories = subCategories;
    }

}