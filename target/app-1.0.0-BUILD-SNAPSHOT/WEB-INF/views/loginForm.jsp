<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.URLDecoder" %>

<%@ page session="false" %> <%-- 이 페이지에서는 세션을 새로 생성 안하겠다는 뜻 --%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <style>
        * { box-sizing:border-box; }
        a { text-decoration: none; }
        form {
            width:400px;
            height:500px;
            display : flex;
            flex-direction: column;
            align-items:center;
            position : absolute;
            top:50%;
            left:50%;
            transform: translate(-50%, -50%) ;
            border: 1px solid rgb(89,117,196);
            border-radius: 10px;
        }
        input[type='text'], input[type='password'] {
            width: 300px;
            height: 40px;
            border : 1px solid rgb(89,117,196);
            border-radius:5px;
            padding: 0 10px;
            margin-bottom: 10px;
        }
        button {
            background-color: #eee8aa;
            color : #333;
            width:300px;
            height:50px;
            font-size: 17px;
            font-weight: 900;
            border : none;
            border-radius: 5px;
            margin : 20px 0 30px 0;
        }
        #title {
            font-size : 50px;
            margin: 40px 0 30px 0;
        }
        #msg {
            height: 30px;
            text-align:center;
            font-size:16px;
            color:red;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<form action="<c:url value='/login/login' />" method="post" onsubmit="return formCheck(this);">
    <h3 id="title">Login</h3>
    <div id="msg">
        <c:if test="${not empty param.msg}">
            <i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>
        </c:if>
    </div>

    <%-- 쿠키가 있는 경우 value에 쿠키.id 값을 넣어주면 된다.
    쿠키에서 가져올땐 el 쓰면 편함 --%>
    <input type="text" name="id" value="${ cookie.id.value }" placeholder="아이디 입력" autofocus>
    <input type="password" name="pw" value="1234" placeholder="비밀번호">

    <button>로그인</button>

    <div>
        <%-- 아래껀 쿠키할때: cookie에 id 값이 없으면 그냥 빈칸, 있으면 checked 넣기 --%>
        <label><input type="checkbox" name="rememberId"${empty cookie.id.value?"":"checked" }> 아이디 기억</label> |
        <%-- 쿠키꺼 하고 테스트하기 (쿠키를 직접 수동으로 만드는 방법임)
            1) 브라우저 > F12 > Application 탭
            2) 왼쪽 탭에 Storage > Cookies > localhost:8080 선택
            3) 우측 탭에 Name 부분 더블클릭 하고 'id' 입력
            4) 바로 옆 value 부분에 asdf 넣고 새로고침 하면 아이디 칸이랑 체크박스 체그 됨

            이거 하고 컨트롤러에서 직접 생성하게 만들어보기
        --%>

        <a href="">비밀번호 찾기</a> |
        <a href="">회원가입</a>
    </div>
</form>
<script>
    function formCheck(frm) {
        let msg ='';

        if(frm.id.value.length==0) {
            setMessage('id를 입력해주세요.', frm.id);
            return false;
        }

        if(frm.pw.value.length==0) {
            setMessage('password를 입력해주세요.', frm.pw);
            return false;
        }

        return true;
    }

    function setMessage(msg, element){
        document.getElementById("msg").innerHTML = ` ${'${msg}'}`;

        if(element) {
            element.select();
        }
    }
</script>
</body>
</html>
