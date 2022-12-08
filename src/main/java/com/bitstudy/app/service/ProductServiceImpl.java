package com.bitstudy.app.service;

import com.bitstudy.app.dao.ProductDao;
import com.bitstudy.app.domain.ProductDto;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Inject
    ProductDao productDao;

    @Override
    public List<ProductDto> listProduct() {
        return productDao.listProduct();
    }
}