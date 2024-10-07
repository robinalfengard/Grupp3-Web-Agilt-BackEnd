package com.example.demo.controller;

import com.example.demo.entity.Product;
import com.example.demo.service.ProductService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/product")
public class ProductController {
    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }


    // WORKS
    @GetMapping("/allproducts")
    public ResponseEntity<Iterable<Product>> getAllProducts(){
        Iterable<Product> products= productService.getAllProducts();
        return ResponseEntity.ok(products);
    }

    // WORKS
    @GetMapping("/{id}")
    public ResponseEntity<Product> getProductById(@PathVariable Integer id) {
        Product product = productService.getProductById(id);
        return ResponseEntity.ok(product);
    }


    @PostMapping("/add")
    public ResponseEntity<Product> addProduct(@RequestBody Product product) {
        productService.saveProduct(product);
        return ResponseEntity.ok(product);
    }

    // failed because of foreign key constraints
    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteProduct(@PathVariable Integer id) {
        productService.deleteProduct(id);
        return ResponseEntity.ok().build();
    }


    @PutMapping("/update/{id}")
    public ResponseEntity<Product> updateProduct(@PathVariable Integer id, Product product) {
        Product updatedProduct = productService.updateProduct(id, product);
        return ResponseEntity.ok(updatedProduct);
    }


    // WORKS
    @GetMapping("/category/{categoryId}")
    public ResponseEntity<Iterable<Product>> getProductByCategoryId(@PathVariable Integer categoryId){
        Iterable<Product> listProductByCategoryId = productService.getAllProductsByCategoryId(categoryId);
        return ResponseEntity.ok(listProductByCategoryId);
    }

}
