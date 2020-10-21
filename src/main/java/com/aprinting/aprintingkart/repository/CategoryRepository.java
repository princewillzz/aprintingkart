package com.aprinting.aprintingkart.repository;

import java.util.List;

import com.aprinting.aprintingkart.models.Category;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface CategoryRepository extends JpaRepository<Category, Long> {

    List<Category> findByName(String name);

    @Query(value = "select * from category where parent_id = :id", nativeQuery = true)
    List<Category> findAllWhereParentIdEquals(@Param("id") Long id);

    @Query(value = "select * from category where parent_id is null", nativeQuery = true)
    List<Category> findAllWhereParentIdIsNull();
}
