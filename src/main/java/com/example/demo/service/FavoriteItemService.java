package com.example.demo.service;

import com.example.demo.entity.FavoriteItem;
import com.example.demo.repository.FavoriteItemRepository;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;

@Service
public class FavoriteItemService {

    private final FavoriteItemRepository favoriteItemRepository;

    public FavoriteItemService(FavoriteItemRepository favoriteItemRepository) {
        this.favoriteItemRepository = favoriteItemRepository;
    }



    public List<FavoriteItem> getFavoriteItemsByUserId(int userId) {
        return favoriteItemRepository.getFavoriteItemsByUserId(userId);
    }

    public FavoriteItem addFavoriteItem(FavoriteItem favoriteItem) {
        return favoriteItemRepository.save(favoriteItem);
    }

    public void deleteFavoriteItem(Long id) {
        favoriteItemRepository.deleteById(id);
    }
}
