package com.example.mass_front.shoppingcart;

import com.example.mass_front.model.CartItem;
import com.example.mass_front.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartItemRepository extends JpaRepository<CartItem,Integer> {
    public List<CartItem> findByCustomer(Customer customer);
}
