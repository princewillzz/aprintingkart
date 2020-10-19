package com.aprinting.aprintingkart.service.impl;

import java.util.List;

import com.aprinting.aprintingkart.models.OrderDetail;
import com.aprinting.aprintingkart.repository.OrderDetailRepository;
import com.aprinting.aprintingkart.service.OrderService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
@Qualifier("orderDetailService")
public class OrderServiceImpl implements OrderService {

    private final OrderDetailRepository orderRepository;

    @Autowired
    protected OrderServiceImpl(final OrderDetailRepository orderDetailRepository) {
        this.orderRepository = orderDetailRepository;
    }

    @Override
    public List<OrderDetail> getDeliveredOrders() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public List<OrderDetail> getAllOrders() {

        return null;
    }

    @Override
    public OrderDetail getOrderDetail(final Long id) {

        return orderRepository.getOne(id);
    }

    @Override
    public void addOrder(final OrderDetail orderDetail) {

        orderRepository.save(orderDetail);

    }

}
