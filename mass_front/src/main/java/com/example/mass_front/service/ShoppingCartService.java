package com.example.mass_front.service;

import com.example.mass_front.model.CartItem;
import com.example.mass_front.model.Customer;
import com.example.mass_front.shoppingcart.CartItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShoppingCartService {
    @Autowired
    private CartItemRepository cartRepo;

    public List<CartItem> listCartItems(Customer customer){
        return cartRepo.findByCustomer(customer);
    }
}
