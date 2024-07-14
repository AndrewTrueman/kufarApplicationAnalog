package com.candy.kufarAnalog.model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Product {
    private Long id;
    private String name;
    private String description;
    private double price;
    private String location;
    private String seller;
}