package com.candy.kufarAnalog.controller;

import com.candy.kufarAnalog.model.Product;
import com.candy.kufarAnalog.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;

    @GetMapping("/")
    public String productList(@RequestParam(name = "name", required = false) String name, Principal principal,  Model model) {
        model.addAttribute("productList", productService.listAllProducts(name));
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "home";
    }

    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Principal principal, Model model) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        model.addAttribute("images", product.getImages());
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "product-info";
    }

    @PostMapping("/product/create")
    public String createProduct(@RequestParam("file1") MultipartFile file1, @RequestParam("file2") MultipartFile file2,
                                @RequestParam("file3") MultipartFile file3,
                                @RequestParam("file4") MultipartFile file4,
                                Product product, Principal principal) throws IOException {
        productService.saveProduct(principal, product, file1, file2, file3, file4);
        return "redirect:/";
    }

    @GetMapping("/product/create")
    public String createProduct( Principal principal,  Model model) throws IOException {
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "product-create";
    }

    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:/";
    }
}
