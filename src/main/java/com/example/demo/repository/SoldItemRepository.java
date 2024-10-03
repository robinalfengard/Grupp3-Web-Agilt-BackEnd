package com.example.demo.repository;

import com.example.demo.entity.Product;
import com.example.demo.entity.SoldProduct;
import com.example.demo.entity.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SoldItemRepository extends CrudRepository<SoldProduct, Long> {

    List<Product> findProductsByUser(User user);
}
