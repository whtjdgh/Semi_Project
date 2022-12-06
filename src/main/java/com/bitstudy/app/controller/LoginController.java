package com.bitstudy.app.controller;

import com.bitstudy.app.dao.LoginDao;
import com.bitstudy.app.domain.LoginDto;
import com.bitstudy.app.service.LoginService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;

@Controller
@RequestMapping
public class LoginController {
    @Autowired
    private SqlSession sqlSession;
    @Inject
    private LoginService loginService;

    //회원가입화면
    @RequestMapping (value = "/real_register", method = RequestMethod.GET)
    public String signup(Locale locale, Model model, HttpServletRequest request) {
        return "real_register";
    }


    @RequestMapping(value = "/insertlogin", method = RequestMethod.POST)
    public String postRegister(LoginDto dto) throws Exception {

        loginService.insertlogin(dto);
        System.out.println("m_id="+dto.getM_id());
        return "real_register";
    }

    //로그인화면
    @RequestMapping (value = "/login", method = RequestMethod.GET)
    public String login(Locale locale, Model model,HttpServletRequest request) {

        return "login";
    }

    //로그인 로직

    @RequestMapping("login_check.do")
    public ModelAndView login_check(@ModelAttribute LoginDto dto, HttpSession session) {
        String name = loginService.loginCheck(dto, session);
        ModelAndView mav = new ModelAndView();
        if (name != null) { // 로그인 성공 시
            mav.setViewName("main"); // 뷰의 이름
        } else { // 로그인 실패 시
            mav.setViewName("egan/login");
            mav.addObject("message", "error");
        }
        return mav;
    }

}

