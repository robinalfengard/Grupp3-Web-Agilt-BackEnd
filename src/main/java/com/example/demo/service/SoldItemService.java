package com.example.demo.service;

import com.example.demo.entity.Product;
import com.example.demo.entity.SoldProduct;
import com.example.demo.entity.User;
import com.example.demo.repository.ProductRepository;
import com.example.demo.repository.SoldItemRepository;
import com.example.demo.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Service
public class SoldItemService {

    private final SoldItemRepository soldItemRepository;
    private final UserRepository userRepository;
    private final ProductRepository productRepository;


    public SoldItemService(SoldItemRepository soldItemRepository, UserRepository userRepository, ProductRepository productRepository) {
        this.soldItemRepository = soldItemRepository;
        this.userRepository = userRepository;
        this.productRepository = productRepository;
    }

    public List<SoldProduct> getListOfItemsByUserId(int userId){
        Optional<User> user = userRepository.findById(userId);
        if (user.isEmpty()) {
            return List.of();
        }
        return soldItemRepository.findProductsByUser(user.get());
    }


    public String saveSoldItem(SoldProduct soldProduct){
        soldItemRepository.save(soldProduct);
        return "Save Sold Item Successful";
    }


    public void deleteProductFromCart(Long userId, Long productId) {
        User user = userRepository.findById(Math.toIntExact(userId)).orElseThrow(() -> new RuntimeException("User not found"));
        Product product = productRepository.findById(Math.toIntExact(productId)).orElseThrow(() -> new RuntimeException("Product not found"));

        soldItemRepository.deleteByUserAndProduct(user, product);
    }
}
