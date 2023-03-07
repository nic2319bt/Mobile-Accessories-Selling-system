package com.example.mass_front.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class SubCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "subcat_id")
    private int subcatid;

    private String sub_cat_name;

}
