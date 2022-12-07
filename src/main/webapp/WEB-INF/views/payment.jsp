<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="<c:url value='/css/payment.css'/> ">

  <title>Document</title>


</head>
<body>
<div id="wrap">
  <header>
    <div class="header">
      <div class="logo">로고</div>
      <ul class="header_ul1">
        <li>브랜드소개</li>
        <li>SHOP</li>
        <li>커뮤니티</li>
      </ul>

      <ul class="header_ul2">
        <li>검색</li>
        <li>장바구니</li>
        <li>로그인/회원가입</li>
      </ul>

    </div>
  </header>


  <div class="contain">
    <div class="main">
      <div class="box">주문서</div>
      <div class="order_product">
        <div class="order_text">주문상품</div>
      </div>
      <div class="box2">
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
          <div class="inner_box">배송지
          </div>
          <div class="inner_box2">
            <ul>
              <li>서울특별시 강남구</li>
              <li>서울특별시 강남구 테헤란로 123</li>
            </ul>
          </div>
        </div>
        <div class="box5">
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


      <div class="order_product">
        <div class="order_text">쿠폰</div>
      </div>

      <div class="box5">
        <div class="inner_box">쿠폰 적용</div>
        <div class="inner_box2">
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

</div>

</div>


<script>
  function test(){
    alert("123");
  }

  function go_buy(){
    alert("123");
  }

</script>
</body>
</html>