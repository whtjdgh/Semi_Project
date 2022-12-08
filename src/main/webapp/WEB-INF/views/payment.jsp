<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script defer src="<c:url value='/js/h_f.js'/>"></script>
    <script defer src="<c:url value='/js/header_search.js'/>"></script>
    <script defer src="<c:url value='/js/topBtn.js'/>"></script>
    <link rel="stylesheet" href="<c:url value='/css/egan_header.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/h_f_r.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/header_search.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/payment.css'/> ">
    <title>Document</title>


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
<div class="header">
    <div class="content_area">
        <!-- 햄버거 버튼 -->
        <div class="ham_box">
            <div class="ham_line" id="line_top"></div>
            <div class="ham_line" id="line_mid"></div>
            <div class="ham_line" id="line_bot"></div>
            <div class="ham_menu">
                <ul class="ham_ul">
                    <li><a href="http://localhost:8080/egan/login">Login</a></li>
                    <li><a href="http://localhost:8080/egan/real_register">Register</a></li>
                    <li class="hr"></li>
                    <li><a href="http://localhost:8080/egan/detail">SHOP</a></li>
                    <li><a href="http://localhost:8080/egan/brand">BRAND</a></li>
                    <li><a href="http://localhost:8080/egan/brand">COMMUNITY</a></li>

                </ul>
            </div>
        </div>

        <div class="logo"><a href="http://localhost:8080/egan/main">Egan</a></div>

        <div class="nav">
            <a href="http://localhost:8080/egan/detail">SHOP</a>
            <a href="http://localhost:8080/egan/brand">BRAND</a>
            <a href="http://localhost:8080/egan/brand">COMMUNITY</a>
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
<div id="wrap">
  <div class="contain">
    <div class="main">
      <div class="box">주문서</div>
      <div class="order_product">
        <div class="order_text">주문상품</div>
      </div>
      <div class="product_box">
        <ul>
          <li class="product_li">[채:식구] 상품명</li>
          <li class="product_li">[채:식구] 상품명</li>
          <li class="product_li">[채:식구] 상품명</li>

        </ul>
      </div>

      <div class="box3">
        <div class="adderss">
          <div class="adderss_text">배송정보</div>
          <button class="btn_modify" onclick="test()">수정</button>
        </div>


        <div class="box5">
            <div class="add_box">
                <div class="inner_box">배송지
                </div>
                <div class="inner_box2">
                    <ul>
                        <li>서울특별시 강남구</li>
                        <li>서울특별시 강남구 테헤란로 123</li>
                    </ul>
                </div>
            </div>
            </div>
        <div class="box5">
            <div class="add_box">
                <div class="detail">주문자정보</div>
                <div class="inner_detail">
                    <ul>
                        <li>홍길동</li>
                        <li>010-1111-2222</li>
                        <li>문앞/자유출입</li>
                    </ul>
                </div>
            </div>
        </div>

      </div>


      <div class="order_product">
        <div class="order_text">쿠폰</div>
      </div>

      <div class="cupon_box">
        <div class="cupon_txt">쿠폰 적용</div>
        <div class="cupon_sel">
          <select class="select_cupon" name="cupon" required>
            <option value="" selected>사용 가능 쿠폰</option>
            <option value="">123</option>
            <option value="">456</option>
          </select>
        </div>
      </div>


      <div class="order_product">
        <div class="order_text">최종결제금액</div>
      </div>


      <div class="buy_outer">
        <div class="outer">
          <div class="buy_box">주문금액</div>
          <div class="money">원</div>
        </div>
      </div>

      <div class="buy_outer_in">
        <div class="outer_tmp">
          <div class="product_price">상품금액</div>
          <div class="money_in">원</div>
        </div>
      </div>

      <div class="buy_outer_in">
        <div class="outer_tmp">
          <div class="sale_price">할인금액</div>
          <div class="money_in">원</div>
        </div>
      </div>

      <div class="buy_outer">
        <div class="outer">
          <div class="buy_box">배송비</div>
          <div class="money">원</div>
        </div>
      </div>

      <div class="buy_outer">
        <div class="outer">
          <div class="buy_box">쿠폰할인</div>
          <div class="money">원</div>
        </div>
      </div>

      <div class="buy_outer">
        <div class="outer">
          <div class="buy_box">최종결제금액</div>
          <div class="money">원</div>
        </div>
      </div>


      <div class="order_product1">
        <div class="order_text">결제수단</div>
      </div>


      <div class="pay_box">
        <div class="pay_inner_box">신용카드</div>
        <div class="pay_inner_box">무통장입금</div>
        <div class="pay_inner_box">결제수단</div>
        <div class="pay_inner_box">결제수단</div>
      </div>

      <div class="order_product1">
      </div>

      <div class="go_buy" onclick="go_buy()">결제하기</div>

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
<button class="top_btn top_show">TOP</button>
</div>

</div>


<script>
  function test(){
    alert("123");
  }

  function go_buy(){
    alert("123");
  }

  $(document).ready(function () {
      let box_length = $('.pay_inner_box').length;
      for(let i=0; i<box_length; i++) {
          $('.pay_inner_box').eq(i).mouseenter(function () {
              $('.pay_inner_box').eq(i).addClass('color_active')
          })
          $('.pay_inner_box').mouseleave(function () {
              $('.pay_inner_box').removeClass('color_active')
          })
      }
  })
</script>
</body>
</html>