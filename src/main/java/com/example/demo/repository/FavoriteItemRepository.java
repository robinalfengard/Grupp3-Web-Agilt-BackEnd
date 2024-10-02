package com.example.demo.repository;
import com.example.demo.entity.FavoriteItem;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
interface FavoriteItemRepository extends CrudRepository<FavoriteItem, Long> {

}
