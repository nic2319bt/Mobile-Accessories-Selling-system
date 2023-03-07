package com.example.mass_front;

import com.example.mass_front.model.CRole;
import com.example.mass_front.model.Customer;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;

public class CustomerDetails implements UserDetails {
    private Customer customer;
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Set<CRole> roles = customer.getRoles();
        List<SimpleGrantedAuthority> authorities = new ArrayList<>();
        for(CRole role:roles){
            authorities.add(new SimpleGrantedAuthority(role.getName()));
        }
        return authorities;
    }
    public boolean hasRole(String roleName){
        return this.customer.hasRole(roleName);
    }
    public CustomerDetails(Customer customer) {
        this.customer = customer;
    }
    public String getCity(){
        return customer.getCus_city();
    }
    public int getId(){
        return customer.getCus_id();
    }
    public String getAddress(){
        return customer.getCus_address();
    }

    public String getEmail(){
        return customer.getCus_email();
    }

    public int getNumber(){
        return customer.getCus_number();
    }

    @Override
    public String getPassword() {
        return customer.getPassword();
    }

    @Override
    public String getUsername() {
        return customer.getUsername();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
