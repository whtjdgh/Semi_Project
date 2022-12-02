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
  <script defer src="<c:url value='/js/egan_home_header'/>"></script>
  <link rel="stylesheet" href="<c:url value='/css/egan_home_main.css'/> ">
  <link rel="stylesheet" href="<c:url value='/css/egan_header.css'/> ">
  <link rel="stylesheet" href="<c:url value='/css/egan_main_header.css'/> ">
  <link rel="stylesheet" href="<c:url value='/css/egan_header.css'/> ">
  <link rel="stylesheet" href="<c:url value='/css/h_f_r.css'/> ">
  <>


</head>

<body>
<div class="wrap ">
  <div class="header">
    <div class="content_area">

      <div class="ham_btn">
        <div class="ham_line"></div>
        <div class="ham_line"></div>
        <div class="ham_line"></div>
      </div>

      <div class="logo">Egan</div>

      <div class="nav">
        <a href="">SHOP</a>
        <a href="">BRAND</a>
        <a href="">COMMUNITY</a>
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

  <div class="main">

    <div class="main_bannr">
      <video src="/video/pexels-roman-odintsov-6666529.mp4" autoplay loop muted> </video>
      <div class="vi_text">
        <div>The value of nature,</div>
        <div>the value of consumption</div>
      </div>
      <a  href="" class="vi_link">About us</a>
    </div>

    <div class="best_product">
      <div class="b_product_img"></div>
      <div class="b_product">
        <div class="b_title">
          <div class="best_title title_high" >Best</div>
          <div class="descri">지금 가장 인기 있는 제품을 만나 보세요!</div>
        </div>
        <!-- 베스트 제품 슬라이드 -->
        <div class="best_slide">

        </div>
      </div>
    </div>

    <div class="chae-sicku_banner">
      <a href="">
        <div class="chea_text">
          <div>채식: 구</div>
          <div>Egan만의 환경적 가치를 기준으로 한 브랜드와 제품을 소개합니다.</div>
          <div>건강한 소비란, 마음 속에서 시작되고 건강함은 자연에서 시작 된다는 브랜드의 철학이 담겨 있습니다.</div>
        </div>
      </a>
    </div>

    <div class="md_product">
      <div class="md_title">
        <div class="md_ProTitle title_high">Specials</div>
        <div class="descri">추천상품을 이용해 보세요!</div>
      </div>

      <!-- funtion 이용해 보기 -->
      <div class="md_Pro">

        <div class="mdPro_article">
          <div class="mdProArticle_img">
            <div class="mdimg1"></div>
          </div>
          <div class="md_descri">
            <a href="" class="mdDes">
              <div>비건/제로웨이스트가 처음이라면?</div>
              <div>지금 가장 인기 있는 제품을 만나 보세요!</div>
            </a>
          </div>
        </div>

        <div class="mdPro_article">
          <div class="mdProArticle_img mdimg2">
            <div class="mdimg2"></div>
          </div>
          <div class="md_descri">
            <a href="" class="mdDes">
              <div>비건/제로웨이스트가 처음이라면?</div>
              <div>지금 가장 인기 있는 제품을 만나 보세요!</div>
            </a>
          </div>
        </div>

        <div class="mdPro_article">
          <div class="mdProArticle_img mdimg3">
            <div class="mdimg3"></div>
          </div>
          <div class="md_descri">
            <a href="" class="mdDes">
              <div>비건/제로웨이스트가 처음이라면?</div>
              <div>지금 가장 인기 있는 제품을 만나 보세요!</div>
            </a>
          </div>
        </div>


      </div>
    </div>

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




</div>

<script src="">

</script>


</body>
</html>