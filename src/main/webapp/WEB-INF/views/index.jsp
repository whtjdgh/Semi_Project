<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 세션이 있으면 logout 이라고 찍고, 없으면 login 이라고 찍기 (이따가 아래쪽꺼도 할것)-->
<%-- <c:set var="logInOutLink" value="${ sessionScope.id==null ? '/login/login':'/login/logout29' }" />
<c:set var="logInOutTxt" value="${ sessionScope.id==null ? 'login':'logout' }" />
 --%>

<%@ page session="false" %><%-- 이 페이지에서는 세션을 새로 생성 안하겠다는 뜻 --%>
<%-- ** 주의 **
	session=false 일때 sessionScope와 pageContext.session 사용 불가!
	pageContext.request.getSession(false).getAttribute('id') 로 해야됨. 따옴표로!. 에러나도 무시!!
--%>
<c:set var="logInOutLink" value="${ pageContext.request.getSession(false).getAttribute('id')==null ? '/login/login':'/login/logout' }" />
<c:set var="logInOutTxt" value="${ pageContext.request.getSession(false).getAttribute('id')==null ? 'login':'logout' }" />
<c:set var="userId" value="${ pageContext.request.getSession(false).getAttribute('id')==null ? '':pageContext.request.getSession(false).getAttribute('id') }" />


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>게시판 페이지</title>
  <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
  <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
  <link rel="stylesheet" href="<c:url value='/css/index.css'/>">

</head>
<body>
<div class="header">
  <div class="content_area">
    <div id="logo"><a href="<c:url value='/'/>">BITSTUDY</a></div>

    <ul class="menu">
      <li class="item">
        <a href="<c:url value='/'/>">Home</a>
      </li>
      <li class="item">
        <a href="<c:url value='/board/list'/>">Board</a>
      </li>
      <li class="item">
        <a href="<c:url value='${logInOutLink} '/>">${logInOutTxt}</a>
      </li>
      <c:choose>
        <c:when test="${userId==null || userId.equals('') }">
          <li class="item">
            <a href="<c:url value='/register/add'/>">Sign in</a>
          </li>
        </c:when>

        <c:otherwise>
          <li class="item">
              ${userId} 님
          </li>
        </c:otherwise>
      </c:choose>
    </ul>
  </div>
</div>
<div class="main">
  <div class="content_area">
    <h1>메인 페이지</h1>
  </div>
</div>
</body>
</html>