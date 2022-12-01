package com.bitstudy.app.controller;

import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.UserDto;
import com.bitstudy.app.domain.UserLoginDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.URLEncoder;


@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    UserDao userDao;

    /* 이 맵핑은 주소창에 /login/login 이라고 하면 그냥 로그인 페이지 나오게 하는 용도 */
    @GetMapping("/login")
    public String loginForm() {
        System.out.println("여기는 기본 로그인 화면");
        return "loginForm";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        
        /* 1. 세션 종료 */
        session.invalidate();

        /* 2. 메인화면으로 이동 */
        return "redirect:/";
    }

    @PostMapping("/login")
//    public String login(String id, String pw, boolean rememberId,
//                        HttpServletRequest request,
//                        HttpServletResponse response) throws Exception {

    public String login(UserLoginDto userLogin,
                        HttpServletRequest request,
                        HttpServletResponse response) throws Exception {

        String id = userLogin.getId();
        String pw = userLogin.getPw();
        Boolean rememberId = userLogin.isRememberId();

        /* 1. id, pw 확인.  비번이 틀릴때 */
        if(!loginChk(id, pw)) {

            /* 2-1.서버에 정보가 없으면 로그인 화면으로 다시 이동 */
            String msg = URLEncoder.encode("ID 또는 PW 정보가 없습니다.", "utf-8");
            return "redirect:/login/login?msg="+msg;
        }

        /* 2-2. 매칭되는 회원정보가 있으면 메인화면으로 이동
         * 위에 if문 통과한거면 회원 있다는 말이니까 여기서 세션 객체에 불러오기*/
        HttpSession session = request.getSession();

        /* 세션 객체에 id 저장 */
        session.setAttribute("id", id);

        /* 비번이 일치할때 */
        /* 1. 쿠키 생성 - rememberId 값이 true면 쿠키 생성. false면 쿠키 해제 */
        Cookie cookie = new Cookie("id",id);
        if(!rememberId) {
            cookie.setMaxAge(0); // 쿠키 삭제
        }
        response.addCookie(cookie);


        /* 3. 홈으로 이동 */
//		loginForm 에서 넘어온 주소값(toURL) 을 redirect 경로에 넣어준다
//		그냥 넣을순 없고 넘어오는거니까 일단 매개변수에 String toURL 을 넣고 여기서 가져다 쓰자!

// 세션에 curr_url 있으면 거기로 링크 이동시킬거임
        /** String toURL = (String) session.getAttribute("toURL"); */
//		StringBuffer 를 String 으로 형변환 해야 하는데, 위 방식으로는 할 수 없다.
//		그래서 모든 타입을 문자열로 바꿀수 있는 valueOf 메서드로 형변환 한다.
        String toURL = String.valueOf(session.getAttribute("toURL"));
        System.out.println("toURL: "+ toURL);

        toURL= toURL==null || toURL=="null" || toURL.equals("") ? "/": toURL;
        System.out.println("여기: " + toURL);
        /* 콘솔창에 한글 깨져서 나오면 여기 참고 https://goddaehee.tistory.com/247*/
        return "redirect:"+toURL;
    }

    /*요건 id, pw 를 서버에 보내서 정보가 있냐 없냐 판별하는 메서드*/
    private boolean loginChk(String id, String pw) {
        UserDto user = userDao.selectUser(id); // select 해서 회원정보 없으면 null 있으면 정보 들어옴
        if(user==null) return false;
        return user.getPw().equals(pw); // 입력한 비번이랑 서버에 있는 비번이랑 같으면 true

//        return "asdf".equals(id) && "1234".equals(pw);
//        보통 id.equals("asdf") 이런식으로 쓰는데 순서 바꾸면 null 체크 안해도 되는거 아시져??!!!!
    }
}