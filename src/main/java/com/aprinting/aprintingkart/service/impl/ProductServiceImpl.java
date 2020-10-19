package com.aprinting.aprintingkart.service.impl;

import com.aprinting.aprintingkart.Exceptions.DuplicateFileException;
import com.aprinting.aprintingkart.models.Product;
import com.aprinting.aprintingkart.repository.ProductRepository;
import com.aprinting.aprintingkart.service.ProductService;
import com.aprinting.aprintingkart.service.storage.StorageService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

@Service
@Qualifier("productService")
public class ProductServiceImpl implements ProductService {

    private final ProductRepository productRepository;
    private final StorageService storageService;

    @Autowired
    protected ProductServiceImpl(final ProductRepository productRepository, final StorageService storageService) {

        this.productRepository = productRepository;
        this.storageService = storageService;
    }

    @Override
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

}
