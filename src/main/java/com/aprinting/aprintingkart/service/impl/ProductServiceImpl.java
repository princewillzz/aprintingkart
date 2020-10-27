package com.aprinting.aprintingkart.service.impl;

import java.util.List;
import java.util.NoSuchElementException;

import com.aprinting.aprintingkart.Exceptions.DuplicateFileException;
import com.aprinting.aprintingkart.models.Product;
import com.aprinting.aprintingkart.repository.ProductRepository;
import com.aprinting.aprintingkart.service.CategoryService;
import com.aprinting.aprintingkart.service.ProductService;
import com.aprinting.aprintingkart.service.storage.StorageService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

@Service
@Qualifier("productService")
public class ProductServiceImpl implements ProductService {

    private final ProductRepository productRepository;
    private final StorageService storageService;
    private final CategoryService CategoryService;

    @Autowired
    protected ProductServiceImpl(final ProductRepository productRepository, final StorageService storageService,
            @Qualifier("categoryService") CategoryService categoryService) {

        this.productRepository = productRepository;
        this.storageService = storageService;
        this.CategoryService = categoryService;
    }

    @Override
    @CacheEvict(value = "products", allEntries = true)
    public void addProduct(Product product, MultipartFile photo) {

        if (containsName(product.getName())) {
            throw new DuplicateFileException("product with name " + product.getName() + " already exists.");
        }

        try {
            storageService.store(photo); // save in a folder
            Resource resource = storageService.loadAsResource(StringUtils.cleanPath(photo.getOriginalFilename())); // file
                                                                                                                   // URI;

            String photoURI = resource.getURI().toString();

            product.setPhoto(photoURI);

        } catch (Exception e) {
            // TODO: handle exception
        }

        productRepository.save(product);

    }

    public boolean containsName(String name) {

        return productRepository.findByName(name).isEmpty() ? false : true;

    }

    @Override
    @Cacheable("products")
    public List<Product> getProducts(String id) {

        return productRepository.findByCategory(CategoryService.getCategory(id));
    }

    @Override
    public Product getProduct(final Long id) {
        return productRepository.findById(id).orElseThrow(() -> new NoSuchElementException());
    }

}
