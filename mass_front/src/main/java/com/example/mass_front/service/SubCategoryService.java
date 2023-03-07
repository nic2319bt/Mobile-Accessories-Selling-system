package com.example.mass_front.service;

import com.example.mass_front.model.Product;
import com.example.mass_front.repository.ProductRepository;
import com.example.mass_front.repository.SubCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SubCategoryService {
    @Autowired
    ProductRepository productRepository;



}
