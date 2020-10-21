package com.aprinting.aprintingkart.repository;

import java.util.List;
import java.util.Set;

import com.aprinting.aprintingkart.models.Category;
import com.aprinting.aprintingkart.models.Product;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {

    List<Product> findByName(String name);

    List<Product> findByCategory(Category category);

}
