package com.example.mass_front.service;

import com.example.mass_front.model.Product;
import com.example.mass_front.repository.ProductRepository;
import com.example.mass_front.repository.SubCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService {
    @Autowired
    SubCategoryRepository subCategoryRepository;
    @Autowired
    ProductRepository productRepository;

  //  public List<Product> getAllProductBySubCategoryId(int id){
    //    return productRepository.findBySubCategory(id);
   // }
    public List<Product> getAllProduct(){
        return productRepository.findAll();
    }
    public Optional<Product> getProductById(int id){
        return productRepository.findById(id);
    }
}
