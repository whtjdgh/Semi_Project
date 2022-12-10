<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Egan</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script defer src="<c:url value='/js/h_f.js'/>"></script>
    <script defer src="<c:url value='/js/header_search.js'/>"></script>
    <script defer src="<c:url value='/js/topBtn.js'/>"></script>
    <script defer src="<c:url value='/js/deal.js'/>"></script>
    <link rel="stylesheet" href="<c:url value='/css/egan_header.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/h_f_r.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/header_search.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/deal.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/popup.css'/>">

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

        <div class="logo"><a href="http://localhost:8080/egan/main">Egan</a></div>

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
                <div class="search"></div>
            </div>
        </div>

    </div>
</div>
<!-- 본문 -->
<div id="wrap">
    <div class="container">
        <div class="detail_box">
            <div class="detail_img">
                <img src="<c:url value='${dto.saveImage}'/>" alt="">
            </div>
            <div class="detail_imfo">
                <div class="d_txt">
                    <div class="dt_title">${dto.p_name}</div>
                    <div class="price_txt_box">
                        <div class="o_price o_p_c"><del>${dto.p_price}</del></div>
                        <div class="s_price s_p_c">10,000원</div>
                    </div>
                    <p class="dt_title_txt">Lorem ipsum dolor sit amet consectetur</p>
                    <p class="dt_title_txt">Lorem ipsum dolor sit amet consectetur</p>
                </div>
                <table class="detail_tb">
                    <tr>
                        <td class="det_txt">소비자가</td>
                        <td id="o_price"><del>${dto.p_price}</del></td>
                    </tr>
                    <tr>
                        <td class="det_txt">판매가</td>
                        <td id="s_price">10,000원</td>
                    </tr>
                    <tr>
                        <td class="det_txt">배송</td>
                        <td>
                            <select id="sel" name="del_choose">
                                <option value="tnfudtl">수령시 결제</option>
                                <option value="rnaotl">구매시 결제</option>
                            </select>
                            <p class="sel_txt">배송비 3,000원 (30,000원 이상 구매시 무료)</p>
                        </td>
                    </tr>
                </table>
                <div class="p_big_box">
                    <span>구매수량</span>
                    <div class="price_count">
                        <input type="button" value="-" id="p_minus" class="btn_qty">
                        <input class="p_val" id="txt_qty" value="1" name="item_count" readonly>
                        <input type="button" value="+" id="p_plus" class="btn_qty">
                    </div>
                </div>
                <div class="pay_box">
                    <input type="button" value="장바구니" id="btn_cart">
                    <input type="button" value="결제하기" id="btn_pay">
                </div>
                <div class="total_price">최종금액 : 0원</div>
            </div>
        </div>
        <!-- 메인 탭 -->
        <div class="item_ex_main">
            <div class="item_ex_tab">
                <div class="tab"><a href="#item_ex">제품설명</a></div>
                <div class="tab"><a href="#item_ex_dt">제품상세</a></div>
                <div class="tab"><a href="#item_review">리뷰</a></div>
                <div class="tab"><a href="#item_qna">문의</a></div>
            </div>
            <div class="detail_item_box">
                <div class="tb_dt" id="item_ex">
                    <img src="<c:url value='${dto.detail_image1}'/>" alt="${dto.p_name}">
                </div>
                <div class="tb_dt" id="item_ex_dt">
                    <img src="<c:url value='${dto.detail_image2}'/>" alt="${dto.p_name}">
                </div>
                <!-- 리뷰 -->
                <div class="tb_dt" id="item_review">
                    <div class="review_txt">
                        <div class="review_txt_title">PRODUCT REVIEW</div>
                        <div class="review_ex">
                            <p>· 상품에 대한 리뷰를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판 관리자에 의해 삭제될 수 있습니다.</p>
                        </div>
                    </div>
                    <div class="review_box">
                        <table class="rev_table">
                            <thead class="rev_thead">
                            <tr class="review_tr move_tr ">
                                <th class="rv_th_css rv_th_num">번호</th>
                                <th class="rv_th_css rv_th_title">제목</th>
                                <th class="rv_th_css rv_th_writer">작성자</th>
                                <th class="rv_th_css rv_th_date">작성일</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="review_tr move_tr">
                                <td class="rv_tb_css rv_tb_num">1</td>
                                <td class="rv_tb_css rv_tb_title">괜찮은 상품이네요~</td>
                                <td class="rv_tb_css rv_tb_writer">asdf</td>
                                <td class="rv_tb_css rv_tb_date">2022-01-01</td>
                            </tr>
                            <tr class="review_tr move_tr tab_content">
                                <td>
                                    <div class="rev_box">
                                        <div class="rv_content">
                                            상품 너무 좋아요~ 재구매 의향 있습니다.
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="review_tr move_tr">
                                <td class="rv_tb_css rv_tb_num">2</td>
                                <td class="rv_tb_css rv_tb_title">이건 좀 별로예요</td>
                                <td class="rv_tb_css rv_tb_writer">asdf</td>
                                <td class="rv_tb_css rv_tb_date">2022-01-01</td>
                            </tr>
                            <tr class="review_tr move_tr tab_content">
                                <td>
                                    <div class="rev_box">
                                        <div class="rv_content">가격에 비해 퀄리티가 별로네요</div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="review_tr move_tr">
                                <td class="rv_tb_css rv_tb_num">3</td>
                                <td class="rv_tb_css rv_tb_title">제가 원하던 상품이에요</td>
                                <td class="rv_tb_css rv_tb_writer">asdf</td>
                                <td class="rv_tb_css rv_tb_date">2022-01-01</td>
                            </tr>
                            <tr class="review_tr move_tr tab_content">
                                <td>
                                    <div class="rev_box">
                                        <div class="rv_content">제가 찾던 상품이에요 다음에 또 구매할게요!</div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="review_tr move_tr">
                                <td colspan="4">
                                    <input type="button" name="rv_btn" id="rev_btn" value="리뷰등록">
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
                <!-- 문의 -->
                <div class="tb_dt" id="item_qna">
                    <div class="item_qna_txt">
                        <div class="item_qna_title">PRODUCT Q&A</div>
                        <div class="item_qna_ex">
                            <p>· 상품에 대 한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판 관리자에 의해 삭제될 수 있습니다.</p>
                        </div>
                    </div>
                    <div class="qna_box">
                        <table class="qna_table">
                            <thead class="qna_thead">
                            <tr class="QnA_tr move_tr ">
                                <th class="qna_th_css qna_th_num">번호</th>
                                <th class="qna_th_css qna_th_title">제목</th>
                                <th class="qna_th_css qna_th_writer">작성자</th>
                                <th class="qna_th_css qna_th_date">작성일</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="QnA_tr move_tr">
                                <td class="qna_tb_css qna_tb_num">1</td>
                                <td class="qna_tb_css qna_tb_title">혹시 배송은 언제까지 될까요?
                                </td>
                                <td class="qna_tb_css qna_tb_writer">asdf</td>
                                <td class="qna_tb_css qna_tb_date">2022-01-01</td>
                                <td class="qna_tb_css qna_tb_answer">답변대기</td>
                            </tr>
                            <tr class="QnA_tr move_tr tab_content">
                                <td>
                                    <div class="qNa_box">
                                        <div class="rv_content">이번주까지 써야하는데 얼른 배송해주세요</div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="QnA_tr move_tr">
                                <td class="rv_tb_css rv_tb_num">2</td>
                                <td class="rv_tb_css rv_tb_title">재입고 일정이 어떻게 되는지 궁금합니다.</td>
                                <td class="rv_tb_css rv_tb_writer">asdf</td>
                                <td class="rv_tb_css rv_tb_date">2022-01-01</td>
                                <td class="qna_tb_css qna_tb_answer">답변대기</td>
                            </tr>
                            <tr class="QnA_tr move_tr tab_content">
                                <td>
                                    <div class="qNa_box">
                                        <div class="rv_content">재입고 일정을 알려주세요</div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="QnA_tr move_tr">
                                <td class="rv_tb_css rv_tb_num">3</td>
                                <td class="rv_tb_css rv_tb_title">무슨 문의를 해야할까요</td>
                                <td class="rv_tb_css rv_tb_writer">asdf</td>
                                <td class="rv_tb_css rv_tb_date">2022-01-01</td>
                                <td class="qna_tb_css qna_tb_answer_o">답변완료</td>
                            </tr>
                            <tr class="QnA_tr move_tr tab_content">
                                <td>
                                    <div class="qNa_box">
                                        <div class="rv_content">물어볼게 없네요</div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="QnA_tr move_tr">
                                <td colspan="4">
                                    <input type="button" name="qna_btn" id="qna_btn" value="문의등록">
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 팝업 -->
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
    <!-- 장바구니 팝업 -->
    <div class="cart_popup">
        <div class="cart_txt">
            <p>장바구니에 상품이 담겼습니다.</p>
            <p>장바구니로 이동하시겠습니까?</p>
        </div>
        <div class="cart_btn">
            <input type="button" value="계속 쇼핑" id="cart_stay_btn">
            <input type="button" value="장바구니로 이동" id="cart_commit_btn" name="cartChk">
        </div>
    </div>
    <!-- 리뷰 팝업 -->
    <div class="review_popup">
        <div class="rv_popup_txt">
            <div class="rv_popup_txt_title">PRODUCT REVIEW</div>
            <div class="review_item_box">
                <div class="item_img">
                    <img src="<c:url value='${dto.saveImage}'/>" alt="">
                </div>
                <div class="item_title">${dto.p_name}</div>
            </div>
        </div>
        <div class="review_input_box">
            <div class="rv_input_title">
                <p>제목</p>
                <input type="text" id="review_title" name="review_title" placeholder="제목을 입력하세요">
            </div>
            <div class="rv_input_main">
                <p>내용</p>
                <input type="text" id="review_main" name="review_main" placeholder="내용을 입력하세요">
            </div>
        </div>
        <div class="review_btn_box">
            <input type="button" id="review_cancle_btn" name="review_cancle" value="취소">
            <input type="button" id="review_commit_btn" name="review_commit" value="등록">
        </div>
    </div>
    <!-- 문의 팝업 -->
    <div class="qna_popup">
        <div class="qna_popup_txt">
            <div class="qna_popup_txt_title">PRODUCT REVIEW</div>
            <div class="qna_item_box">
                <div class="item_img"><img src="<c:url value='${dto.saveImage}'/>" alt=""></div>
                <div class="item_title">${dto.p_name}</div>
            </div>
        </div>
        <div class="qna_input_box">
            <div class="qna_input_title">
                <p>제목</p>
                <input type="text" id="qna_popup_title" name="qna_popup_title" placeholder="제목을 입력하세요">
            </div>
            <div class="qna_input_main">
                <p>내용</p>
                <input type="text" id="qna_popup_main" name="qna_popup_main" placeholder="내용을 입력하세요">
            </div>
        </div>
        <div class="qna_btn_box">
            <div class="scr_chk_box">
