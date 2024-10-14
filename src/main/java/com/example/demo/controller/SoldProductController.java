package com.example.demo.controller;
import com.example.demo.entity.Product;
import com.example.demo.entity.SoldProduct;
import com.example.demo.service.SoldItemService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/soldProduct")
@CrossOrigin(origins = "http://localhost:3000")
public class SoldProductController {

    private final SoldItemService soldItemService;

    public SoldProductController(SoldItemService soldItemSoldService) {
        this.soldItemService = soldItemSoldService;
    }

    // WORKS
    @GetMapping("/{userId}")
    public ResponseEntity<List<SoldProduct>> listOfItemsBoughtBySpecificUser(@PathVariable int userId) {
        List<SoldProduct> soldProducts = soldItemService.getListOfItemsByUserId(userId);
        if (soldProducts.isEmpty()) {
            return ResponseEntity.notFound().build();  
        }
        return ResponseEntity.ok(soldProducts);
    }

    @DeleteMapping("/{userId}/{productId}")
    public ResponseEntity<Void> deleteProductFromCart(@PathVariable Long userId, @PathVariable Long productId) {
        soldItemService.deleteProductFromCart(userId, productId);
        return ResponseEntity.noContent().build();
    }
    // WORKS
    @PostMapping("")
    public ResponseEntity<String> itemSold(@RequestBody SoldProduct soldProduct) {
        String result = soldItemService.saveSoldItem(soldProduct);
        return ResponseEntity.ok(result);
    }
}
