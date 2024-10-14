package com.example.demo.controller;

import com.example.demo.entity.FavoriteItem;
import com.example.demo.service.FavoriteItemService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/favoriteItem")
public class FavoriteItemController {

    private final FavoriteItemService favoriteItemService;

    public FavoriteItemController(FavoriteItemService favoriteItemService) {
        this.favoriteItemService = favoriteItemService;
    }


    @GetMapping("/{userId}")
    public ResponseEntity<List<FavoriteItem>> getFavoriteItemsBasedOnUserId(@PathVariable Integer userId) {
        return ResponseEntity.ok(favoriteItemService.getFavoriteItemsByUserId(userId));
    }


    @PostMapping("/add")
    public ResponseEntity<FavoriteItem> addFavoriteItem(@RequestBody FavoriteItem favoriteItem) {
        return ResponseEntity.ok(favoriteItemService.addFavoriteItem(favoriteItem));
    }

}
