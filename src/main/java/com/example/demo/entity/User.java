package com.example.demo.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Data
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String city;
    private String address;

    @OneToMany(mappedBy = "user")
    private List<SoldProduct> soldProducts;

    @OneToMany(mappedBy = "user")
    private List<FavoriteItem> favoriteItems;

}
