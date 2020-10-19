package com.aprinting.aprintingkart.service;

import java.util.List;

import com.aprinting.aprintingkart.models.OrderDetail;

public interface OrderService {

    List<OrderDetail> getDeliveredOrders();

    List<OrderDetail> getAllOrders();

    OrderDetail getOrderDetail(Long id);

    void addOrder(OrderDetail orderDetail);

}
