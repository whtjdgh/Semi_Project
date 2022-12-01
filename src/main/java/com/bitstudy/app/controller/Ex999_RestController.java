package com.bitstudy.app.controller;

/*
*  = ajax 연습 =
*   ajax 사용시 라이브러리 다운받아야 함
*   1) MVN repo
*   2) Jackson Databind 검색
*   3) 최신버전 긁어와서
*   4) pom.xml 업데이트
*
* - @ResponseBody , @RequestBody
*   스프링에서 비동기 처리를 하는 경우에 필요한 어노테이션
* 클라이언트에서 서버로 통신하는 메세지를 request, 서버에서 클라이언트한테 보내는메세지를 response 라고 함.
* 비동기 통신시 사용자가 요청을 보낼때 body 에 데이터를 담아서 보냄.
* 서버에서 돌려줄때도 body에 데이터를 담아서 보냄.
* 이걸 RequestBody, ResponseBody 라고 한다.
* 이때 body에 데이터를 주고 받는 형태를 json 이라고 한다.
*
*
* */

import com.bitstudy.app.domain.Person;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Ex999_RestController {

    @GetMapping("/ajax")
    public String ajax() {
        return "ajax";
    }

    @PostMapping("/send")
    @ResponseBody /* 서버에서 자바 객체를 보낼건데, 사용자한테 도착하면 문자열로 바꿔서보세요~  */
    public Person test(@RequestBody Person p) { /* person 데이터를 문자열로 보낼건데, 서버 도착하면 자바객체로 변환해서 보세요~*/
        System.out.println("p= " + p);
        p.setName("홍길동");
        p.setAge(p.getAge()+ 100);

        return p;
    }
}
