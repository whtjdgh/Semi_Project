package com.bitstudy.app.dao;

import com.bitstudy.app.domain.Ex02_BoardDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/* Dao: DB 건드리는 객체
        bean에 등록 (@Repository 또는 @Component)
*
* 1) BoardDao 만들고
* 2) interface화 하기
* 3) TDD 만들어서 mapper 랑 같이 동작하는지 보고 나중에 제대로 BoardDao 만들거임
* */
@Repository
public class Ex01_BoardDaoImpl implements Ex01_BoardDao {
    @Autowired
    SqlSession session;

    // boardMapper 와 namespace 일치시키기
    String namespace = "com.bitstudy.app.dao.BoardMapper.";

    @Override
    public Ex02_BoardDto select(int bno) {
        return session.selectOne(namespace+"select", bno);
    }

}
