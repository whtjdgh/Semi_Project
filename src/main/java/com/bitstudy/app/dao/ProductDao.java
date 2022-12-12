package com.bitstudy.app.dao;

import com.bitstudy.app.domain.LoginDto;
import com.bitstudy.app.domain.ProductDto;

import java.util.List;

public interface ProductDao {

    List<ProductDto> listProduct();

    public ProductDto selectProduct(int p_index);

    List<ProductDto> listProduct_opt(int cate_value);

    List<ProductDto> listProduct_cate(int value);

    List<ProductDto> search_product(String keyword);

    public void insert_review(ProductDto dto) throws Exception;

    List<ProductDto> selectReviewList(int p_index);
}
