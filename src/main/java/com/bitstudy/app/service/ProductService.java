package com.bitstudy.app.service;

import com.bitstudy.app.domain.ProductDto;

import java.util.List;

public interface ProductService {
    List<ProductDto> listProduct();

    public  ProductDto selectProduct(int p_index);

    List<ProductDto> listProduct_opt(int cate_value);
}
