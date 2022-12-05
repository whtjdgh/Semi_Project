
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" ></script>
</head>
<body>
<div class="main_box">
    <div class="contain">
        <div class="main">
            <div class="show_info">
                <div class="show_info_box"><a href="">(등급)김종일님</a></div>
                <div class="show_info_box"><a href="">쿠폰</a></div>
                <div class="show_info_box"><a href="">다음달 예상등급 ></a></div>
                <div class="show_info_box"><a href="">주문내역 ></a></div>
            </div>

<!-- aside -->
            <div class="info">
                <ul>
                    <label for="rd1" class="box1">주문내역</label>
                    <label for="" class="box1" onclick="diriver_alert()">배송지 관리</label>
                    <label for="rd3" class="box1">상품 후기</label>
                    <label for="rd4" class="box1">상품 문의</label>
                    <label for="rd5" class="box1">쿠폰</label>
                    <label for="rd6" class="box1">장바구니</label>
                    <label for="rd7" class="box1">개인정보 수정</label>
                </ul>

<!--   주문내역 -->
                <input type="radio" name="rd" id="rd1" checked >
                <div class="pan">
                    <p class="name">
                        주문내역
                        <select name="sel" class="text_button">
                            <option value="web1">1개월</option>
                            <option value="web2" selected>3개월</option>
                            <option value="web3" >6개월</option>
                            <option value="web4" >1년</option>
                        </select>
                    </p>

                    <div class="infomation">
                        <!-- 제품사진 클릭시 이동 -->
                        <a href="#"><img src="../프젝 이미지/생활용품/1-1.jpg" class="img" onclick="img_alert()">
                        </a>

                        <div class="infomation_box">
                            <table>
                                <colgroup>
                                    <col style="width:100px;">
                                    <col style="width:350px;">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <td>상품명</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>주문번호</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>주문일자</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td >결제금액</td>
                                    <td></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <!--배송상태  -->
                        <div class="diriver">
                            배송완료
                        </div>
                    </div>
                    <a href="#"><img src="../프젝 이미지/btn_page_prev.gif" class="btn_left" alt="이전 버튼"></a>
                    <a href="#"><img src="../프젝 이미지/btn_page_next.gif" class="btn_right" alt="다음 버튼"></a>
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
                        <div class="review_can">작성가능 후기(0)</div>
                        <div class="review_done" onclick="review_done_alert()">작성완료 후기(0)</div>
                    </div>

                    <div class="review_content">
                        <img src="../프젝 이미지/스킨케어/1-1.jpg" class="review_content_img" alt="">
                        <div class="review_product"> 제품명</div>
                        <label type="button" id="modal-open" >
                            <div class="review_content_botton">작성하기</div>
                        </label>
                    </div>

                    <div class="container">
                        <div class="popup-wrap" id="popup_product">
                            <div class="popup">
                                <div class="popup-head">
                                    <div class="head-title">
                                        PRODUCT REVIEW</div>
                                    <div class="product_box">
                                        <img src="../프젝 이미지/생활용품/1-1.jpg" class="img_size" alt="">
                                        <div class="product_name">
                                            리뷰할 제품명
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
                                    <span class="pop-btn close" id="new_popup_product">등록하기</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="#"><img src="../프젝 이미지/btn_page_prev.gif" class="btn_left" alt="이전 버튼"></a>
                    <a href="#"><img src="../프젝 이미지/btn_page_next.gif" class="btn_right" alt="다음 버튼"></a>
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
                            <li class="infomation_li_2 font">작성일</li>
                            <li class="infomation_li_2 font">답변상태</li>
                        </ul>

                        <label for="toggle" class="toggleSwitch">
                            <div class="content_area " id="content_area_tep">
                                <a href="#">
                                    <img src="../프젝 이미지/생활용품/1-1.jpg" class="img" onclick="img_alert()">
                                </a>
                                <div class="contact_information">
                                    문의사항 제목
                                </div>
                                <div class="date_created ">
                                    22.11.30
                                </div>
                                <div class="answer">
                                    답변대기
                                </div>
                            </div>

                            <div class="questions_tab toggleButton">
                                Q.문의 내용입니다.
                                <div class="questions_tab_answer">A.답변</div>
                                <label type="button" id="modal_open_correction" class="questions_tab_correction" >수정</label>
                                <label type="button" id="modal-open2" class="questions_tab_delete" >삭제</label>
                            </div >

                        </label>

    <!-- 수정 팝업 -->
                        <div class="container">
                            <div class="popup-wrap" id="popup_correction">
                                <div class="popup">

                                    <div class="popup-head">
                                        <div class="head-title">
                                            PRODUCT Q&A</div>
                                        <div class="product_box">
                                            <img src="../프젝 이미지/생활용품/1-1.jpg" class="img_size" alt="">
                                            <div class="product_name">
                                                문의할 제품명
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
                                        <span class="pop-btn close" id="new_popup">등록하기</span>
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
                                                <h3>후기가 등록되었습니다.</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="popup-foot3">
                                        <span id="confirm2">확인</span>
                                    </div>
                                </div>
                            </div>
                        </div>
    <!-- 삭제  팝업 -->
                        <div class="container">
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
                    <a href="#"><img src="../프젝 이미지/btn_page_prev.gif" class="btn_left" alt="이전 버튼"></a>
                    <a href="#"><img src="../프젝 이미지/btn_page_next.gif" class="btn_right" alt="다음 버튼"></a>

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
                            <li class="infomation_li_2 font">사용가능기간</li>
                            <li class="infomation_li_2 font">사용여부</li>
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
                    <a href="#"><img src="../프젝 이미지/btn_page_prev.gif" class="btn_left" alt="이전 버튼"></a>
                    <a href="#"><img src="../프젝 이미지/btn_page_next.gif" class="btn_right" alt="다음 버튼"></a>

                </div>

<!-- 장바구니-->
                <input type="radio" name="rd" id="rd6" >
                <div class="pan">
                    <p class="name">
                        장바구니
                    </p>
                    <div class="chk_all_box">
                        <input type="checkbox" class="chk_all input_block"> 전체 선택
                    </div>

                    <div class="infomation">
                        <input type="checkbox" class="chk input_block">
                        <!-- 제품사진 -->
                        <a href="">
                            <img src="../프젝 이미지/생활용품/1-1.jpg" alt="" class="img">
                        </a>
                        <!-- 계산 -->
                        <div class="box">
                            <!-- 상품설명 -->
                            <div class="product_description">
                                상품에 대한 설명
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
                    <div class="sum">총 합계 : </div>
                    <a href="#"><div class="payment" onclick="payment_alert()">결제하기</div></a>
                    <a href="#"><img src="../프젝 이미지/btn_page_prev.gif" class="btn_left" alt="이전 버튼"></a>
                    <a href="#"><img src="../프젝 이미지/btn_page_next.gif" class="btn_right" alt="다음 버튼"></a>
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
</body>
</html>
