package com.example.mass_front.repository;

import com.example.mass_front.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product,Integer> {
  //  @Query("select p from Product p where p.subCategory = ?1")
    //List<Product> findBySubCategory(int id);


}
