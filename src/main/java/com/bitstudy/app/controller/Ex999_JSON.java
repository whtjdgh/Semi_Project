package com.bitstudy.app.controller;

/*
1. JSON 이란
    Ajax나 REST API 를 사용하기 위해서 별도의 표기법이 필요하다. 그게 JSON(JavaScript Object Notation) 자바스크립트 객체 표기법

    JSON 방식: {속성명1:속성명1, 속성명2:속성명2 ...} 이런식으로...
             여러개 정보 전달하려면 배열처럼 넣으면 된다.
         1) 객체 배열 : [{속성명1:속성명1, 속성명2:속성명2 ...}, {속성명1:속성명1, 속성명2:속성명2 ...}] (theComma때 봤음)
         2) map 의 경우 { 키:{속성명1:속성명1, 속성명2:속성명2 ...}, 키:{속성명1:속성명1, 속성명2:속성명2 ...}..}
        
2. json으로 서버와 데이터 주고받는 방법
    직렬화: json 방식으로 JS객체를 서버에 전송할때
           사용법 - JSON.stringify()
           JS객체를 문자열로 변환
           객체가 전송될때 메모리 한칸씩 (변수처럼) 별도로 나눠지면서 저장되는데, 서버로 전송하기 위해서 문자열 한줄로 변환한다.
           {속성명1:속성명1, 속성명2:속성명2 ...} => '{"속성명1":"속성명1", "속성명2":"속성명2" ...}'

    역질렬화: 서버에서 보낸 데이터를 받을때(JS객체로 변환 필요)
            '{"속성명1":"속성명1", "속성명2":"속성명2" ...}'  =>  {속성명1:속성명1, 속성명2:속성명2 ...}

3. Ajax: 비동기 방식으로 데이터를 주고 받는 기술
           Asynchronous Javascript and XML
           이름은 XML 이긴 하지만 요즘은 다 JSON으로 대신한다.
           웹페이지 전체(DATA + UI) 를 건드리지 않고 일부분(DATA) 부분만 업데이트 가능


4. REST란
    리소스 중심으로 API 디자인 - HTTP 메서드로 수행할 작업을 정의한거임.
                            ex) GET, POST
                                PUT - 수정
                                PATCH - 수정
                                DELETE - 삭제
    일반 URI => /comment/read?cno=번호
               /comment/write
               /comment/read
               /comment/delete
    
    Restful 방식 => /comments         GET  모든 댓글 다 불러오기
                   /comment/{번호}    GET  지정된 번호의 댓글 불러오기
                   /comments         POST 작성된 댓글 저장
                   /comment/{번호}    DELETE | 지정된 번호 댓글 삭제
                   /comment/{번호}    PUT/PATCH | 지정된 번호 댓글 수정
                   
    
                                 
* */

public class Ex999_JSON {
    
}
