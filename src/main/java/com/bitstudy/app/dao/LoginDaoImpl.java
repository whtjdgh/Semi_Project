package com.bitstudy.app.dao;


import com.bitstudy.app.domain.LoginDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;

@Repository // 현재 클래스를 dao bean으로 등록
public class LoginDaoImpl implements LoginDao {

    @Inject
    SqlSession sqlSession; // SqlSession 의존관계 주입

    @Override
    public String loginCheck(LoginDto dto) {
        return sqlSession.selectOne("member.login_check", dto);
    }

    @Override
    public void insertlogin(LoginDto dto) throws Exception{
        sqlSession.insert("member.insertlogin", dto);
    }

    @Override
    public int check_m_id(String m_id) {
        return sqlSession.selectOne("member.check_m_id", m_id);
    }

    @Override
    public int check_m_email(String m_email) {
        return sqlSession.selectOne("member.check_m_email",  m_email);
    }


}