package com.example.mass_front.service;

import com.example.mass_front.model.Order;
import com.example.mass_front.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {
    @Autowired
    OrderRepository orderRepository;
    public void addOrder(Order order){
        orderRepository.save(order);
    }
}
