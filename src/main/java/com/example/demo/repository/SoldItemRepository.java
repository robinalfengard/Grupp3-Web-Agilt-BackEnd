package com.example.demo.repository;

import com.example.demo.entity.Product;
import com.example.demo.entity.SoldProduct;
import com.example.demo.entity.User;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface SoldItemRepository extends CrudRepository<SoldProduct, Long> {

    List<SoldProduct> findProductsByUser(User user);

    @Modifying
    @Transactional
    @Query("DELETE FROM SoldProduct sp WHERE sp.user = :user AND sp.product = :product")
    void deleteByUserAndProduct(@Param("user") User user, @Param("product") Product product);
}
