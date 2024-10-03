package com.example.demo.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDate;
import java.util.Date;

@Entity
@Data
public class SoldProduct {

    public SoldProduct(User user, Product product, LocalDate dateWhenSold){
        this.user = user;
        this.product = product;
        this.dateWhenSold = dateWhenSold;
    }

    public SoldProduct() {

    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "product_id", referencedColumnName = "id")
    private Product product;

    @Column(name = "date_when_sold")
    private LocalDate dateWhenSold;


}
