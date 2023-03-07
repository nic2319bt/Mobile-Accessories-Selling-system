package com.example.mass_front.repository;

import com.example.mass_front.model.Product;
import com.example.mass_front.model.SubCategory;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SubCategoryRepository extends JpaRepository<SubCategory,Integer> {
  //  List<Product> findAllBySubCategoryId(int id);
}
