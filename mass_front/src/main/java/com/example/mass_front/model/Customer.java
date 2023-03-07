package com.example.mass_front.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

@Entity
@Table(name = "customer")
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer cus_id;

    private String cus_name;
    private String cus_address;
    private String cus_city;
    private String cus_email;
    private String username;
    private String password;
    private int cus_number;

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(
            name = "customer_role",
            joinColumns = @JoinColumn(name = "cus_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id")
    )
    private Set<CRole> roles = new HashSet<>();

    public boolean hasRole(String roleName){
        Iterator<CRole> iterator = this.roles.iterator();
        while (iterator.hasNext()){
            CRole role = iterator.next();
            if(role.getName().equals((roleName))){
                return true;
            }
        }
        return false;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRoles(Set<CRole> roles) {
        this.roles = roles;
    }

    public String getPassword() {
        return password;
    }

    public Set<CRole> getRoles() {
        return roles;
    }
    public void addRole(CRole role){
        this.roles.add(role);
    }

    public void setCus_id(Integer cus_id) {
        this.cus_id = cus_id;
    }

    public void setCus_name(String cus_name) {
        this.cus_name = cus_name;
    }

    public void setCus_address(String cus_address) {
        this.cus_address = cus_address;
    }

    public void setCus_city(String cus_city) {
        this.cus_city = cus_city;
    }

    public void setCus_email(String cus_email) {
        this.cus_email = cus_email;
    }

    public void setCus_number(int cus_number) {
        this.cus_number = cus_number;
    }

    public Integer getCus_id() {
        return cus_id;
    }

    public String getCus_name() {
        return cus_name;
    }

    public String getCus_address() {
        return cus_address;
    }

    public String getCus_city() {
        return cus_city;
    }

    public String getCus_email() {
        return cus_email;
    }

    public int getCus_number() {
        return cus_number;
    }
}
