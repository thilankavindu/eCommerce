package com.example.ecommercee.dto;

public class ProductDTO {

    private int id;

    private String name;

    private String imageUrl;

    private double price;

    private String category;


    private String description;

    // Constructors
    public void Product() {}

    public void Product(String name, String imageUrl, double price, String category, String description) {
        this.name = name;
        this.imageUrl = imageUrl;
        this.price = price;
        this.category = category;
        this.description = description;
    }

    // Getter and Setter methods
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}