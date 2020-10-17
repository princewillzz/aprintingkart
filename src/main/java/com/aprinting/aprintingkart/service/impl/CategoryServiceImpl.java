package com.aprinting.aprintingkart.service.impl;

import java.util.List;

import com.aprinting.aprintingkart.models.Category;
import com.aprinting.aprintingkart.repository.CategoryRepository;
import com.aprinting.aprintingkart.service.CategoryService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
@Qualifier("categoryService")
public class CategoryServiceImpl implements CategoryService {

    private CategoryRepository categoryRepository;

    @Autowired
    protected CategoryServiceImpl(final CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    @Override
    public List<Category> getCategories() {

        return categoryRepository.findAll();
    }

    @Override
    public void addCategories(Category category) {

        categoryRepository.save(category);

    }

    @Override
    public boolean containsName(String name) {

        return categoryRepository.findByName(name).isEmpty() ? false : true;

    }

}
