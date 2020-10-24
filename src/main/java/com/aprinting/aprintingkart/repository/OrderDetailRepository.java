package com.aprinting.aprintingkart.repository;

import java.util.List;

import com.aprinting.aprintingkart.models.OrderDetail;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Long> {

    @Query(value = "select * from order_detail order by created_at desc", nativeQuery = true)
    List<OrderDetail> findAllOrderByCreatedAtDesc(Pageable pageable);

    @Query(value = "select * from order_detail where delivery_date is not null", nativeQuery = true)
    List<OrderDetail> findByDeliveryDateNotNull();

}
