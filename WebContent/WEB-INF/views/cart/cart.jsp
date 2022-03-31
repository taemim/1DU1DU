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
	
	<!-- header import -->
    <jsp:include page="../main/header.jsp"/>

	<div class="padding_top">
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
											<input type="checkbox" class="individual_cart_checkbox check_input_size" checked="checked"
												class="chkbox" value="${ prod.cartNo }" name="no">
											<input type="hidden" class="individual_prodPrice_input" name="prodPrice" value="${ prod.goods.price }">
											<input type="hidden" class="individual_amount_input" name="amount" value="${ prod.amount }">
											<input type="hidden" class="individual_totalPrice_input" name="totalPrice" value="${ prod.goods.price * prod.amount }">
										</td>
										<td class="td_width_2">
											<c:forEach var="goods" items="${ goodsList }">
												<div class="image_wrap">
													<img src="${ pageContext.servletContext.contextPath }${ prod.imgList[0].thumbnailPath }" width="100" alt="원두1" title="원두1" class="middle">
													<%-- <img src="${ pageContext.servletContext.contextPath }${ goods.imgList[0].thumbnailPath }" width="150" height="150"> --%>
													<!-- <img> 이미지 사용 예시 -->
													<!-- <div class="pdtPhoto"><img
														src="../resources/images/5.jpeg"
														width="150" height="150" alt="">
													</div> -->
													<!-- 이미지 사용 예시 -->
												</div>
											</c:forEach>
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
										<td class="td_width_4 table_text_align_center amount">
											<div class="table_text_align_center amount_div" id="modify">
												<button type="button" class="amount_btn btn_minus" name="minus">-</button>
												<input type="text" value="${ prod.amount }" name="amount" class="amount_input">
												<button type="button" class="amount_btn btn_plus" name="plus">+</button>
											</div>
											<!-- 쿼리 수행 결과 result = 1이 나왔지만, 실제로 바뀌지는 않았다.
												 => element를 찾아가서 그 행만 변경되게 만들자. -->
											<button class="btn_modify" type="button" onclick="updateCart(this, ${ prod.cartNo })">변경</button>
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
											<button type="button" class="btn_delete" onclick="deleteOneCart()"><strong style="font-size: large;">X</strong></button>
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
					<a href="${ pageContext.servletContext.contextPath }/goods/list"><span style="font-size: small;">&lt;</span>&nbsp;&nbsp;쇼핑 계속 하기</a>
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
										<td><span class="total_price" id="total_price"></span> 원</td>
										<td><span class="total_cnt"></span>개</td>
										<td><strong style="font-size: x-large;">+</strong></td>
										<td><span class="delivery"></span> 원</td>
										<td><strong style="font-size: x-large;">=</strong></td>
										<td>
											<%-- <fmt:formatNumber value="${ prod.goods.price * prod.amount }" pattern="#,###,### 원"/> --%>
											<span class="total_cal" id="total_cal"></span> 원
										</td>
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
	</div>

	<!-- update를 위한 form -->
	<form name="updateForm" method="post">
		<input type="hidden" name="no" id="updateCartNo">
		<input type="hidden" name="amount" id="updateAmount">
	</form>

	<script type="text/javascript">
		function deleteCart(){
			if(confirm('선택하신 상품을 삭제하시겠습니까?')){
				document.forms.cartForm.action = "${ pageContext.servletContext.contextPath }/cart/delete";
				document.forms.cartForm.submit();
			} else {
				location.href = "${ pageContext.servletContext.contextPath }/cart/list";
			}
		}
		
        function deleteOneCart(){
			if(confirm('개별 상품을 삭제하시겠습니까?')){
				document.forms.cartForm.action = "${ pageContext.servletContext.contextPath }/cart/deleteone";
				document.forms.cartForm.submit();
			} else {
				location.href = "${ pageContext.servletContext.contextPath }/cart/list";
			}
		}
        
        /* onclick="updateCart(this, ${ prod.cartNo })"
           updateForm의 id : updateCartNo & updateAmount
           <td class="td_width_4 table_text_align_center amount">의 amount 클래스
           elem(<td>)의 가장 가까운 amount라는 이름을 가진 class를 찾고, querySelector로 amount_input이라는 이름을 가진 class를 찾아서 value를 가져온다. */
        function updateCart(elem, cartNo) {
        	document.getElementById('updateCartNo').value = cartNo;
        	document.getElementById('updateAmount').value = elem.closest('.amount').querySelector('.amount_input').value;
        	
        	document.forms.updateForm.action = "${ pageContext.servletContext.contextPath }/cart/update";
        	document.forms.updateForm.submit();
        }
    </script>

	<script type="text/javascript">
		// 전체 선택 시 개별 모두 체크
		$(".all_check_input").click(function() {
	
		    if($(".all_check_input").prop("checked")) {
		        $(".individual_cart_checkbox").prop("checked", true);
		    } else {
		        $(".individual_cart_checkbox").prop("checked", false);
		    }
		});
		// 개별 체크 선택 시 전체 선택 해제
		$(".individual_cart_checkbox").click(function() {
		    $(".all_check_input").prop("checked", false);
		});
		
		// 수량 조절 버튼 +, -
		// 이거는 모든 cartNo가 전부 동작함
		/* let quantity = $(".amount_input").val();
		$(".btn_plus").on("click", function(){
		    $(".amount_input").val(++quantity);
		});
		$(".btn_minus").on("click", function(){
			if(quantity > 1){
		        $(".amount_input").val(--quantity);	
		    }
		}); */
		
		// 선택한 cartNo만 동작
		$(".btn_plus").on("click", function(){
			let quantity = $(this).parent("div").find("input").val();
			$(this).parent("div").find("input").val(++quantity);
		});
		$(".btn_minus").on("click", function(){
			let quantity = $(this).parent("div").find("input").val();
			if(quantity > 1){
				$(this).parent("div").find("input").val(--quantity);		
			}
		});
		
	</script>
	
	<%-- <script src="${ pageContext.servletContext.contextPath }/resources/js/cart.js"></script> --%>
	
	<!-- footer import -->
    <jsp:include page="../main/footer.jsp"/>

</body>
</html>