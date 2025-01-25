package com.example.ecommercee.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Generated;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.util.List;
import java.util.UUID;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
@Table(name = "orders")
public class Orders {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false)
    private int orderId;

    @Column(nullable = false)
    private String orderType;

    @OneToMany(mappedBy = "order" ,cascade = CascadeType.ALL ,fetch = FetchType.EAGER)
    private List<OrderDetail> orderDetail;

    @Temporal(TemporalType.DATE)
    private Date date;



}
