package com.example.demo.service;

import com.example.demo.entity.Category;
import com.example.demo.repository.CategoryRepository;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {
    private final CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public Iterable<Category> findALl() {
        return categoryRepository.findAll();
    }
}
