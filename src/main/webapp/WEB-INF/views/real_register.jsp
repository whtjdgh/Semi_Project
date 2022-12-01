<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Egan_회원가입</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script defer src="../js/h_f.js"></script>
    <script defer src="../js/register.js"></script>
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/common_css/h_f.css">
    <link rel="stylesheet" href="../css/common_css/h_f_r.css">
    <link rel="stylesheet" href="../css/calendar.css">
    <link rel="stylesheet" href="../css/register.css">


</head>

<body>
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

        <div class="logo"><a href="#">Egan</a></div>

        <div class="nav">
            <a href="#">SHOP</a>
            <a href="#">BRAND</a>
            <a href="#">COMMUNITY</a>
        </div>

        <div class="menu">
            <div class="h_menu">
                <a href="">Login</a>
                <a href="">Register</a>
            </div>
            <div class="h_icon">
                <div class="shopping"></div>
                <div class="search"></div>
            </div>
        </div>

    </div>
</div>
<!-- 본문 -->
<div id="wrap">
    <div class="main">
        <div class="register_main">
            <div class="register_title">
                <p class="reg_title">회원가입</p>
                <p><span class="redStar">*</span>필수입력사항</p>
            </div>
            <div class="registerForm">
                <form action="" id="reg_form" name="myform" method="">
                    <table class="rgs_tb">
                        <tbody>
                        <tr>
                            <td class="reg_txt"><span class="redStar">*</span>아이디</td>
                            <td class="reg_input">
                                <input type="text" value="" class="reg_input_txt" id="register_id" name="register_id" placeholder="아이디를 입력하세요.">
                                <button id="id_chk" name="id_chk" onclick="idChk()">중복확인</button>
                                <div class="msg id_msg"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="reg_txt"><span class="redStar">*</span>비밀번호</td>
                            <td class="reg_input">
                                <input type="password" class="reg_input_txt" id="register_pw" name="register_pw" placeholder="비밀번호를 입력하세요.">
                                <div class="msg id_msg"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="reg_txt"><span class="redStar">*</span>비밀번호 확인</td>
                            <td class="reg_input">
                                <input type="password" class="reg_input_txt" id="register_pw_chk" name="register_pw_chk" placeholder="비밀번호를 한번 더 입력하세요.">
                            </td>
                        </tr>
                        <tr>
                            <td class="reg_txt"><span class="redStar">*</span>이메일</td>
                            <td class="reg_input">
                                <input type="email" class="reg_input_txt" id="register_email" name="register_email" placeholder="이메일을 입력하세요.">
                                <button id="email_chk" name="email_chk">중복확인</button>
                            </td>
                        </tr>
                        <tr>
                            <td class="reg_txt"><span class="redStar">*</span>휴대폰</td>
                            <td class="reg_input">
                                <input type="text" class="reg_input_txt" id="register_phone_number" name="register_phone_number" placeholder="숫자만 입력하세요.">
                                <button id="number_chk" name="number_chk">인증번호 받기</button>
                            </td>
                        </tr>
                        <tr>
                            <td class="reg_txt"><span class="redStar">*</span>주소</td>
                            <td class="reg_input">
                                <button id="address_search" name="adress_search">주소검색</button>
                            </td>
                        </tr>
                        <tr>
                            <td class="reg_txt">성별</td>
                            <td class="reg_input">
                                <input type="radio" name="gender" value="gender_woman" id="gender_woman">
                                <label for="gender_woman">여자</label>
                                <input type="radio" name="gender" value="gender_man" id="gender_man">
                                <label for="gender_man">남자</label>
                                <input type="radio" name="gender" value="gender_nothing" id="gender_nothing" checked>
                                <label for="gender_nothing">선택안함</label>
                            </td>
                        </tr>
                        <tr>
                            <td class="reg_txt">생년월일</td>
                            <td class="reg_input">
                                <input type="text" id="from_date" class="date_pick" name="birth_date" readonly>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <input type="submit" id="register_btn" name="register_btn"  value="회원가입" onclick="return formChk()">
                </form>
            </div>
        </div>
    </div>
</div>
<!-- footer -->
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

<!-- 탑 버튼 -->
<div class="top_btn"><a href="#">TOP</a></div>
</body>

</html>