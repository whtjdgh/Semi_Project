<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page import="java.net.URLDecoder" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
  <style>
    * {
      box-sizing: border-box;
    }
    form {
      width: 400px;
      /* height: 600px; */
      display: flex;
      flex-direction: column;
      align-items: center;
      /*position: absolute;*/
      /*top: 50%;*/
      /*left: 50%;*/
      /*transform: translate(-50%, -50%);*/
      border: 1px solid rgb(89, 117, 196);
      border-radius: 10px;
    }
    label {
      width: 300px;
      font-size: 13px;
    }
    .txt {
      width: 300px;
      height: 35px;
      border: 1px solid rgb(89, 117, 196);
      border-radius: 5px;
      padding: 0 10px;
      margin-top: 5px;
      margin-bottom: 10px;
    }
    button {
      background-color: #eee8aa;
      color: #333;
      width: 300px;
      height: 50px;
      font-size: 17px;
      border: none;
      border-radius: 5px;
      margin: 20px 0 30px 0;
    }
    .title {
      font-size: 50px;
      margin: 40px 0 30px 0;
    }
    .msg {
      text-align: center;
      font-size: 16px;
      color: red;
      margin-bottom: 20px;
    }
    .sns-chk {
      margin-top: 5px;
    }
  </style>
  <title>Register</title>
</head>
<body>
<%-- 경로도 언제든 바뀔수 있기 때문에 이렇게 일반 파일명 쓰지 말고, jstl을 써서 바꾸자
    여기에만 jstl 쓰면 소용없다. 걍 에러나니까
    컨트롤러에도 register/save 새로 하나 등록해서 페이지 이동 시키자
 --%>


<%--<form:form modelAttribute="user">--%>
<%--  <div class="title">Register1</div>--%>
<%--  <div id="msg" class="msg"><form:errors path="id"/></div>--%>
<%--  <label for="">아이디</label>--%>
<%--  <input class="input-field" type="text" name="id" placeholder="8~12자리의 영대소문자와 숫자 조합">--%>
<%--  <label for="">비밀번호</label>--%>
<%--  <input class="input-field" type="text" name="pw" placeholder="8~12자리의 영대소문자와 숫자 조합">--%>
<%--  <label for="">이름</label>--%>
<%--  <input class="input-field" type="text" name="name" placeholder="홍길동">--%>
<%--  <label for="">이메일</label>--%>
<%--  <input class="input-field" type="text" name="email" placeholder="example@bitstudy.co.kr">--%>
<%--  <label for="">생일</label>--%>
<%--  <input class="input-field" type="text" name="birth" placeholder="2020-12-31">--%>
<%--  <div class="sns-chk">--%>
<%--    <label><input type="checkbox" name="sns" value="facebook"/>페이스북</label>--%>
<%--    <label><input type="checkbox" name="sns" value="kakaotalk"/>카카오톡</label>--%>
<%--    <label><input type="checkbox" name="sns" value="instagram"/>인스타그램</label>--%>
<%--  </div>--%>
<%--  <button>회원 가입</button>--%>
<%--</form:form>--%>


<form action="<c:url value="/register/add" />" method="POST" onsubmit="return formCheck(this)">
<%--<form:form modelAttribute="user">
    <form:errors path="email"/></div>--%>
  <div class="title">회원가입</div>

  <%-- // 인코딩을 했으면 view 에서 디코딩을 해야 제대로 나옴 --%>
  <%-- URLDecoder 클래스는 java.net 패키지에 있는거라 맨 위에 import 시켜줘야함 --%>
  <%--<div id="msg3" class="msg">${URLDecoder.decode(param.msg, "utf-8")}</div>--%> <%-- 이건 get 방식용 --%>
  <%--<div id="msg2" class="msg">${msg}</div>--%> <%-- 이건 모델용 --%>
  <div id="msg" class="msg">
