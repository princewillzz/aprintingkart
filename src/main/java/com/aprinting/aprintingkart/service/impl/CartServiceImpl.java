package com.aprinting.aprintingkart.service.impl;

import java.util.List;

import com.aprinting.aprintingkart.models.CartItem;
import com.aprinting.aprintingkart.models.Customer;
import com.aprinting.aprintingkart.repository.CartItemRepository;
import com.aprinting.aprintingkart.service.CartService;
import com.aprinting.aprintingkart.service.CustomerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
@Qualifier("cartService")
public class CartServiceImpl implements CartService {

    private final CartItemRepository cartItemRepository;
    private final CustomerService customerService;

    @Autowired
    protected CartServiceImpl(final CartItemRepository cartItemRepository,
            @Qualifier("customerService") CustomerService customerService) {
        this.cartItemRepository = cartItemRepository;
        this.customerService = customerService;
    }

    @Override
    public List<CartItem> getAllCartItems() {
        return cartItemRepository.findAll();
    }

    @Override
    public List<CartItem> getCartItems(final String id) {
        return cartItemRepository.findByCustomer(customerService.getDetail(id));
    }

    @Override
    public void add(final CartItem cartItem, final Customer customer) {
        cartItem.setCustomer(customer);
        cartItemRepository.save(cartItem);
    }

}
