package com.aprinting.aprintingkart.service.impl;

import java.util.List;

import com.aprinting.aprintingkart.models.Customer;
import com.aprinting.aprintingkart.service.CustomerService;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
@Qualifier("customerService")
public class CustomerServiceImpl implements CustomerService {

    @Override
    public List<Customer> getAllCustomers() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Customer getDetail(String id) {
        // TODO Auto-generated method stub
        return null;
    }

}