<%--    <form:errors path="email"/>--%>
    ${URLDecoder.decode(param.msg, "utf-8")}
  </div>

  <label for="id">아이디</label>
  <input class="txt" type="text" id="id" name="id" placeholder="8~12자리의 영대소문자와 숫자 조합" value="asdf" autofocus>
  <label for="pw">비밀번호</label>
  <input class="txt" type="text" id="pw" name="pw" placeholder="8~12자리의 영대소문자와 숫자 조합" value="1234">
  <label for="name">이름</label>
  <input class="txt" type="text" id="name" name="name" value="홍길동1" placeholder="홍길동">
  <label for="email">이메일</label>
  <input class="txt" type="text" id="email" name="email" value="example@bitstudy.co.kr" placeholder="example@bitstudy.co.kr">

  <label for="birth">생일</label>
  <input class="txt" type="text" id="birth" name="birth" value="2020/12/31" placeholder="2020/12/31">
  <div class="sns-chk">
    <label><input type="checkbox" name="sns" value="facebook" checked />페이스북</label>
    <label><input type="checkbox" name="sns" value="kakaotalk" checked />카카오톡</label>
    <label><input type="checkbox" name="sns" value="instagram" checked />인스타그램</label>
  </div>

  <button>회원 가입</button>
</form>
<%--</form:form>--%>


</body>
<script>
  const id = document.getElementById('id');
  const pw = document.getElementById('pw');
  const name = document.getElementById('name');
  const email = document.getElementById('email');
  const birth = document.getElementById('birth');


  id.addEventListener('keydown',function(){  initMsg();  });
  pw.addEventListener('keydown',function(){  initMsg();  });
  name.addEventListener('keydown',function(){  initMsg();  });
  email.addEventListener('keydown',function(){  initMsg();  });
  birth.addEventListener('keydown',function(){  initMsg();  });

  // id.addEventListener('click',function(){  initMsg();  });
  // pw.addEventListener('click',function(){  initMsg();  });
  // name.addEventListener('click',function(){  initMsg();  });
  // email.addEventListener('click',function(){  initMsg();  });
  // birth.addEventListener('click',function(){  initMsg();  });
  //
  // id.addEventListener('focus', () => { initMsg(); });
  // pw.addEventListener('focus', () => { initMsg(); });
  // name.addEventListener('focus', () => { initMsg(); });
  // email.addEventListener('focus', () => { initMsg(); });
  // birth.addEventListener('focus', () => { initMsg(); });


  function initMsg() {
    document.getElementById('msg').innerText="";
  }


  function formCheck(frm) {
    var msg = '';
    if (frm.id.value.length < 3) {
      setMessage('id의 길이는 3이상이어야 합니다.', frm.id);
      return false;
    }
    //if (frm.pp.value.length < 3) {
    if (frm.pw.value.length < 3) {
      setMessage('pw의 길이는 3이상이어야 합니다.', frm.pw);
      return false;
    }
    return true;
  }

  /* 잘못 입력한 칸에 focus 주기 */
  <%-- 여기서 이렇게 하면 ${msg} 부분이 안나온다
          이유는 여기서의 ${} 는 자바스크립트 es6 의 방식이기 때문인데
          EL 방식은 서버에서 돌아가는 거고, es6는 브라우저에서 돌아가는건데
          서버가 먼저 동작하기 때문에 ${msg} 를 EL로 봐서 msg 변수 안에 있는 말을 출력하는건데
          여기서는 msg 에 아무 말도 들어있지 않기 때문에 그냥 빈칸으로 표시되는거임.

          바꿔줘야 한다. ${msg} 를 ${'${msg}' } 로
     --%>
  function setMessage(msg, element) {
    document.getElementById("msg").innerHTML = `<i class="fa fa-exclamation-circle"> ${ '${msg}' }</i>`;

    if (element) {
      // 해당 요소로 focus
      element.select();
    }
  }

</script>
</html>