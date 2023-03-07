package com.example.mass_front.repository;

import com.example.mass_front.model.Customer;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface CustomerRepository extends CrudRepository<Customer,Integer> {
    @Query("SELECT u FROM Customer u WHERE u.username = :username")
    public Customer getUserByUsername(@Param("username") String username);
}
