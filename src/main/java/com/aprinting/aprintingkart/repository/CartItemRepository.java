package com.aprinting.aprintingkart.repository;

import com.aprinting.aprintingkart.models.CartItem;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CartItemRepository extends JpaRepository<CartItem, Long> {

}