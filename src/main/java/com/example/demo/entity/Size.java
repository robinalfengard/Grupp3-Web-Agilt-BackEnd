package com.example.demo.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.stereotype.Controller;

import java.util.List;

@Data
@Entity
public class Size {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    // Should be setup in the database (S, M , L, XL, XXL)
    private String name;


}
