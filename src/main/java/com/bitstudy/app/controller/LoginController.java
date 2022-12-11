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

    //회원가입 로직
    @RequestMapping(value = "/insertlogin", method = RequestMethod.POST)
    public String postRegister(LoginDto dto) throws Exception {

        loginService.insertlogin(dto);
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
        String name1 = loginService.loginCheck(dto, session);
        String name2 = loginService.loginCheck(dto, session);

        session.setAttribute("m_id", name);
        session.setAttribute("m_index", name1);
        session.setAttribute("m_name", name2);


        ModelAndView mav = new ModelAndView();

        if (name != null) { // 로그인 성공 시
            mav.setViewName("main"); // 뷰의 이름
        } else { // 로그인 실패 시
            mav.setViewName("egan/login");
            mav.addObject("message", "error");
        }
        return mav;
    }

    //로그아웃 로직
    @RequestMapping("logout.do")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:main";
    }

    // 회원가입 아이디 중복확인
    @ResponseBody
    @RequestMapping(value = "check_m_id.do")
    public int check_m_id(@RequestParam("m_id") String m_id) {

        System.out.println("m_id="+m_id);
        System.out.println("m_id="+m_id);
        int cnt = loginService.check_m_id(m_id);

        System.out.println(cnt);

        return cnt;
    }

    @ResponseBody
    @RequestMapping(value = "check_m_email.do")
    public int check_m_email(@RequestParam("m_email") String m_email) {
        System.out.println("m_email="+m_email);
        int cnt = loginService.check_m_email(m_email);
        System.out.println(cnt);

        return cnt;
    }

}

