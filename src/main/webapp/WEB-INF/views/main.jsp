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

  <script defer src="${pageContext.request.contextPath}/js/egan_home_header.js"></script>
  <script defer src="${pageContext.request.contextPath}/js/topBtn.js"></script>
  <script defer src="${pageContext.request.contextPath}/js/h_f.js"></script>
  <script defer src="${pageContext.request.contextPath}/js/egan_home_imgSlide.js"></script>
  <script defer src="<c:url value='/js/header_search.js'/>"></script>
  <link rel="stylesheet" href="<c:url value='/css/header_search.css'/> ">
  <link rel="stylesheet" href="<c:url value='/css/egan_home_main.css'/> ">
  <link rel="stylesheet" href="<c:url value='/css/egan_main_header.css'/> ">
  <link rel="stylesheet" href="<c:url value='/css/egan_main_respon.css'/> ">
  <link rel="stylesheet" href="<c:url value='/css/h_f_r.css'/> ">





  <style>
    @import url('https://fonts.googleapis.com/css2?family=Gaegu:wght@300;400;700&family=Merriweather&family=Nanum+Pen+Script&family=Stylish&family=Zen+Antique&display=swap'); @font-face {
      font-family: 'time';
      src: local('fonts/TimesNewRomancRegular'),
      url('<c:url value='/font/timesbd.ttf'/>')format('truetype');
      font-family: 'Gaegu', cursive;
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

    @font-face {
      font-family: 'kopub';
      src: local('../font/KoPubWorldBatangLight.ttf'),
      url('<c:url value='/font/KoPubWorldBatangLight.ttf'/>')format('truetype');
    }

  </style>

</head>

<script>
  // 마우스 우클릭, 드래그 ,이미지 드래그 금지
  history.scrollRestoration = "manual"
  document.oncontextmenu = function(){return false;}
  document.onselectstart = function(){return false;}
  document.ondragstart = function(){return false;}

</script>

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
              <a href="http://localhost:8080/egan/logout.do">Logout</a>
              <a href="http://localhost:8080/egan/real_register">MyPage</a>
            </c:if>

            <c:if test="${m_id == null}">
              <a href="http://localhost:8080/egan/login">Login</a>
              <a href="http://localhost:8080/egan/real_register">Register</a>
            </c:if>
            <li class="hr"></li>
            <li><a href="http://localhost:8080/egan/detail">SHOP</a></li>
            <li><a href="http://localhost:8080/egan/brand">BRAND</a></li>
            <li><a href="http://localhost:8080/egan/brand">COMMUNITY</a></li>

          </ul>
        </div>
      </div>

      <div class="logo">
        <a href="http://localhost:8080/egan/main">Egan</a>
      </div>

      <div class="nav">
        <a href="http://localhost:8080/egan/detail">SHOP</a>
        <a href="http://localhost:8080/egan/brand">BRAND</a>
        <a href="http://localhost:8080/egan/brand">COMMUNITY</a>
      </div>

      <div class="menu">
        <div class="h_menu">
          <c:if test="${m_id != null}">
            <a href="http://localhost:8080/egan/logout.do">Logout</a>
            <a href="http://localhost:8080/egan/myPage">MyPage</a>
          </c:if>

          <c:if test="${m_id == null}">
            <a href="http://localhost:8080/egan/login">Login</a>
            <a href="http://localhost:8080/egan/myPage">Register</a>
          </c:if>
        </div>
        <div class="h_icon">
          <div class="shopping"></div>
          <div class="search"></div>
        </div>
      </div>

    </div>
  </div>

  <div class="main">


    <!-- 메인 베너 -->
    <div class="main_bannr">
      <video src="<c:url value='/video/pexels-roman-odintsov-6666529.mp4'/>" autoplay loop muted> </video>
      <div class="vi_text">
        <div>The value of nature,dkssud</div>
        <div>the value of consumption</div>
      </div>
      <a  href="http://localhost:8080/egan/brand" class="vi_link">About us</a>
    </div>



    <!-- Best 상품 -->
    <div class="best_article">
      <div class="b_article">
        <div class="b_article_img"></div>
      </div>

      <div class="best_product">
        <div class="b_title">
          <div class="best_title title_high" >Best</div>
          <div class="descri">지금 가장 인기 있는 제품을 만나 보세요!</div>
        </div>

        <div class="best_slide">
          <div class="slide_wrap">
            <div class="b_slide_img">
              <div id = "b_img" class="slide1" onclick="location.href='http://localhost:8080/egan/real_detail'">
                <div class="text1">[아떼뷰티] 앤루트 클리닉 샴푸 기획</div>
              </div>
            </div>
            <div class="b_slide_img">
              <div id = "b_img" class="slide2" onclick="location.href='http://localhost:8080/egan/real_detail'">
                <div class="text2">[닐스야드] 오가닉 베이비 밤</div>
              </div>
            </div>
            <div class="b_slide_img">
              <div id = "b_img" class="slide3" onclick="location.href='http://localhost:8080/egan/real_detail'">
                <div class="text3">[아르아르] 프레쉬 집들이 리빙 선물 세트</div>
              </div>
            </div>
            <div class="b_slide_img">
              <div id = "b_img" class="slide4" onclick="location.href='http://localhost:8080/egan/real_detail'">
                <div class="text4">[달바] 워터풀 에센스 썬크림 비건</div>
              </div>
            </div>
            <div class="b_slide_img">
              <div id = "b_img" class="slide5" onclick="location.href='http://localhost:8080/egan/real_detail'">
                <div class="text5">우리밀 순수하게 비건 교자</div>
              </div>
            </div>
            <div class="b_slide_img">
              <div id = "b_img" class="slide6" onclick="location.href='http://localhost:8080/egan/real_detail'">
                <div class="text6">칠레산 유레카 블루베리 1kg</div>
              </div>
            </div>
          </div>

          <div class="prev_btn">◀</div>
          <div class="next_btn">▶</div>

        </div>


      </div>

    </div>


    <!-- 채식구 베너 -->
    <div class="chae-sicku_banner">
      <a href="http://localhost:8080/egan/brand">
        <div class="chea_text">
          <div>채식: 구 </div>
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



      <!-- MD 상품 -->
      <div class="md_Pro">

        <div class="mdPro_article">
          <div class="mdProArticle_img">
            <a href="#">
              <div class="mdimg1"></div>
            </a>
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
            <a href="#"><div class="mdimg2"></div></a>
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
            <a href="#"><div class="mdimg3"></div></a>
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


</body>
</html>