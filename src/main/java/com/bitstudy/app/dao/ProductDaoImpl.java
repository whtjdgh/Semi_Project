package com.bitstudy.app.dao;

import com.bitstudy.app.domain.ProductDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;


@Repository // 현재 클래스를 dao bean으로 등록
public class ProductDaoImpl implements ProductDao {

    @Inject
    SqlSession sqlSession;

    @Override
    public List<ProductDto> listProduct() {
        return sqlSession.selectList("member.list_product");
    }

    @Override
    public ProductDto selectProduct(int p_index) {
        return sqlSession.selectOne("member.selectProduct", p_index);
    }

    @Override
    public List<ProductDto> listProduct_opt(int cate_value) {
        return sqlSession.selectList("member.listProduct_opt", cate_value);
    }

    @Override
    public List<ProductDto> listProduct_cate(int value) {
        return sqlSession.selectList("member.listProduct_cate", value);
    }

    @Override
    public List<ProductDto> search_product(String keyword){
        return sqlSession.selectList("member.search_product", keyword);
    }


}



