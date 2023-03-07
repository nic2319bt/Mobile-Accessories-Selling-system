package com.example.mass_front.model;

import lombok.Data;

import javax.persistence.*;
@Entity
@Data
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int pid;

    private String pname;
    private int qty;
    private double price;
    private String warranty;
    private String dtype;
    private String dsize;
    private String dresulotion;
    private String dprotection;
    private String os;
    private String chipset;
    private String cpu;
    private String gpu;
    private String fcam;
    private String fvideo;
    private String bcam;
    private String bvideo;
    private String rom;
    private String ram;
    private String battery;
    private String des;


    private String branch;
    private String cn;
    private int cnu;
    private String cd;
    private String pm;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "cat_id", referencedColumnName = "cat_id")
    private Category category;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "subcat_id" , referencedColumnName = "subcat_id")
    private SubCategory subCategory;

    private String imageName;
}
