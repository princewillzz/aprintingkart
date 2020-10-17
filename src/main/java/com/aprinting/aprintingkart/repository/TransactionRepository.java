package com.aprinting.aprintingkart.repository;

import com.aprinting.aprintingkart.models.Transaction;

import org.springframework.data.jpa.repository.JpaRepository;

public interface TransactionRepository extends JpaRepository<Transaction, Long> {

}
