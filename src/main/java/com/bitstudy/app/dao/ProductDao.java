package com.bitstudy.app.dao;

import com.bitstudy.app.domain.ProductDto;

import java.util.List;

public interface ProductDao {

    List<ProductDto> listProduct();

    public ProductDto selectProduct(int p_index);
}
