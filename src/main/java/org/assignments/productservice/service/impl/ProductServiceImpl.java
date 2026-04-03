package org.assignments.productservice.service.impl;

import org.assignments.productservice.dto.CategoryResponseDTO;
import org.assignments.productservice.dto.ProductDTO;
import org.assignments.productservice.entity.Category;
import org.assignments.productservice.entity.Product;
import org.assignments.productservice.mapper.ProductMapper;
import org.assignments.productservice.repository.ProductRepository;
import org.assignments.productservice.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductRepository productRepository;


    @Override
    public Product addProduct(Product product) {
        return productRepository.save(product);
    }

    @Override
    public Product updateProduct(Long id, Product product) {
        Product existing = productRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Product not found"));

        existing.setName(product.getName());
        existing.setPrice(product.getPrice());
        existing.setDescription(product.getDescription());
        existing.setImage(product.getImage());

        return productRepository.save(existing);
    }

    @Override
    public CategoryResponseDTO getAllProducts() {
        List<Product> products = productRepository.findAll();
        return new CategoryResponseDTO("Core Components", ProductMapper.toDTOList(products));
    }

    @Override
    public Product getProductById(Long id) {
        return productRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Product not found"));
    }

    @Override
    public List<CategoryResponseDTO> getProductsGroupedByCategory() {

        List<Product> products = productRepository.findAllWithCategory();

        // Map<CategoryName, List<ProductDTO>>
        Map<String, List<ProductDTO>> grouped = new HashMap<>();

        for (Product product : products) {
            if (product.getCategory() == null) return null;
            Category category = product.getCategory();
            grouped
                    .computeIfAbsent(category.getCategory_name(), k -> new ArrayList<>())
                    .add(ProductMapper.toDTO(product));
        }

        // Convert Map → List<CategoryResponseDTO>
        return grouped.entrySet()
                .stream()
                .map(entry -> new CategoryResponseDTO(entry.getKey(), entry.getValue()))
                .collect(Collectors.toList());
    }
}
