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
    <script defer src="<c:url value='/js/brand.js'/>"></script>
    <script defer src="<c:url value='/js/h_f.js'/>"></script>
    <script defer src="<c:url value='/js/topBtn.js'/>"></script>
    <script defer src="<c:url value='/js/header_search.js'/>"></script>
    <link rel="stylesheet" href="<c:url value='/css/egan_header.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/header_search.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/h_f_r.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/brand.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/brand_r.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/brand_header.css'/> ">
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
            font-family: 'nanum강부장';
            src: local('fonts/나눔손글씨 강부장님체.ttf'),
            url('<c:url value='/font/나눔손글씨 강부장님체.ttf'/>')format('truetype');
        }
        @font-face {
            font-family: 'nanum가람';
            src: local('fonts/나눔손글씨 가람연꽃.ttf'),
            url('<c:url value='/font/나눔손글씨 가람연꽃.ttf'/>')format('truetype');
        }
    </style>
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
                    <c:if test="${m_id != null}">
                        <a href="http://localhost:8080/egan/logout.do">Logout</a>
                        <a href="http://localhost:8080/egan/real_register">MyPage</a>
                    </c:if>

                    <c:if test="${m_id == null}">
                        <a href="http://localhost:8080/egan/login">Login</a>
                        <a href="http://localhost:8080/egan/real_register">Register</a>
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
                    <a href="http://localhost:8080/egan/real_register">MyPage</a>
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

<div class="main">
    <div class="box banner ">
        <div class="txt_box">
            <p class="title">FOUNDER STORY</p>
            <p class="content_title">자연속에서 찾는 내 몸 건강</p>
            <p>Egan은 일상에 묻어있는 모든 것들에 자연이 함께하면 어떨까?라는 생각으로</p>
            <p>비건 제품, 제로웨이스트 제품을 비롯한 환경적 가치를 추구하는 브랜드입니다.</p>
            <p class="content">내 일상에 묻어나는 자연과 그것이 나의 일상을 변화시키는 모습을 느껴보세요.</p>
        </div>
    </div>
</div>

<div class="story_box1 ">

    <div class="story_title">BRAND STORY</div>
    <div class="border"></div>

    <div class="story_logo">
        <div class="logo_box"></div>
        <div class="logo_txt">
            <p class="txt_content1">Egan이 지향하는 브랜드이미지를 바탕으로 디자인된</p>
            <p class="txt_content1">로고 타입으로 우아함과 모던함이 공존합니다.</p>
            <p class="txt_content2">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Minima quam iure
                unde, saepe deleniti atque, facere architecto neque ipsum amet corporis beatae. Id odit
                accusantium, quae temporibus ea sed dolorum.
                Doloremque vitae deserunt quibusdam veritatis ipsum debitis maxime at velit nostrum tenetur
                molestiae totam quam voluptates quisquam, nemo distinctio minima exercitationem! Nesciunt neque
                aliquam recusandae ab sapiente veniam asperiores unde.
                Assumenda earum ex aperiam qui ab velit molestiae, inventore doloremque sunt, error aliquam! Non
                quibusdam sequi doloremque perspiciatis, harum molestias! Vero corrupti perferendis porro rem
                repellendus, odit animi pariatur velit.</p>
            <div class="abBox"></div>
        </div>
    </div>

    <div class="story_title">BRAND COLOR</div>
    <div class="border"></div>


    <div class="brand_color">
        <div class="color_wrap color_wrap1">
            <div class="color_box">
                <div class="box1"></div>
                <div class="box2"></div>
            </div>
            <div class="main_color main_color1">
                _Main color1
                <span>#FFBF00</span>
            </div>
        </div>
        <div class="color_wrap color_wrap2">
            <div class="color_box">
                <div class="box3"></div>
                <div class="box4"></div>
            </div>
            <div class="main_color main_color2">
                _Main color2
                <span>#FFE178</span>
            </div>
        </div>
    </div>
    <div class="white_pan"></div>
</div>


<div class="story_info">
    <div class="info_wrap">
        <div class="info_txt_box">
            <h2>OUR PHILOSOPHY</h2>
            <h3>건강은 자연속에서 시작됩니다.</h3>
            <p>Egan은 건강은 '자연으로부터'라는 모토를 추구하는 브랜드로</p>
            <p>아래의 철학을 바탕으로 그 가치를 실현합니다.</p>
        </div>
        <div class="info_box content_area">
            <div class="info_img info_img1"></div>
            <div class="info_txt">
                <p class="info_title">01. 안심 식품</p>
                <br>
                <p class="info_mini_title">생활 속 화학제품에 노출되어 있는 당신의 건강은 안녕하신가요?</p>
                <br>
                <p>우리들의 몸은 다양한 생활 속 자극으로 인해 점점 더 예민해져가고 있습니다. Egan은 이러한 문제를 바탕으로 자연속에서 모두가 안심할 수 있는 먹거리, 제품만을 제공합니다.</p>
                <br>
                <p>또한 꼭 필요한 유효 성분만 담고 불필용한 성분은 배제하였습니다.</p>
            </div>
        </div>
        <div class="info_box content_area">
            <div class="info_txt">
                <p class="info_title">02. 비건 프리</p>
                <br>
                <p class="info_mini_title">왜 "비건"이어야 할까요?</p>
                <br>
                <p>식물 성분을 기반으로 한 100%로 비건제품만으로 유효 성분이 내 몸에 더 잘 흡수되도록 하여 건강한 내 몸을 지킬 수 있습니다.</p>
                <br>
                <p>동물성 콜라겐보다 식물성 콜라겐이 더 분자량이 작아 섭취했을 때 더 잘 흡수되는 것과 마찬가지입니다. 동물 실험을 하지 않은 크루얼티 프리의 가치를 실현하고자 합니다.</p>
            </div>
            <div class="info_img info_img2"></div>
        </div>
        <div class="info_box content_area">
            <div class="info_img info_img3"></div>
            <div class="info_txt">
                <p class="info_title">03. 스스로의 건강 균형을 찾을 수 있도록</p>
                <br>
                <p class="info_mini_title">건강 고민을 하면서 정작 내 몸 건강을 헤치고 있지는 않은가요?</p>
                <br>
                <p>비건 식품이라고해서 더이상 맛없고 보잘 것 없는 제품이 아닙니다. 건강 균형을 찾아가며 균형잡힌 내 몸을 느껴보세요. </p>
                <br>
                <p>또한 꼭 필요한 유효 성분만 담고 불필용한 성분은 배제하였습니다.</p>
            </div>
        </div>
    </div>

</div>

<div class="story_vegan">
    <div class="vegan_txt">

        <div  class="vegan_title1"> "  안녕하세요, 자연의 건강함을 추구하는 클린 비건 식품 Egan입니다.  " </div>
        <span class-="vegan_content">
                         <p class="vegan_title2"> [ 채식:구 ]
                            <span class="vegan_title2_inner">시간이 지나면서 건강이 악화되고 뒤늦게 관리하면 늦는다는 걸 깨닫습니다.
                            왜 건강은 미리 챙겨야만 좋은 걸까요? 참 의아한 일입니다.
                            건강은 기본에 충실하고 꾸준한 관리와 나만의 습관을 통해서 얻어집니다.
                            그것이 Egan이 추구하는 가치입니다.
                            </span>
                        </p>
                    </span>
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





</div>

</div>
</body>

</html>
