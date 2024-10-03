package com.example.demo.repository;

import com.example.demo.entity.SoldProduct;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SoldItemRepository extends CrudRepository<SoldProduct, Long> {

}
