package com.aprinting.aprintingkart.controller;

import com.aprinting.aprintingkart.service.OrderService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderController {

    private final OrderService orderService;

    @Autowired
    protected OrderController(@Qualifier("orderDetailService") OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping(value = "dashboard/manage-order")
    public ModelAndView getManageOrderView() {
        ModelAndView modelAndView = new ModelAndView("dashboard/manageOrder");

        return modelAndView;
    }

    @GetMapping(value = "dashboard/orders")
    @ResponseBody
    public ResponseEntity<?> getAllOrders(@RequestParam(defaultValue = "0", value = "page") String pageIndex) {
        System.out.println(orderService.getDeliveredOrders());
        return ResponseEntity.ok().body(orderService.getAllOrders(Integer.parseInt(pageIndex)));
    }

}
