<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 구글 웹 폰트 -->
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
	<!-- 제이쿼리 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<!-- css 외부 링크 -->
	<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/cart.css" type="text/css">
	<!-- 파비콘 -->
    <link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png">
	<title>장바구니</title>
</head>

<body>
	<div class="content_subject"><span style="letter-spacing: 6px;">장바구니</span></div>

	<!-- 장바구니 리스트 -->
			<form action="" id="cartForm" name="cartForm" class="cartForm" method="post">
				<!-- 장바구니 리스트 -->
				<div class="content_middle_section"></div>
				<!-- 장바구니 가격 합계 -->
				<!-- cartInfo -->
				<div id="cart" name="cart" class="cart">
					<table class="cart_title">
						<tbody>
							<tr>
								<th class="td_width_1"> <!-- all_check_input -->
									<input type="checkbox" class="all_check_input check_input_size" checked="checked"><span class="all_chcek_span"></span>
								</th>
								<th class="td_width_2"></th>
								<th class="td_width_3">상품명 / 옵션</th>
								<th class="td_width_4">수량</th>
								<th class="td_width_4">상품 금액</th>
								<th class="td_width_4">합계 금액</th>
								<th class="td_width_4">삭제</th>
							</tr>
						</tbody>
					</table>
					<table class="cart_table">
						<tbody>
							<c:forEach var="prod" items="${ cartList }">
								<c:choose>
									<c:when test="${ cartList.size() == 0 }">
										<tr colspan="6">
											<td>장바구니가 비어있습니다.</td>
										</tr>
									</c:when>
									<c:otherwise>
										<tr>
											<td class="td_width_1 cart_info_td">
												<input type="checkbox" class="individual_cart_checkbox check_input_size" checked="checked">
												<input type="hidden" class="individual_prodPrice_input" value="${ prod.goods.price }">
												<input type="hidden" class="individual_amount_input" value="${ prod.amount }">
												<input type="hidden" class="individual_totalPrice_input" value="${ prod.goods.price * prod.amount }">
											</td>
											<td class="td_width_2">
												<%-- <div class="image_wrap" data-prodid="${ prod.imageList[0].prodNo }" data-path="${ prod.imageList[0].fileRoot }" data-uuid="${ prod.imageList[0].imgId }" data-filename="${ prod.imageList[0].originFileName }">
													<!-- <img> 이미지 사용 예시 -->
													<div class="pdtPhoto"><img
														src="../resources/images/5.jpeg"
														width="150" height="150" alt="">
													</div>
													<!-- 이미지 사용 예시 -->
												</div> --%>
											</td>
											<td class="td_width_3">
												<div class="detail">
													<strong style="font-size: 15px;">${ prod.goods.goodsName }</strong>
													<div class="detail2">
														<p>용량 200g</p>
														<p>분쇄도 갈지 않음</p>
													</div>
												</div>
											</td>
											<td class="td_width_4 table_text_align_center">
												<div class="table_text_align_center amount_div">
													<button class="amount_btn btn_minus">-</button>
													<input type="text" value="1" name="amount" class="amount_input">
													<button class="amount_btn btn_plus">+</button>
												</div>
												<button class="btn_modify" onclick="updateCart(${ prod.cartNo })">변경</button>
											</td>
											<td class="td_width_4 price_td">
												<sapn>
													<fmt:formatNumber value="${ prod.goods.price }" pattern="#,###,### 원"/>
												</sapn>
											</td>
											<td class="td_width_4 table_text_align_center">
												<fmt:formatNumber value="${ prod.goods.price * prod.amount }" pattern="#,###,### 원"/>
											</td>
											<td class="td_width_4 table_text_align_center">
												<button class="btn_delete" data-cartid="${ prod.cartNo }" onclick="deleteCart()"><strong style="font-size: large;">X</strong></button>
											</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</tbody>
					</table>
					<table class="list_table">
					</table>
				</div>
				
				<div class="etc">
					<div class="more">
						<a href="#"><span style="font-size: small;">&lt;</span>&nbsp;&nbsp;쇼핑 계속 하기</a>
					</div>
					<div class="btn_select_delete">
						<button type="button" class="btn_select" onclick="deleteCart()">선택 상품 삭제</button>
					</div>
				</div>
				<div class="boundary_div">구분영역</div>

				<!-- 가격 총합 -->
				<div class="cart_cal">
					<div class="total_wrap">
						<table class="cart_cal_td">
							<tr>
								<td>
									<table>
										<tr class="cart_cal_tr">
											<td>총 주문 금액</td>
											<td>총 주문 상품 수</td>
											<td><span></span></td>
											<td>배송비</td>
											<td><span></span></td>
											<td>합계</td>
										</tr>
										<tr>
											<td><span class="total_price" name="sum"></span> 원</td>
											<td><span class="total_cnt"></span>개</td>
											<td><strong style="font-size: x-large;">+</strong></td>
											<td><span class="delivery"></span> 원</td>
											<td><strong style="font-size: x-large;">=</strong></td>
											<td><span class="total_cal"></span> 원</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</div>
				</div>

				<div class="btnArea ct tPad30">
					<button type="button" class="btn btnS1 btnGry btnW160" onclick="">선택 상품 주문</button>
					<button type="button" class="btn btnS1 btnRed btnW160" onclick="">전체 상품 주문</button>
				</div>
			</form>

	<!-- form 태그를 post 방식으로 제출 -->
	<form name="cartForm" method="post">
		<input type="hidden" name="cartNo" value="${ prod.cartNo }">
	</form>

	<script type="text/javascript">
        function deleteCart(){
			if(confirm('선택하신 상품을 삭제하시겠습니까?')){
				document.forms.cartForm.action = "${ pageContext.servletContext.contextPath }/cart/delete";
				document.forms.cartForm.submit();
			} else {
				document.forms.cartForm.action = "${ pageContext.servletContext.contextPath }/cart/list";
			}
		}
        
        function updateCart(cartNo) {
        	document.forms.cartForm.action = "${ pageContext.servletContext.contextPath }/cart/update";
        	document.forms.cartForm.submit();
        }
    </script>

	<!-- footer import -->
    <div data-include-path="footer.html"></div>

    <script>
        window.addEventListener('load', function () {
            var allElements = document.getElementsByTagName('*');
            Array.prototype.forEach.call(allElements, function (el) {
                var includePath = el.dataset.includePath;
                if (includePath) {
                    var xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function () {
                        if (this.readyState == 4 && this.status == 200) {
                            el.outerHTML = this.responseText;
                        }
                    };
                    xhttp.open('GET', includePath, true);
                    xhttp.send();
                }
            });
        });
    </script>

	<script src="${ pageContext.servletContext.contextPath }/resources/js/cart.js"></script>

</body>
</html>