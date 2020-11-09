package com.aprinting.aprintingkart.service;

import java.util.List;

import com.aprinting.aprintingkart.models.Customer;

public interface CustomerService {

    List<Customer> getAllCustomers();

    Customer getDetail(Long id);

    Customer addNewCustomer(final Customer customer);

    Customer resetPassword(Customer customer);

}
