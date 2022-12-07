package com.bitstudy.app.service;


import com.bitstudy.app.dao.LoginDao;
import com.bitstudy.app.domain.LoginDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

@Service // service bean으로 등록
public class LoginServiceImpl implements LoginService {

    @Inject
    LoginDao loginDao;

    @Override
    public String loginCheck(LoginDto dto, HttpSession session) {
        String name = loginDao.loginCheck(dto);
        if (name != null) { // 세션 변수 저장
            session.setAttribute("userid", dto.getM_id());
            session.setAttribute("name", dto.getM_name());
        }
        return name;
    }

    @Override
    public void insertlogin(LoginDto dto) throws  Exception{
        loginDao.insertlogin(dto);
    }


    @Override
    public void logout(HttpSession session) {
        session.invalidate(); // 세션 초기화
    }

    @Override
    public int check_m_id(String m_id) {
        int cnt = loginDao.check_m_id(m_id);
        System.out.println("cnt: " + cnt);
        return cnt;
    }

    @Override
    public int check_m_email(String m_email) {
        int cnt = loginDao.check_m_email(m_email);
        System.out.println("cnt: " + cnt);
        return cnt;
    }

}