<!--                 <input type="checkbox" name="qna_secret_chk" id="qna_secret_chk"> -->
                <span>비밀글여부</span>
                 <input type="checkbox" name="qna_secret_chk" id="qna_secret_chk">
                <span>비밀번호</span>
                <input type="password" name="qna_secret_pw" id="qna_secret_pw">
            </div>
            <input type="button" id="qna_cancle_btn" name="qna_cancle" value="취소">
            <input type="button" id="qna_commit_btn" name="qna_commit" value="등록">
        </div>
    </div>
    <!-- 작성중인 글 취소 팝업 -->
    <div class="wrt_chk_pop">
        <div class="wrt_chk_title">
            <p>작성중인 글이 있습니다.</p>
            <p>취소하시겠습니까?</p>
        </div>
        <div class="wrt_chk_btn_box">
            <input type="button" value="취소" id="wrt_cancle_btn" name="wrt_cancle_btn">
            <input type="button" value="확인" id="wrt_keep_going_btn" name="wrt_keep_going_btn">
        </div>
    </div>
</div>
<!-- footer -->
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
<!-- 레이어 -->
<div class="layer"></div>
<!-- 탑 버튼 -->
<button class="top_btn top_show">TOP</button>
<script>
    $(document).ready(function () {
        $(document).on('click', '#btn_cart', function () {
            <c:if test="${m_id != null}">
                $('.cart_popup').css({display:'block'})
                $('.layer').css({display:'block'})
                $('html').css({overflowY:'hidden'})
            </c:if>

            <c:if test="${m_id == null}">
                $('.logChk_popup').css({display:'block'})
                $('.layer').css({display:'block'})
                $('html').css({overflowY:'hidden'})
            </c:if>
        })
        $(document).on('click', '#btn_pay', function () {
            <c:if test="${m_id != null}">
            location.href="http://localhost:8080/egan/myPage"
            </c:if>

            <c:if test="${m_id == null}">
            $('.logChk_popup').css({display:'block'})
            $('.layer').css({display:'block'})
            $('html').css({overflowY:'hidden'})
            </c:if>
        })
        $(document).on('click', '#rev_btn', function () {
            <c:if test="${m_id != null}">
            $('.review_popup').css({display:'block'})
            $('.layer').css({display:'block'})
            $('html').css({overflowY:'hidden'})
            </c:if>

            <c:if test="${m_id == null}">
            $('.logChk_popup').css({display:'block'})
            $('.layer').css({display:'block'})
            $('html').css({overflowY:'hidden'})
            </c:if>
        })
        $(document).on('click', '#qna_btn', function () {
            <c:if test="${m_id != null}">
            $('.qna_popup').css({display:'block'})
            $('.layer').css({display:'block'})
            $('html').css({overflowY:'hidden'})
            </c:if>

            <c:if test="${m_id == null}">
            $('.logChk_popup').css({display:'block'})
            $('.layer').css({display:'block'})
            $('html').css({overflowY:'hidden'})
            </c:if>
        })

    })
</script>
</body>

</html>
