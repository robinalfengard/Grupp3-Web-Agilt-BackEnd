package com.example.demo.service;

import com.example.demo.entity.Size;
import com.example.demo.repository.SizeRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SizeService {

    private final SizeRepository sizeRepository;

    public SizeService(SizeRepository sizeRepository) {
        this.sizeRepository = sizeRepository;
    }

    public List<Size> getDefaultSizes() {
        return sizeRepository.getDefaultSizes();
    }
}
