package com.example.mass_front.model;

import javax.persistence.*;

@Entity
@Table(name = "croles")
public class CRole {
    @Id
    @Column(name = "role_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;

    public CRole(){

    }
    public CRole(String name) {
        this.name = name;
    }

    public CRole(Integer id) {
        this.id = id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }
}
