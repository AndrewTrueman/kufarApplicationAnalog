package com.candy.kufarAnalog.service;

import com.candy.kufarAnalog.model.Image;
import com.candy.kufarAnalog.model.Product;
import com.candy.kufarAnalog.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;

    public List<Product> listAllProducts(String name) {
        if (name != null && !name.isEmpty()) {
            return productRepository.findByName(name);
        }
        return productRepository.findAll();
    }

    public void saveProduct(Product product, MultipartFile file1, MultipartFile file2, MultipartFile file3, MultipartFile file4) throws IOException {
        Image image1;
        Image image2;
        Image image3;
        Image image4;
        if (file1.getSize() != 0) {
            image1 = toImageEntity(file1);
            image1.setPreviewImage(true);
            product.addImageToProduct(image1);
            // можно добавить сжатие
        }
        if (file2.getSize() != 0) {
            image2 = toImageEntity(file2);
            product.addImageToProduct(image2);
        }
        if (file3.getSize() != 0) {
            image3 = toImageEntity(file3);
            product.addImageToProduct(image3);
        }
        if (file4.getSize() != 0) {
            image4 = toImageEntity(file4);
            product.addImageToProduct(image4);
        }
        log.info("Saving new product. Name -  {}; Seller  = {};", product.getName(), product.getSeller());
        Product productFromDB = productRepository.save(product);
        productFromDB.setPreviewImageId(productFromDB.getImages().getFirst().getId());
        productRepository.save(product);
    }


    private void addImage() {
        //todo заменить в методе выше дупликацию кода в этот метод и использовать его
    }


    private Image toImageEntity(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setName(file.getName());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setImageData(file.getBytes());
        image.setOriginalFileName(file.getOriginalFilename());
        return image;
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }
}
