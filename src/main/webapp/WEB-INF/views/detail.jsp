<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script defer src="<c:url value='/js/detail.js'/>"></script>
  <script defer src="<c:url value='/js/h_f.js'/>"></script>
  <script defer src="<c:url value='/js/topBtn.js'/>"></script>
  <script defer src="<c:url value='/js/header_search.js'/>"></script>

<!--   <link rel="stylesheet" href="<c:url value='/css/detail.css'/> "> -->
  <link rel="stylesheet" href="<c:url value='/css/egan_header.css'/> ">
  <link rel="stylesheet" href="<c:url value='/css/detail.css'/> ">
  <link rel="stylesheet" href="<c:url value='/css/header_search.css'/> ">
  <link rel="stylesheet" href="<c:url value='/css/h_f_r.css'/> ">
  <link rel="stylesheet" href="<c:url value='/css/detail_r.css'/> ">



  <style>
    @font-face {
      font-family: 'time';
      src: local('fonts/TimesNewRomancRegular'),
      url('<c:url value='/font/timesbd.ttf'/>')format('truetype');
    }

    @font-face {
      font-family: 'nanum';
      src: local('fonts/NanumBarunGothic.ttf'),
      url('<c:url value='/font/NanumBarunGothic.ttf'/>')format('truetype');

    }

    @font-face {
      font-family: 'nanum-light';
      src: local('fonts/NanumBarunGothicLight.ttf'),
      url('<c:url value='/font/NanumBarunGothicLight.ttf'/>')format('truetype');

    }

  </style>
</head>
<div class="model_background">
  <div class="close" ></div>
  <div class="model_content">
    <div class="search_box search_box2">
      <input type="text" placeholder="검색" class="txt_search" id="txt_search1">
        <div class="icon" onclick="search()"></div>
    </div>
  </div>
</div>

<div class="header">
  <div class="content_area">
    <!-- 햄버거 버튼 -->
    <div class="ham_box">
      <div class="ham_line" id="line_top"></div>
      <div class="ham_line" id="line_mid"></div>
      <div class="ham_line" id="line_bot"></div>
      <div class="ham_menu">
        <ul class="ham_ul">
          <c:if test="${m_id != null}">
           <li> <a href="http://localhost:8080/egan/logout.do">Logout</a></li>
            <li><a href="http://localhost:8080/egan/myPage">MyPage</a></li>
          </c:if>

          <c:if test="${m_id == null}">
            <li><a href="http://localhost:8080/egan/login">Login</a></li>
            <li><a href="http://localhost:8080/egan/real_register">Register</a></li>
          </c:if>
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
        <c:if test="${m_id != null}">
          <a href="http://localhost:8080/egan/logout.do">Logout</a>
          <a href="http://localhost:8080/egan/myPage">MyPage</a>
        </c:if>

        <c:if test="${m_id == null}">
          <a href="http://localhost:8080/egan/login">Login</a>
          <a href="http://localhost:8080/egan/real_register">Register</a>
        </c:if>
      </div>
      <div class="h_icon">
        <div class="shopping"></div>
        <div class="search"></div>
      </div>
    </div>

  </div>
</div>



<div class="main_banner">
  <div class="banner">
    <div class="search_box">
      <input type="text" placeholder="검색" class="txt_search" id="txt_search2">
        <div class="icon" onclick="search()"></div>
    </div>
  </div>
</div>


<div class="main_tab">
  <ul>
    <li id="move_skin" onclick="cate_click(2)">스킨케어</li>
    <div class="border_R"></div>
    <li id="move_daily" onclick="cate_click(1)">생활용품</li>
    <div class="border_R"></div>
    <li id="move_food" onclick="cate_click(3)">식품</li>
    <div class="border_R"></div>
    <li id="move_veg">채식:구</li>
  </ul>
</div>


<div class="all_manu">모든상품</div>


