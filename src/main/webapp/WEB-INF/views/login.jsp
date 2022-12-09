<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value='/css/login.css'/> ">
    <title>Document</title>
     <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script defer src="<c:url value='/js/h_f.js'/>"></script>
    <script defer src="<c:url value='/js/header_search.js'/>"></script>
    <link rel="stylesheet" href="<c:url value='/css/egan_header.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/header_search.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/h_f_r.css'/> ">
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
    
    <body>
<div class="model_background">
    <div class="close" ></div>
    <div class="model_content">
        <div class="search_box search_box2">
            <input type="text" placeholder="검색" class="txt_search">
            <a href="">
                <div class="icon"></div>
            </a>
        </div>
    </div>
</div>

<!-- 헤더 -->
<div class="header">
    <div class="content_area">
        <!-- 햄버거 버튼 -->
        <div class="ham_box">
            <div class="ham_line" id="line_top"></div>
            <div class="ham_line" id="line_mid"></div>
            <div class="ham_line" id="line_bot"></div>
            <div class="ham_menu">
                <ul class="ham_ul">
                    <li><a href="#">Login</a></li>
                    <li><a href="#">Register</a></li>
                    <li class="hr"></li>
                    <li><a href="#">SHOP</a></li>
                    <li><a href="#">BRAND</a></li>
                    <li><a href="#">COMMUNITY</a></li>

                </ul>
            </div>
        </div>

        <div class="logo">
            <a href="http://localhost:8080/egan/main">Egan</a>
        </div>

        <div class="nav">
            <a href="http://localhost:8080/egan/detail">SHOP</a>
            <a href="http://localhost:8080/egan/brand">BRAND</a>
            <a href="">COMMUNITY</a>
        </div>

        <div class="menu">
            <div class="h_menu">
          <a href="http://localhost:8080/egan/login">Login</a>
          <a href="http://localhost:8080/egan/real_register">Register</a>
            </div>
            <div class="h_icon">
                <div class="shopping"></div>
                <div class="search"></div>
            </div>
        </div>

    </div>
</div>
    
    
    
    
    
<div class="wrap">
    <div class="login_text">로그인</div>
    <input type="text" id="m_id" class="id" placeholder="아이디를 입력 해주세요.">
    <input type="text" id="m_pwd" class="pw" placeholder="비밀번호를 입력 해주세요.">
    <ul class="find_wrap">
        <li class="remember">
            <input type="checkbox" id="keep">
            <label for="keep">로그인 상태 유지</label>
        </li>
        <li class="find_info">
            <a href="#" class="find_id">아이디 찾기</a>
            <a href="#" class="find_pw">비밀번호 찾기</a>
        </li>
    </ul>
    <input type="submit" id="login" class= "login"value="로그인" onsubmit="return login_chk(this)">
    <input type="submit" class= "join"value="회원가입">
</div>

        
        <div class="footer">
    <div class="content_area">

        <div class="f_txt1">
            <div class="f_h_box">
                <p class="f_h_txt f_h_txt1">1:1상담하기<span> | Q & A 바로가기</span></p>
                <p class="f_h_txt">MON-FRI | AM 10:00 ~ PM 05:00</p>
                <p class="f_h_txt">(SAT. SUN. HOLIDAY CLOSED)</p>
            </div>
            <div class="f_b_box">
                <p class="f_b_txt f_h_txt1">해외 제휴 / 수출 문의</p>
                <p class="f_b_txt">khedu123@naver.con</p>
            </div>
        </div>

        <div class="f_txt2">
            <div class="f_h_box">
                <p class="f_h_txt f_h_txt1">BANK INFO</p>
                <p class="f_h_txt">농협 123345-14-259372</p>
                <p class="f_h_txt">예금주 : EGAN</p>
            </div>
        </div>


        <div class="f_txt3">
            <div class="f_h_box">
                <p class="f_h_txt f_h_txt1">COMPANY INFO</p>
                <p class="f_h_txt">회사명 : EGAN | 대표 : 홍길동 | 개인정보관리책임자 : 홍길동</p>
                <p class="f_h_txt">사업자등록번호 : 123-00-00321 | 통신판매업신고 : 제 2022-경기남양-1204호</p>
            </div>
            <div class="f_b_box w_box">
                <p class="f_b_txt">COPYRIGHT @ EGAN . ALL RIGHTS</p>
            </div>
        </div>


    </div>
</div>

<script>
    $(document).ready(function() {
        $("#login").click(function() {


            let form = {
                m_id: $("#m_id").val(),
                m_pwd: $("#m_pwd").val()
            };
            console.log(form);
            $.ajax({
                url: '/egan/login_check.do',
                type: 'POST',
                data: form,
                success: function(data){
                    if(data = true){
                        window.location.href = "/egan/main";
                    }else if(date = false){
                        alert("로그인 실패");
                    }


                },
                error: function(jqXHR, textStatus, errorThrown){
                    console.log(jqXHR);
                    console.log(textStatus);
                    console.log(errorThrown);
                    console.log("111");
                    alert("아이디와 비밀번호를 확인해주세요.");
                }
            });

        });
    });
</script>
</body>
</html>
