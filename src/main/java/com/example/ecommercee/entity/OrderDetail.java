package com.example.ecommercee.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.util.List;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
@Table(name = "orderDetail")
public class OrderDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false)
    private int orderDetailId;

    @ManyToOne
    @JoinColumn(nullable = false,name = "productId")
    private Product product;

    @ManyToOne
    @JoinColumn(nullable = false ,name = "orderId")
    private Orders order;

    @Column(nullable = false)
    private double orderPrice;

    @Temporal(TemporalType.DATE)
    private Date date;
}
