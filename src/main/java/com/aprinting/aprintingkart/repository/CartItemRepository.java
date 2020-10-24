package com.aprinting.aprintingkart.repository;

import java.util.List;

import com.aprinting.aprintingkart.models.CartItem;
import com.aprinting.aprintingkart.models.Customer;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CartItemRepository extends JpaRepository<CartItem, Long> {

    List<CartItem> findByCustomer(Customer customer);

}
