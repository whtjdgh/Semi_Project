<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Egan_MyPage</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" ></script>
    <script defer src="<c:url value='/js/Mypage_shopping_basket.js'/>"></script>
    <script defer src="<c:url value='/js/Mypage_alert.js'/>"></script>
    <script defer src="<c:url value='/js/Mypage_product_inquiry.js'/>"></script>
    <script defer src="<c:url value='/js/h_f.js'/>"></script>
    <script defer src="<c:url value='/js/header_search.js'/>"></script>
    <script defer src="<c:url value='/js/topBtn.js'/>"></script>
    <script defer src="<c:url value='/js/myPageLabelColor.js'/>"></script>
    <link rel="stylesheet" href="<c:url value='/css/Mypage_shopping_basket.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/Mypage_base.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/Mypage_product_inquiry.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/Mypage_infomation.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/Mypage_popup_inquiry_correct.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/Mypage_popup_inquiry_delect.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/button.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/Mypage_coupon.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/Mypage_review.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/egan_header.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/h_f_r.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/header_search.css'/> ">
</head>
<body>
    <style>
@import url('https://fonts.googleapis.com/css2?family=Gaegu:wght@300;400;700&family=Merriweather&family=Nanum+Pen+Script&family=Stylish&family=Zen+Antique&display=swap'); 
    
        @font-face {
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
                        <li> <a href="http://localhost:8080/egan/logout.do">Logout</a></li>
                        <li><a href="http://localhost:8080/egan/myPage">MyPage</a></li>
                    </c:if>

                    <c:if test="${m_id == null}">
                        <li><a href="http://localhost:8080/egan/login">Login</a></li>
                        <li><a href="http://localhost:8080/egan/real_register">Register</a></li>
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
                    <a href="http://localhost:8080/egan/real_register">Register</a>
                </c:if>
            </div>
            <div class="h_icon">
                <div class="shopping"></div>
                <a href="http://localhost:8080/egan/myPage_checked"><div class="search"></div></a>
            </div>
        </div>

    </div>
</div>

<div class="main_box">
    <div class="contain">
        <div class="main">
            <div class="show_info">
                <div class="info_wrap">
                    <div class="show_info_box">
                        <label for="rd7" >
                            <div class="rd7_box">
                                (골드) 김종일님
                            </div>
                        </label>
                        <!-- <div class="rd7_txt"> 김종일님</div>
                        <div class="rd7_txt">회원정보 변경</div>
                        <div class="rd7_txt">배송지 관리</div> -->
                    </div>

                    <div class="show_info_box"><label for="rd5">쿠폰</label></div>
                    <div class="show_info_box">다음달 예상등급 ></div>
                    <div class="show_info_box"><label for="rd1">주문내역</label></div>
                </div>
            </div>


            <!-- 제품내역 -->
            <div class="info">
                <ul>
                    <label for="rd1" class="box1 box2">주문내역<span class="next"></span></label>
                    <label for="rd3" class="box1">상품 후기<span class="next"></span></label>
                    <label for="rd4" class="box1">상품 문의<span class="next"></span></label>
                    <label for="rd5" class="box1">쿠폰<span class="next"></span></label>
                    <label for="rd6" class="box1">장바구니<span class="next"></span></label>
                    <label for="rd7" class="box1">개인정보 수정<span class="next"></span></label>
                </ul>

                <!--   주문내역 -->
                <input type="radio" name="rd" id="rd1" checked >
                <div class="pan">
                    <p class="name boder_bot">
                        주문내역
                        <select name="sel" class="text_button">
                            <option value="web1">1개월</option>
                            <option value="web2" selected>3개월</option>
                            <option value="web3" >6개월</option>
                            <option value="web4" >1년</option>
                        </select>

                    </p>

                    <div class="infomation">
                       <img src="<c:url value='/img/daily/3.jpg'/>" class="img">
                        </a>

                        <!-- 제품내역 -->
                        <div class="infomation_box">
                            <table>
                                <colgroup>
                                    <col style="width:100px;">
                                    <col style="width:350px;">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <td>상품명</td>
                                    <td>[슈가버블] 친환경 주방세제 3입 선물세트</td>
                                </tr>
                                <tr>
                                    <td>주문번호</td>
                                    <td>00000001</td>
                                </tr>
                                <tr>
                                    <td>주문일자</td>
                                    <td>2022-01-01</td>
                                </tr>
                                <tr>
                                    <td >결제금액</td>
                                    <td>10,900원</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <!--배송상태  -->
                        <div class="diriver">
                            배송완료
                        </div>
                    </div>
                    <div class="infomation">
                        <img src="<c:url value='/img/food/6.jpg'/>" class="img">
                        </a>

                        <!-- 제품내역 -->
                        <div class="infomation_box">
                            <table>
                                <colgroup>
                                    <col style="width:100px;">
                                    <col style="width:350px;">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <td>상품명</td>
                                    <td>냉동 유기농 애플망고 700g (페루산)</td>
                                </tr>
                                <tr>
                                    <td>주문번호</td>
                                    <td>00000002</td>
                                </tr>
                                <tr>
                                    <td>주문일자</td>
                                    <td>2022-01-02</td>
                                </tr>
                                <tr>
                                    <td >결제금액</td>
                                    <td>10,900원</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <!--배송상태  -->
                        <div class="diriver">
                            배송완료
                        </div>
                    </div>
                               <div class="prvBtn" >
                                    <a href="#"><img src="<c:url value='/img/btn_page_prev.gif'/>" class="btn_left" alt="이전 버튼"></a>
                                    <a href="#"><img src="<c:url value='/img/btn_page_next.gif'/>" class="btn_right" alt="다음 버튼"></a>
                                </div>
                </div>

                <!-- 상품 후기 -->
                <input type="radio" name="rd" id="rd3" >
                <div class="pan">
                    <p class="name border">
                        상품 후기
                    </p>
                    <ul class="period_search ">
                        <a href=""><li class="period_search_li period_search_li_border">1개월</li></a>
                        <a href=""><li class="period_search_li period_search_li_border">3개월</li></a>
                        <a href=""><li class="period_search_li period_search_li_border">6개월</li></a>
                        <a href=""><li class="period_search_li">전체시기</li></a>
                    </ul>

                    <div class="review">
                        <div class="review_can reviewBtn reviewBtn1">작성가능 후기(0)</div>
                        <div class="review_done reviewBtn" onclick="review_done_alert()">작성완료 후기(0)</div>
                    </div>

                    <div class="review_content">
                        <img src="<c:url value='/img/food/6-1.jpg'/>" class="img">
                        <div class="review_product"> 냉동 유기농 애플망고 700g </div>
                        <label type="button" id="modal-open" >
                            <div class="review_content_botton">작성하기</div>
                        </label>
                    </div>

                    <div class="container">
                        <div class="modal-btn-box">

                        </div>
                        <div class="popup-wrap" id="popup_product">
                            <div class="popup">

                                <div class="popup-head">
                                    <div class="head-title">
                                        PRODUCT REVIEW</div>
                                    <div class="product_box">
                                       <img src="<c:url value='/img/food/6-1.jpg'/>" class="img">
                                        <div class="product_name">
                                           냉동 유기농 애플망고 700g 
                                        </div>
                                    </div>

                                </div>
                                <div class="popup-body">
                                    <div class="body-content">
                                        <div class="body-content_text">제목</div>
                                        <input type="text" class="body-titlebox input_block" name="" >
                                        <div class="body-content_text">내용</div>
                                        <input type="text" class="body-contentbox input_block" name="">
                                    </div>


                                </div>

                                <div class="popup-foot">
                                    <span class="pop-btn confirm" id="cancel_product">취소</span>
                                    <span class="pop-btn close7" id="new_popup_product">등록하기</span>
                                </div>
                            </div>
                        </div>
                    </div>
                               <div class="prvBtn" >
                                    <a href="#"><img src="<c:url value='/img/btn_page_prev.gif'/>" class="btn_left" alt="이전 버튼"></a>
                                    <a href="#"><img src="<c:url value='/img/btn_page_next.gif'/>" class="btn_right" alt="다음 버튼"></a>
                                </div>
                </div>


                <!-- 상품 문의 -->
                <input type="radio" name="rd" id="rd4" >
                <div class="pan">
                    <p class="name">
                        상품 문의
                    </p>

                    <div class="infomation">
                        <ul class="infomation_ul">
                            <li class="infomation_li_1 font">제목</li>
                            <li class="infomation_li_2 font">답변상태</li>
                            <li class="infomation_li_2 font">작성일</li>
                        </ul>


                        <label for="toggle" class="toggleSwitch">
                            <div id="content_area_tep">
                                
                                  <img src="<c:url value='/img/skin/3.jpg'/>" class="img">
                               
                                <div class="contact_information">
                                    언제쯤 도착하는지 알수 있을까요?
                                </div>
                                <div class="date_created ">
                                    22.11.30
                                </div>
                                <div class="answer">
                                    <p>답변대기</p>
                                </div>

                            </div>

                            <div class="questions_tab toggleButton">
                                Q.문의 내용입니다.
                                <div class="questions_tab_answer">A.답변</div>

                                <label type="button" id="modal_open_correction" class="questions_tab_correction" >수정</label>
                                <label type="button" id="modal-open2" class="questions_tab_delete" >삭제</label>

                            </div >

                               <div class="prvBtn w100" >
                                    <a href="#"><img src="<c:url value='/img/btn_page_prev.gif'/>" class="btn_left" alt="이전 버튼"></a>
                                    <a href="#"><img src="<c:url value='/img/btn_page_next.gif'/>" class="btn_right" alt="다음 버튼"></a>
                                </div>
                        </label>

                        <!-- 수정 팝업 -->
                        <div class="container">
                            <div class="popup-wrap" id="popup_correction">
                                <div class="popup">

                                    <div class="popup-head">
                                        <div class="head-title">
                                            PRODUCT Q&A</div>
                                        <div class="product_box">
                                           <img src="<c:url value='/img/food/6-1.jpg'/>" class="img">
                                            <div class="product_name">
                                                냉동 유기농 애플망고 700g 
                                            </div>
                                        </div>
                                    </div>

                                    <div class="popup-body">
                                        <div class="body-content">
                                            <div class="body-content_text">제목</div>
                                            <input type="text" class="body-titlebox input_block" name="" >
                                            <div class="body-content_text">내용</div>
                                            <input type="text" class="body-contentbox input_block" name="">
                                        </div>
                                    </div>

                                    <div class="popup-foot">
                                        <span class="pop-btn confirm" id="cancel_correction">취소</span>
                                        <span class="pop-btn close7" id="new_popup">등록하기</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="container">
                            <div class="popup-wrap3" id="popup2">
                                <div class="popup3">
                                    <div class="popup-body3">
                                        <div class="body-content3">
                                            <div class="body-titlebox3">
                                                <p>후기가 등록되었습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="popup-foot3">
                                        <div id="confirm2">확인</div>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <!-- 삭제  팝업 -->
                        <div class="container">

                            <!-- <button type="button" id="modal-open">확인</button>   -->


                            <div class="popup-wrap2" id="popup3">
                                <div class="popup2">
                                    <div class="popup-body2">
                                        <div class="body-content2">
                                            <div class="body-titlebox2">
                                                작성된 문의를 삭제하시겠습니까?
                                            </div>
                                        </div>
                                    </div>
                                    <div class="popup-foot2">
                                        <span class="pop-btn2 confirm" id="confirm">취소</span>
                                        <span class="pop-btn2 pass" id="pass">확인</span>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <div class="container">

                            <div class="popup-wrap2" id="popup4">
                                <div class="popup2">
                                    <div class="popup-body2">
                                        <div class="body-content2">
                                            <div class="body-titlebox2">
                                                작성된 문의가 삭제되었습니다.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="popup-foot2">
                                        <span class="pop-btn2 close2" id="close">확인</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
<!--                    <div class="prvBtn" >
                        <a href="#"><img src="<c:url value='/img/btn_page_prev.gif'/>" class="btn_left" alt="이전 버튼"></a>
                        <a href="#"><img src="<c:url value='/img/btn_page_next.gif'/>" class="btn_right" alt="다음 버튼"></a>
                    </div> -->

                </div>

                <!-- 쿠폰 -->

                <input type="radio" name="rd" id="rd5" >
                <div class="pan">
                    <p class="name">
                        쿠폰
                    </p>

                    <div class="infomation">
                        <ul class="infomation_ul">
                            <li class="infomation_li_1 font">쿠폰명</li>
                            <li class="infomation_li_2 font">사용여부</li>
                            <li class="infomation_li_2 font">사용기간</li>
                        </ul>
                        <ul class="coupon_ul">
                            <li class="coupon_li_first">첫구매 할인 쿠폰
                                <div class="copun_txt1">20%
                                    <div class="copun_txt2">최대 2만원</div>
                                </div>
                            </li>
                            <li class="coupon_li_1">2022.10.14 ~
                                22.10.30</li>
                            <li class="coupon_li_2">미사용</li>
                        </ul>


                    </div>
                    <div class="prvBtn" >
                        <a href="#"><img src="<c:url value='/img/btn_page_prev.gif'/>" class="btn_left" alt="이전 버튼"></a>
                        <a href="#"><img src="<c:url value='/img/btn_page_next.gif'/>" class="btn_right" alt="다음 버튼"></a>
                    </div>
                </div>





                <!-- 장바구니-->
                <input type="radio" name="rd" id="rd6" >
                <div class="pan">
                    <p class="name boder_bot">
                        장바구니
                    </p>
                    <div class="chk_all_box">
                        <input type="checkbox" class="chk_all input_block"> 전체 선택
                    </div>

                    <div class="infomation">
                        <input type="checkbox" class="chk input_block">
                        <!-- 제품사진 -->
                        <img src="<c:url value='/img/food/6.jpg'/>" class="img">
                        <!-- 계산 -->
                        <div class="box">
                            <!-- 상품설명 -->
                            <div class="product_description">
                                냉동 유기농 애플망고 700g (페루산)
                            </div>
                            <input type="button" value="-" id="btn_minus" class="btn_updown letf input_block" onclick="minus()" >
                            <input type="text" value="0" id="txt_qty" class="input_block">
                            <input type="button" value="+" id="btn_plus" class="btn_updown right input_block" onclick="plus()">
                            <!-- DB에서 상품금액 받아오기 -->
                            <span id="o_price">10000</span>
                            <h3 class="result">합계: <span id="f_price">0</span> 원</h3>
                            <div class="product_delect">x</div>
                        </div>
                    </div>
                    <!-- 총 합계 -->
                    <!-- 몇개를 입력받을지 모르고 같은 변수에 값을 더해서 총합을 만든다. -->
                    <div class="mypage_paybox">
                        <div class="sum">총 합계 : </div>
                        <a href="http://localhost:8080/egan/payment"><div class="payment">결제하기</div></a>
                    </div>
                               <div class="prvBtn" >
                                    <a href="#"><img src="<c:url value='/img/btn_page_prev.gif'/>" class="btn_left" alt="이전 버튼"></a>
                                    <a href="#"><img src="<c:url value='/img/btn_page_next.gif'/>" class="btn_right" alt="다음 버튼"></a>
                                </div>
                </div>



                <!-- 개인정보 수정 -->
                <input type="radio" name="rd" id="rd7" >
                <div class="pan">
                    <div class="personal_information">
                        <form action="#">

                            <div class="font_1" >비밀번호 재확인
                                <br>
                                <div class="login_text">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인해주세요.</div>
                            </div>

                            <div class="id_pw_box">
                                <div class="id_text "> 아이디:</div>
                                <input type="text" class="id input_block" placeholder="아이디를 입력 해주세요." autocomplete autofocus>
                                <div class="pw_text input_block">비밀번호 : </div>
                                <input type="text" class="pw input_block" placeholder="비밀번호를 입력 해주세요." >

                                <input type="submit" class= "login input_block"value="로그인" onclick="login_alert()">
                            </div>
                        </form>
                    </div>

                </div>


            </div>
        </div>
    </div>
</div>
<!-- 푸터 -->
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
<button class="top_btn">TOP</button>
</body>
</html>
