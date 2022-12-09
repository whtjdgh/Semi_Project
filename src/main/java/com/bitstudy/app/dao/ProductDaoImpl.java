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
}
