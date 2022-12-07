package com.bitstudy.app.service;


import com.bitstudy.app.domain.LoginDto;

import javax.servlet.http.HttpSession;

public interface LoginService {
    public String loginCheck(LoginDto dto, HttpSession session);

    public void insertlogin(LoginDto dto) throws  Exception;

    public void logout(HttpSession session);

    public int check_m_id(String m_id);

    public int check_m_email(String m_email);
}