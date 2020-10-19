package com.aprinting.aprintingkart.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.aprinting.aprintingkart.Exceptions.DuplicateFileException;
import com.aprinting.aprintingkart.models.Category;
import com.aprinting.aprintingkart.repository.CategoryRepository;
import com.aprinting.aprintingkart.service.CategoryService;
import com.aprinting.aprintingkart.service.storage.StorageService;
import com.aprinting.aprintingkart.utilies.CategoryAndSubCategory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

@Service
@Qualifier("categoryService")
public class CategoryServiceImpl implements CategoryService {

    private CategoryRepository categoryRepository;
    private StorageService imageStorageService;

    @Autowired
    protected CategoryServiceImpl(final CategoryRepository categoryRepository,
            final StorageService imageStorageService) {
        this.categoryRepository = categoryRepository;
        this.imageStorageService = imageStorageService;
    }

    @Override
    public List<Category> getCategories() {

        return categoryRepository.findAll();
    }

    @Override
    public void addCategories(Category category, MultipartFile photo) {

        if (containsName(category.getName())) {
            throw new DuplicateFileException("Category name " + category.getName() + " already exists");
        }

        String photoURI = new String();

        try {
            // it should return an resource to be stored in db
            imageStorageService.store(photo); // store it in photoResource
            Resource photoResource = imageStorageService
                    .loadAsResource(StringUtils.cleanPath(photo.getOriginalFilename()));

            photoURI = photoResource.getURI().toString();

            category.setPhoto(photoURI);

            System.out.println(photoURI);

        } catch (Exception e) {
            System.out.println("Unable to save photo");
        }

        categoryRepository.save(category);

    }

    @Override
    public boolean containsName(String name) {

        return categoryRepository.findByName(name).isEmpty() ? false : true;

    }

    @Override
    public List<CategoryAndSubCategory> getCategoryWithSubCategories() {

        final List<Category> categories = categoryRepository.findAll();

        final List<CategoryAndSubCategory> categoryAndSubCategoriesList = new ArrayList<>();

        for (int index = 0; index < categories.size(); index++) {
            CategoryAndSubCategory categoryAndSub = new CategoryAndSubCategory();
            categoryAndSub.setCategory(categories.get(index));

            for (Category item : categories) {
                if (item.getParent() != null && item.getParent().getId() == categoryAndSub.getCategory().getId()) {
                    categoryAndSub.setSubCategories(item);
                }
            }

            categoryAndSubCategoriesList.add(categoryAndSub);

        }

        return categoryAndSubCategoriesList;
    }

}
