package com.aprinting.aprintingkart.controller;

import java.util.Hashtable;

import com.aprinting.aprintingkart.service.CartService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "api")
public class CartAPIController {

    private final CartService cartService;

    @Autowired
    protected CartAPIController(@Qualifier("cartService") CartService cartService) {
        this.cartService = cartService;
    }

    @PostMapping(value = "user/add-to-cart")
    public ResponseEntity<?> addToCart(@RequestBody Hashtable<String, String> model) {

        HttpStatus serviceStatus = HttpStatus.BAD_GATEWAY;
        try {
            serviceStatus = cartService.addToCart(model, null);
        } catch (NumberFormatException e) {
            serviceStatus = HttpStatus.NO_CONTENT;
        } catch (Exception e) {
            serviceStatus = HttpStatus.BAD_REQUEST;
        } finally {
            if (serviceStatus != HttpStatus.ACCEPTED) {
                return ResponseEntity.badRequest().body("Invalid Request");
            }
        }

        return ResponseEntity.ok("Added in the database");
    }

}
