package com.aprinting.aprintingkart.service;

import java.util.Hashtable;
import java.util.List;

import com.aprinting.aprintingkart.models.CartItem;
import com.aprinting.aprintingkart.models.Customer;

import org.springframework.http.HttpStatus;

public interface CartService {

    List<CartItem> getAllCartItems();

    /**
     * 
     * @param id Customer id whose cart needs to be shown
     * @return list of items in the customers cart
     */
    List<CartItem> getCartItems(String id);

    HttpStatus addToCart(Hashtable<String, String> model, Customer customer);

}
