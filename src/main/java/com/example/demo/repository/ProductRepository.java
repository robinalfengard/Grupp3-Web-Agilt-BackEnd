package com.example.demo.repository;

import com.example.demo.entity.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends CrudRepository<Product, Integer> {

    @Query("SELECT p FROM Product p WHERE p.category.id = :categoryId")
    Iterable<Product> getAllProductsByCategoryId(@Param("categoryId") Integer categoryId);
}