<div class="menu_box content_area">
<c:if test="${keyword == null}">
  <c:if test="${cate_value == null}">
     <c:forEach var="dto" items="${list }">
     <div class="menu_list">
       <div class="menu_item">
          <a href="http://localhost:8080/egan/real_detail/${dto.p_index}">
            <img src="<c:url value='${dto.saveImage}'/>" alt="c">
          </a>
          <button class="menu_basket_btn"></button>
        </div>
        <div class="menu_txt">
          <p class="p_name">${dto.p_name}</p>
          <p class="p_sale">32%</p>
          <p class="p_price">${dto.p_price}</p>
        </div>
      </div>
      </c:forEach>
  </c:if>


  <c:if test="${cate_value == 'daily'}">
    <c:forEach var="dto" items="${cate_list }">
      <div class="menu_list">
        <div class="menu_item">
          <a href="http://localhost:8080/egan/real_detail/${dto.p_index}">
            <img src="<c:url value='${dto.saveImage}'/>" alt="c">
          </a>
          <button class="menu_basket_btn"></button>
        </div>
        <div class="menu_txt">
          <p class="p_name">${dto.p_name}</p>
          <p class="p_sale">32%</p>
          <p class="p_price">${dto.p_price}</p>
        </div>
      </div>
    </c:forEach>
  </c:if>

  <c:if test="${cate_value == 'skin'}">
    <c:forEach var="dto" items="${cate_list }">
      <div class="menu_list">
        <div class="menu_item">
          <a href="http://localhost:8080/egan/real_detail/${dto.p_index}">
            <img src="<c:url value='${dto.saveImage}'/>" alt="c">
          </a>
          <button class="menu_basket_btn"></button>
        </div>
        <div class="menu_txt">
          <p class="p_name">${dto.p_name}</p>
          <p class="p_sale">32%</p>
          <p class="p_price">${dto.p_price}</p>
        </div>
      </div>
    </c:forEach>
  </c:if>


  <c:if test="${cate_value == 'food'}">
    <c:forEach var="dto" items="${cate_list }">
      <div class="menu_list">
        <div class="menu_item">
          <a href="http://localhost:8080/egan/real_detail/${dto.p_index}">
            <img src="<c:url value='${dto.saveImage}'/>" alt="c">
          </a>
          <button class="menu_basket_btn"></button>
        </div>
        <div class="menu_txt">
          <p class="p_name">${dto.p_name}</p>
          <p class="p_sale">32%</p>
          <p class="p_price">${dto.p_price}</p>
        </div>
      </div>
    </c:forEach>
  </c:if>
</c:if>


  <c:if test="${keyword != null}">
    <c:forEach var="dto" items="${cate_list }">
      <div class="menu_list">
        <div class="menu_item">
          <a href="http://localhost:8080/egan/real_detail/${dto.p_index}">
            <img src="<c:url value='${dto.saveImage}'/>" alt="c">
          </a>
          <button class="menu_basket_btn"></button>
        </div>
        <div class="menu_txt">
          <p class="p_name">${dto.p_name}</p>
          <p class="p_sale">32%</p>
          <p class="p_price">${dto.p_price}</p>
        </div>
      </div>
    </c:forEach>
  </c:if>


</div>




<div class="popup_outer_box">
  <div class="popup_inner_box">
    <div class="inner_txt">
      <p class="inner_name">[채식:구] 상품명 상품명 상품명입니다.</p>
    </div>
    <div class="inner_price">
      <p class="o_price">19,000원</p>
      <div class="pm_btn">
        <button id="minus" onclick="minus()"></button>
        <!-- <div id="pm_txt" value="1"></div> -->
        <input type="text" value="1" id="pm_txt">
        <button id="plus" onclick="plus()"></button>
      </div>
    </div>
  </div>
  <div class="popup_inner_box">
    <div class="total_box">
      <p class="total_name">합계</p>
      <p class="total_price" >19,000원</p>
    </div>
    <div class="point_box">
      <div class="point">적립</div>
      <p class="total_sale">구매 시 10원 적립</p>
    </div>
    <div class="cp_btn">
      <button id="cancel">취소</button>
      <button id="put">장바구니 담기</button>
    </div>
  </div>
</div>

<div class="basket_popup">
  <div class="basket_txt">
    <p>제품이 장바구니에 담겼습니다.</p>
    <p>바로 확인하시겠습니까?</p>

  </div>
  <div class="basket_btn">
    <button id="contiune">계속 쇼핑하기</button>
    <button id="check">확인하기</button>
  </div>
</div>
<!-- 로그인 팝업 -->
<div class="logChk_popup">
  <div class="logChk_txt">
    <p>로그인이 필요한 서비스입니다.</p>
    <p>로그인페이지로 이동하시겠습니까?</p>
  </div>
  <div class="logChk_btn">
    <input type="button" value="취소" id="log_cancle_btn">
    <input type="button" value="확인하기" id="logChk_commit_btn" name="logChk">
  </div>

</div>
<button class="top_btn">TOP</button>




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



<div class="layer"></div>

</div>

</div>

<script>
  function search(){

    let keyword = document.getElementById('txt_search2').value;
    location.href = "http://localhost:8080/egan/search_product/"+keyword+"";


  }


  function cate_click(data){
    console.log(data);
    let cate_value = "";
    if(data == 2){
      cate_value = "skin"
      location.href = "http://localhost:8080/egan/detail/"+cate_value+"";
    }else if(data == 1){
      cate_value = "daily"
      location.href = "http://localhost:8080/egan/detail/"+cate_value+"";
    }else{
      cate_value = "food"
      location.href = "http://localhost:8080/egan/detail/"+cate_value+"";
    }

  }


  $(document).ready(function (){
      $(document).on('click', '.menu_basket_btn', function () {
        <c:if test="${m_id != null}">
        $('.popup_outer_box').css({display:'block'})
        $('.layer').css({display:'block'})
        </c:if>

        <c:if test="${m_id == null}">
        $('.logChk_popup').css({display:'block'})
        $('.layer').css({display:'block'})
        </c:if>
      })

  })
</script>

</body>

</html>
