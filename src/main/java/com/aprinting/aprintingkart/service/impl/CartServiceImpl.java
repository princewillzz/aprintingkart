package com.aprinting.aprintingkart.service.impl;

import java.util.Hashtable;
import java.util.List;
import java.util.NoSuchElementException;

import com.aprinting.aprintingkart.models.CartItem;
import com.aprinting.aprintingkart.models.Customer;
import com.aprinting.aprintingkart.models.Product;
import com.aprinting.aprintingkart.repository.CartItemRepository;
import com.aprinting.aprintingkart.service.CartService;
import com.aprinting.aprintingkart.service.CustomerService;
import com.aprinting.aprintingkart.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

@Service
@Qualifier("cartService")
public class CartServiceImpl implements CartService {

    private final CartItemRepository cartItemRepository;
    private final CustomerService customerService;
    private final ProductService productService;

    @Autowired
    protected CartServiceImpl(final CartItemRepository cartItemRepository,
            @Qualifier("customerService") CustomerService customerService,
            @Qualifier("productService") ProductService productService) {
        this.cartItemRepository = cartItemRepository;
        this.customerService = customerService;
        this.productService = productService;
    }

    @Override
    public List<CartItem> getAllCartItems() {
        return cartItemRepository.findAll();
    }

    @Override
    public List<CartItem> getCartItems(final String id) {
        return cartItemRepository.findByCustomer(customerService.getDetail(Long.parseLong(id)));
    }

    @Override
    public HttpStatus addToCart(final Hashtable<String, String> model, final Customer customer) {
        try {
            // Fetch item from request model
            final Long productId = Long.parseLong(model.get("product"));
            final Integer quantity = Integer.parseInt(model.get("quantity"));
            final Double price = Double.parseDouble(model.get("price"));
            // Fetch Product from database
            final Product product = productService.getProduct(productId);

            // Initiaze cart Item entity
            final CartItem cartItem = new CartItem();
            cartItem.setProduct(product);
            cartItem.setQuantity(quantity);
            cartItem.setCustomer(customer);
            cartItem.setPrice(price);

            if (model.containsKey("discount")) {
                final Double discount = Double.parseDouble(model.get("discount"));
                cartItem.setDiscount(discount);
            }

            // Save the entity
            cartItemRepository.save(cartItem);
        } catch (NumberFormatException e) {
            return HttpStatus.NO_CONTENT;
        } catch (NoSuchElementException e) {
            return HttpStatus.NOT_FOUND;
        } catch (Exception e) {
            return HttpStatus.BAD_REQUEST;
        }
        return HttpStatus.ACCEPTED;
    }

}
