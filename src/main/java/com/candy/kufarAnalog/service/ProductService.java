package com.candy.kufarAnalog.service;

import com.candy.kufarAnalog.model.Product;
import lombok.Getter;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private long ID = 0;
    @Getter
    private final List<Product> products = new ArrayList<>();

    {
        products.add(new Product(++ID, "Iphone", "15 iphone", 2500, "Grodno", "Andrew"));
        products.add(new Product(++ID, "Iphone", "12 iphone", 2100, "Grodno", "Andrew"));
        products.add(new Product(++ID, "Iphone", "13 iphone", 2200, "Grodno", "Andrew"));
    }

    public void saveProduct(Product product) {
        product.setId(++ID);
        products.add(product);
    }

    public void deleteProduct(Long id) {
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductById(Long id) {
        for (Product product : products) {
            if (product.getId().equals(id)) return product;
        }
        return null;
    }
}
