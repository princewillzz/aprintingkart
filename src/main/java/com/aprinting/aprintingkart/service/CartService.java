package com.aprinting.aprintingkart.service;

import java.util.List;

import com.aprinting.aprintingkart.models.CartItem;
import com.aprinting.aprintingkart.models.Customer;

public interface CartService {

    List<CartItem> getAllCartItems();

    /**
     * 
     * @param id Customer id whose cart needs to be shown
     * @return list of items in the customers cart
     */
    List<CartItem> getCartItems(String id);

    void add(CartItem cartItem, Customer customer);

}
