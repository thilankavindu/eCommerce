package com.example.ecommercee.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false)
    private int id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String imageUrl;

    @Column(nullable = false)
    private double price;

    private int qty;

   private String category;

    @Column(nullable = false)
    private String description;


    @OneToMany(mappedBy = "product" , cascade = CascadeType.ALL ,fetch = FetchType.EAGER)
    private List<OrderDetail> orderDetail;

    public Product(String name, String imageUrl, double price, String category, String description) {
    }
}
