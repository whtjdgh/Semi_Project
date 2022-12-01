package com.bitstudy.app.controller;


import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.net.URLEncoder;

/** - 할거 -
 * 1. '로그인_form' 화면 만들어서 연결
 * 2. '로그인 컨트롤러' 만들기
 * 3. UserValidator 클래스 만들기
 *
 * 1) MVN repo 에서 'validation' 검색 (@Valid 어노테이션 사용하려면 필요함)
 * 2) 'Bean Validation API' 선택 => '2.0.1.Final' 선택
 * 3) pom.xml 에 붙여넣기
 * */
/* 중요: 굉장히 어려운거임. 할거 다 하고 하기
*  외부파일로 에러코드를 만들어서 알맞는 메세지를 가져오는 예제
*   참고: https://midas123.tistory.com/187
*  - 순서 -
* 1) MessageSource 를 스프링 설정(servlet-context.xml)에 등록한다.
* 2) registerForm.jsp (회원가입 폰) 에 form 태글를 jstl form 으로 변경한다.
* 3) webapp > resuources > error_message.properties 파일을 만들고 에러코드와 메세지를 입력한다.
* 4) Ex10_3_UserValidator.java 파일에서 에러코드를 날린다.
* */
@Controller
@RequestMapping("/register")
public class RegisterController {
    @Autowired
    UserDao userDao;

    /* InitBinder - 해당 Controller로 들어오는 요청에 대해 추가적인 설정을 하고 싶을 때 사용할 수 있다.
     * 중요: WebDataBinder (참고: https://byungmin.tistory.com/68)
     *           바인딩이란 프로퍼티 값을 타겟 객체에 동적으로 설정해주는걸 말한다. (DS가 뿌려주는역할이라고 보면 됨)
     *           브라우저를 통해서 요청받은 값이 실제 서버의 객체에 바인딩 될 때 중간 역할을 한다.
     *           크게 두 가지 작업을 진행한다.
     *           먼저 타입 변환을 해주고 그 후 데이터 검증을 실시 한다.
     *           변환 결과나 에러는 BindingResult에 저장한다.*/
//    여기다 @InitBinder 넣으면 이 컨트롤러에서만 가능하다. 모든 컨트롤러에서 하려면 WebBindingInitializer 같은걸 써야 하는데 그건 나중에..
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        /* 이부분은 날짜 형식을 지정해주는것 */
//		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
//		binder.registerCustomEditor(Date.class, new CustomDateEditor(df, false));// false는 빈값을 허용할거냐 안할거냐
//        binder.setValidator(new Ex10_3_UserValidator());
    }

        @GetMapping("/add")
//    @RequestMapping("/add")
    public String register() {
        return "registerForm"; /* WEB-INF/views/회원가입.jsp */
    }


    /** - @Valid -
     *      @Valid는 데이터 검증시 사용된다.
     *      @Valid는 객체에 들어가는 값을 검증해주는 어노테이션이다
     *      유효한 값 검증은 소스코드 여러군데서 이루어지기 때문에 불필요한 중복코드가 늘어나고 복잡하다. */

    /** BindingResult - (참고: https://bbiyakbbiyak.tistory.com/3)
     *      org.springFramework.validation.BindingResult
     *      Errors의 하위 인터페이스로서 폼 값을 커맨드 객체에 바인딩한 결과를 저장하고 에러코드로 메세지를 가져온다.
     */

//    @PostMapping("/save")
//    @PostMapping("/add")
    /* 순서 중요: User 다음 BindingResult 써야함. */
    public String save(@Valid UserDto user, BindingResult result, Model m) throws Exception {
        System.out.println("result="+result);
        System.out.println("user = "+user);
        System.out.println("hasErrors = "+result.hasErrors());

//        Ex10_4_UserValidator userValidator = new Ex10_4_UserValidator();
//        userValidator.validate(user, result);

        // User객체를 검증한 결과 에러가 있으면, registerForm을 이용해서 에러를 보여줘야 함.
        if(!result.hasErrors()) { // 에러가 나면 true, 안나면 false 나옴

            UserDto userInDB = userDao.selectUser(user.getId());

            if(userInDB.getId() == null) {
                // 2. DB에 신규회원 정보를 저장
                int rowCnt = userDao.insertUser(user);

                if(rowCnt!=0) {
                    return "registerInfo";
                }
            }
        }

        return "registerForm";

    }


    @PostMapping("/add")
    public String save(UserDto user, Model m) throws Exception {

        System.out.println("user="+user);
        System.out.println("isValid="+isValid(user));


//        1. 유효성 검사 - 유효하지 않은 정보가 넘어오면 다시 회원가입 페이지로 돌려보내기
//        1) isValid 메서드 만들기 - isValid 에 마우스올리기 > create method
//        if (!isValid(user)) {
//            String msg = URLEncoder.encode("잘못된 정보를 입력하셨습니다.", "utf-8");
//            // 인코딩은 예외처리 필요함 -> throws Exception
//
//            m.addAttribute("msg", msg);
//            return "forward:/register/add";
//
//        }

        if (isValid(user)) {
            UserDto userInDB = userDao.selectUser(user.getId());

            if(userInDB == null || userInDB.equals("null")) {
                // 2. DB에 신규회원 정보를 저장
                int rowCnt = userDao.insertUser(user);

                if(rowCnt!=0) {
//                    return "redirect:/";
                    return "index";
                }
            }
            else {
                String msg = URLEncoder.encode("사용중인 아이디 입니다.", "utf-8");
//                m.addAttribute("msg", msg);
                return "redirect:/register/add?msg="+msg;
            }
        }
        else {
            String msg = URLEncoder.encode("잘못된 정보를 입력하셨습니다.", "utf-8");
            // 인코딩은 예외처리 필요함 -> throws Exception

//            m.addAttribute("msg", msg);
            return "redirect:/register/add?msg="+msg;
        }

//        return "redirect:/";
        return "index";
    }


    private boolean isValid(UserDto user) {
//        System.out.println("isValid 체크: ");
//        System.out.println(user.getId() +": " + user.getId().getClass().getName());
//        System.out.println(user.getPw() +": " + user.getPw().getClass().getName());
//        System.out.println(user.getName() +": " + user.getName().getClass().getName());
//        System.out.println(user.getBirth() +": " + user.getBirth().getClass().getName());


//        System.out.println(user.getReg_date() +": " + user.getReg_date().getClass().getName());



//        if(user.getId().length() == 0 || user.getId() == null || user.getId() == "null") {}
////		일단 그냥 false 만 반환되게 해서 isValid 동작시키기
////		return false;
//
//        System.out.println("2: " + user);
        return true;
    }

}