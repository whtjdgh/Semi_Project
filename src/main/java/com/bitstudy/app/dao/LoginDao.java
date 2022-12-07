package com.bitstudy.app.dao;

import com.bitstudy.app.domain.LoginDto;

public interface LoginDao {
    public String loginCheck(LoginDto dto);

    public void insertlogin(LoginDto dto) throws Exception;


    // 아이디 중복검사
    public int check_m_id(String m_id);

    public int check_m_email(String m_email);


}
