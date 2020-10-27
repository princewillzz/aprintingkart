package com.aprinting.aprintingkart.service;

import java.util.List;
import java.util.NoSuchElementException;

import com.aprinting.aprintingkart.models.Product;

import org.springframework.web.multipart.MultipartFile;

public interface ProductService {

    void addProduct(Product product, MultipartFile photo);

    /**
     * 
     * @param id Category it is associated with
     * @return All the product belonging to that category
     */
    List<Product> getProducts(String id);

    Product getProduct(final Long id);

}
