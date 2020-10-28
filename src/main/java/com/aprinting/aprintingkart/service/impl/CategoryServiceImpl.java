package com.aprinting.aprintingkart.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.stream.Collectors;

import com.aprinting.aprintingkart.Exceptions.DuplicateFileException;
import com.aprinting.aprintingkart.models.Category;
import com.aprinting.aprintingkart.repository.CategoryRepository;
import com.aprinting.aprintingkart.service.CategoryService;
import com.aprinting.aprintingkart.service.storage.StorageService;
import com.aprinting.aprintingkart.utilies.CategoryAndSubCategory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
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
    @Cacheable("categories")
    public List<Category> getCategories() {

        return categoryRepository.findAll();
    }

    @Override
    @Cacheable("categories")
    public Category getCategory(String id) throws NumberFormatException, NoSuchElementException {

        return (Category) categoryRepository.findById(Long.parseLong(id)).get();
    }

    @Override
    @CacheEvict(value = { "categoriesWithSubCategories", "subCategories", "categories" }, allEntries = true)
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
    @Cacheable("categoriesWithSubCategories")
    public List<CategoryAndSubCategory> getCategoryWithSubCategories() {

        List<Category> categories = categoryRepository.findAll();
        final List<Category> restCategories = new ArrayList<>(categories);

        // Get Level 1 categories
        final List<CategoryAndSubCategory> categoryAndSubCategoriesList = categories.stream()
                .filter(it -> it.getParent() == null).map(it -> {
                    CategoryAndSubCategory item = new CategoryAndSubCategory();
                    item.setCategory(it);
                    restCategories.remove(it);
                    return item;
                }).collect(Collectors.toList());

        // Getting rest of the categories
        // Looping untill no more categories needs to be associated with its parent
        while (restCategories.size() > 0) {

            // Copying categories to be processed
            List<Category> temporaryCategories = new ArrayList<>(restCategories);

            // Associating each item with its parent if the parent is already associated
            temporaryCategories.stream()
                    .filter(category -> searchAndUpdateSubCategory(categoryAndSubCategoriesList, category) != null)
                    .forEach(category -> restCategories.remove(category));

        }

        return categoryAndSubCategoriesList;
    }

    private Category searchAndUpdateSubCategory(List<CategoryAndSubCategory> categoryAndSubCategoriesList,
            Category toBeCheckedCategory) {

        for (CategoryAndSubCategory item : categoryAndSubCategoriesList) {
            if (item.getCategory().getId() == toBeCheckedCategory.getParent().getId()) {
                CategoryAndSubCategory newItem = new CategoryAndSubCategory();
                newItem.setCategory(toBeCheckedCategory);
                item.setSubCategories(newItem);
                return toBeCheckedCategory;
            }
            Category category = searchAndUpdateSubCategory(item.getSubCategories(), toBeCheckedCategory);
            if (category != null)
                return toBeCheckedCategory;
        }

        return null;

    }

    @Override
    @Cacheable("subCategories")
    public List<Category> getSubCategories(String id) throws NumberFormatException {

        return categoryRepository.findAllWhereParentIdEquals(Long.parseLong(id));
    }

    @Override
    @CacheEvict(value = { "categoriesWithSubCategories", "subCategories", "categories" }, allEntries = true)
    public void deleteCategory(String id) {
        categoryRepository.deleteById(Long.parseLong(id));
    }

    @Override
    @CacheEvict(value = { "categoriesWithSubCategories", "subCategories", "categories" }, allEntries = true)
    public void updateCategory(Category newCategoryData, MultipartFile photo) {

        try {

            Category category = categoryRepository.getOne(newCategoryData.getId());

            category.setName(newCategoryData.getName());
            category.setContent(newCategoryData.getContent());

            try {
                imageStorageService.store(photo);

                Resource photoResource = imageStorageService
                        .loadAsResource(StringUtils.cleanPath(photo.getOriginalFilename()));

                String photoURI = photoResource.getURI().toString();

                category.setPhoto(photoURI);
                System.out.println(photoURI);
            } catch (Exception e) {
                System.out.println("unable to update photo");
            }

            categoryRepository.save(category);

        } catch (Exception e) {
            System.out.println("Unable to update category");
        }

    }

    @Override

    public List<Category> getParentCategories() {

        return categoryRepository.findAllWhereParentIdIsNull();
    }

}
