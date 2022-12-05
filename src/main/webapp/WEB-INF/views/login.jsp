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
</head>
<body>
<form action="#">
    <div class="wrap">
        <div class="login_text">로그인</div>
        <input type="text" class="id" placeholder="아이디를 입력 해주세요.">
        <input type="text" class="pw" placeholder="비밀번호를 입력 해주세요.">
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
        <input type="submit" class= "login"value="로그인">
        <input type="submit" class= "join"value="회원가입">
    </div>
</form>
</body>
</html>