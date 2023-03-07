package com.example.mass_front.service;

import com.example.mass_front.CustomerDetails;
import com.example.mass_front.model.Customer;
import com.example.mass_front.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class CustomerDetailsserviceImpl implements UserDetailsService {
    @Autowired
    private CustomerRepository customerRepository;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Customer customer = customerRepository.getUserByUsername(username);
        if(customer == null){
            throw  new UsernameNotFoundException(("Could not find customer"));
        }
        return new CustomerDetails(customer);
    }


}
