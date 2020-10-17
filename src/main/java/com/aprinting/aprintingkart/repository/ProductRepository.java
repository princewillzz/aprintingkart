package com.aprinting.aprintingkart.repository;

import com.aprinting.aprintingkart.models.Product;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {

}
