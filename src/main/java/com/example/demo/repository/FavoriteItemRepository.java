package com.example.demo.repository;
import com.example.demo.entity.FavoriteItem;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FavoriteItemRepository extends CrudRepository<FavoriteItem, Long> {

    List<FavoriteItem> getFavoriteItemsByUserId(int userId);
}
