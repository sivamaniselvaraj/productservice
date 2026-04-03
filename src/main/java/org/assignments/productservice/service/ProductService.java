package org.assignments.productservice.service;

import org.assignments.productservice.dto.CategoryResponseDTO;
import org.assignments.productservice.entity.Product;

import java.util.List;

public interface ProductService {
    Product addProduct(Product product);

    Product updateProduct(Long id, Product product);

    CategoryResponseDTO getAllProducts();

    Product getProductById(Long id);
    List<CategoryResponseDTO> getProductsGroupedByCategory();
}
