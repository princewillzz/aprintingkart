package com.aprinting.aprintingkart.repository;

import com.aprinting.aprintingkart.models.Customer;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Long> {

}
