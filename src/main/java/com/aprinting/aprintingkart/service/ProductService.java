package com.aprinting.aprintingkart.service;

import com.aprinting.aprintingkart.models.Product;

import org.springframework.web.multipart.MultipartFile;

public interface ProductService {

    void addProduct(Product product, MultipartFile photo);

}
