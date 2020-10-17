package com.aprinting.aprintingkart.repository;

import com.aprinting.aprintingkart.models.OrderDetail;

import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Long> {

}
