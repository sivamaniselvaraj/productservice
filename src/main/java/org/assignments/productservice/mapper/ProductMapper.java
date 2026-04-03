package org.assignments.productservice.mapper;

import org.assignments.productservice.dto.ProductDTO;
import org.assignments.productservice.entity.Product;

import java.util.List;
import java.util.stream.Collectors;

public class ProductMapper {

    public static ProductDTO toDTO(Product product) {
        return new ProductDTO(
                product.getId(),
                product.getName(),
                product.getPrice(),
                product.getDescription(),
                product.getImage()
        );
    }

    public static Product toEntity(ProductDTO dto) {
        Product product = new Product();
        product.setId(dto.getId());
        product.setName(dto.getName());
        product.setPrice(dto.getPrice());
        product.setDescription(dto.getDescription());
        product.setImage(dto.getImage());
        return product;
    }

    public static List<ProductDTO> toDTOList(List<Product> products) {
        return products.stream()
                .map(ProductMapper::toDTO)
                .collect(Collectors.toList());
    }
    // 🆕 DTO -> Entity list
    public static List<Product> toEntityList(List<ProductDTO> dtos) {
        return dtos.stream()
                .map(ProductMapper::toEntity)
                .collect(Collectors.toList());
    }
}
