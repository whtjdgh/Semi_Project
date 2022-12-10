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
    <script defer src="<c:url value='/js/h_f.js'/>"></script>
    <script defer src="<c:url value='/js/header_search.js'/>"></script>
    <script defer src="<c:url value='/js/register.js'/>"></script>
    <link rel="stylesheet" href="<c:url value='/css/egan_header.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/h_f_r.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/header_search.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/calendar.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/register.css'/>">


</head>

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

        <div class="logo"><a href="http://localhost:8080/egan/main">Egan</a></div>

        <div class="nav">
            <a href="http://localhost:8080/egan/detail">SHOP</a>
            <a href="http://localhost:8080/egan/brand">BRAND</a>
            <a href="http://localhost:8080/egan/main">COMMUNITY</a>
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
                                <button type="button" id="id_chk" name="id_chk" onclick="idChk()">중복확인</button>
                            </td>
                        </tr>
                        <tr>
                            <td class="reg_txt"><span class="redStar">*</span>이름</td>
                            <td class="reg_input">
                                <input type="text" value="" class="reg_input_txt" id="register_name" name="register_name" placeholder="이름을 입력하세요.">
                            </td>
                        </tr>
                        <tr>
                            <td class="reg_txt"><span class="redStar">*</span>닉네임</td>
                            <td class="reg_input">
                                <input type="text" value="" class="reg_input_txt" id="register_nick" name="register_nick" placeholder="닉네임을 입력하세요.">
                            </td>
                        </tr>
                        <tr>
                            <td class="reg_txt"><span class="redStar">*</span>비밀번호</td>
                            <td class="reg_input">
                                <input type="password" class="reg_input_txt" id="register_pw" name="register_pw" placeholder="비밀번호를 입력하세요.">
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
                                <button type="button" id="email_chk" name="email_chk" onclick="emailChk()">중복확인</button>
                            </td>
                        </tr>
                        <tr>
                            <td class="reg_txt"><span class="redStar">*</span>휴대폰</td>
                            <td class="reg_input">
                                <input type="text" class="reg_input_txt" id="register_phone_number" name="register_phone_number" placeholder="숫자만 입력하세요.">
                                <button type="button" id="number_chk" name="number_chk" disabled>인증번호 받기</button>
                            </td>
                        </tr>
                        <tr>
                            <td class="reg_txt"><span class="redStar">*</span>주소</td>
                            <td class="reg_input">
                                <input type="text" id="address" placeholder="주소">
                                <input type="text" id="postcode" placeholder="우편번호">
                                <input type="button" id="address_btn" onclick="sample5_execDaumPostcode()" value="주소 검색" ><br>
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
<script>

    let id = document.getElementById('register_id');
    let pw = document.getElementById('register_pw');
    let pw_chk = document.getElementById('register_pw_chk');
    let email = document.getElementById('register_email');
    let number = document.getElementById('register_phone_number');
    let birth = document.getElementById('from_date');
    let msg = document.getElementsByClassName('msg');

        //회원가입버튼 로직
        $(document).ready(function() {
        $("#register_btn").click(function() {

            if(id.value.trim().length < 4 || id.value.trim().length > 12) {
                alert("아이디는 4글자 이상 또는 12글자 이하로 입력하세요")
                id.focus();
                return false;
            }
            //비번 체크
            if(pw.value.trim() == "" || pw.value.trim() == undefined) {
                alert("비밀번호를 입력하세요")
                return false;
            }
            if(pw.value.trim().length < 4 || pw.value.trim().length > 12) {
                alert("비밀번호는 4글자 이상 또는 12글자 이하로 입력하세요")
                pw.focus();
                return false;
            }
            // 비밀번호 확인
            if(pw.value.trim() != pw_chk.value.trim()) {
                alert("비밀번호가 같지 않습니다.")
                pw_chk.focus();
                return false;
            }

            // 전화번호 확인
            // 공백확인
            if(number.value.trim() == "" || number.value.trim() == undefined) {
                alert("전화번호를 입력하세요.")
                return false;
            }
            if(number.value.trim().length != 11) {
                alert("전화번호는 11글자로 입력하세요")
                return false;
            }
            if(isNaN(number.value.trim())) {
                alert("전화번호는 숫자만 입력하세요.")
                return false;
            }
            // 생년월일 확인
            if(birth.value == "" || birth.value == undefined) {
                alert("생년월일을 입력하세요")
                return false;
            }


            let form = {
                m_id: $("#register_id").val(),
                m_pwd: $("#register_pw").val(),
                m_name: $("#register_name").val(),
                m_nickName: $("#register_nick").val(),
                m_email: $("#register_email").val(),
                m_phone: $("#register_phone_number").val(),
                m_birth: $("#from_date").val()
            };

            $.ajax({
                url: '/egan/insertlogin',
                type: 'POST',
                data: form,
                success: function(data){
                    if(data = true){
                        window.location.href = "/egan/login";
                    }else if(date = false){

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



        let id2 = document.getElementById('register_id');
        let email2 = document.getElementById('register_email');

        //아이디 중복확인
        function idChk(){
        //빈값 확인
        if(id2.value == "" || id2.value == undefined) {
        alert("아이디를 입력하세요")
        id2.focus();
        return false;
    }
        let m_id = $('#register_id').val();

        console.log(m_id);
        //아이디 중복확인 로직
        $.ajax({
        url:'/egan/check_m_id.do', //Controller에서 요청 받을 주소
        type:'POST', //POST 방식으로 전달
        data : {m_id: m_id},
        success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다
        if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디
        alert("사용 가능한 아이디입니다.")
        id2.focus();
    } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
        $('#register_id').val('');
        alert("중복된 아이디 입니다.")
        id2.focus();
    }
    },
        error:function(){
        alert("에러입니다");
    }
    });
    };


        //이메일 중복확인
        function emailChk(){
            if(email2.value.trim() == "" || email2.value.trim() == undefined) {
                alert("이메일을 입력해주세요.")
                email2.focus();
                return false;
            }
            if(email2.value.indexOf("@") == -1) {
                alert("이메일 형식대로 입력하세요")
                return false;
            }

        let m_email = $('#register_email').val();

        console.log(m_email);

        $.ajax({
        url:'/egan/check_m_email.do', //Controller에서 요청 받을 주소
        type:'POST', //POST 방식으로 전달
        data : {m_email: m_email},
        success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다
        if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디
        alert("사용 가능한 메일입니다.")
        email2.focus();
    } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
        $('#register_email').val('');
        alert("중복된 메일 입니다.")
        email2.focus();
    }
    },
        error:function(){
        alert("에러입니다");
    }
    });
    };
</script>
<!-- 탑 버튼 -->
<div class="top_btn"><a href="#">TOP</a></div>
<%--<div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>--%>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("address").value = addr;
                document.getElementById('postcode').value = data.zonecode;
            }
        }).open();
    }
</script>
</body>

</html>