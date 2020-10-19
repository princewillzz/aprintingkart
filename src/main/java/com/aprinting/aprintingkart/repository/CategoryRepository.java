package com.aprinting.aprintingkart.repository;

import java.util.List;

import com.aprinting.aprintingkart.models.Category;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Long> {

    List<Category> findByName(String name);

}
