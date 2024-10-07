package com.example.demo.service;

import com.example.demo.entity.Product;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.repository.ProductRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.http.HttpStatus;

import java.util.List;

@Service
public class ProductService {
    private final ProductRepository productRepository;
    private final CategoryRepository categoryRepository;

    public ProductService(ProductRepository productRepository, CategoryRepository categoryRepository) {
        this.productRepository = productRepository;
        this.categoryRepository = categoryRepository;
    }

    public Iterable<Product> getAllProducts() {
        return productRepository.findAll();
    }

    public Product getProductById(Integer id) {
        return productRepository.findById(id).orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Product not found"));
    }

    public Product saveProduct(Product product) {
        return productRepository.save(product);
    }
    public void deleteProduct(Integer id) {
        productRepository.deleteById(id);
    }

    public Product updateProduct(Integer id, Product productInfo) {
        Product existingProduct = productRepository.findById(id).orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Product not found"));
        if (existingProduct != null) {
            existingProduct.setName(productInfo.getName());
            existingProduct.setDescription(productInfo.getDescription());
            existingProduct.setImage(productInfo.getImage());
            existingProduct.setOnSale(productInfo.getOnSale());
            existingProduct.setPrice(productInfo.getPrice());
            existingProduct.setNumberInStock(productInfo.getNumberInStock());
            return productRepository.save(existingProduct);
        }
        return null;
    }

    public Iterable<Product> getAllProductsByCategoryId(Integer categoryId) {
        return productRepository.getAllProductsByCategoryId(categoryId);
    }
}
