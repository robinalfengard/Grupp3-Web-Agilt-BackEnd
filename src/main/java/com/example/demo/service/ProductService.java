package com.example.demo.service;

import com.example.demo.entity.Product;
import com.example.demo.entity.Size;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.repository.ProductRepository;
import com.example.demo.repository.SizeRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.http.HttpStatus;

import java.util.Arrays;
import java.util.List;

@Service
public class ProductService {
    private final ProductRepository productRepository;
    private final CategoryRepository categoryRepository;
    private final SizeRepository sizeRepository;

    public ProductService(ProductRepository productRepository, CategoryRepository categoryRepository,
                          SizeRepository sizeRepository) {
        this.productRepository = productRepository;
        this.categoryRepository = categoryRepository;
        this.sizeRepository = sizeRepository;
    }

    public Iterable<Product> getAllProducts() {
        return productRepository.findAll();
    }

    public Product getProductById(Integer id) {
        Product product = productRepository.findById(id).orElse(null);
        if (product.getSizes() == null || product.getSizes().isEmpty()) {
            product.setSizes(getDefaultSizes());
        }
        return product;
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

    public Iterable<Product> getOnSaleProducts() {
        return productRepository.getOnSaleProducts();
    }

    private List<Size> getDefaultSizes() {
        return sizeRepository.getDefaultSizes();
    }

}
