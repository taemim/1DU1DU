<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="com.onedu.mvc.member.model.dto.MemberDTO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	MemberDTO loginMember = new MemberDTO();
	loginMember = (MemberDTO) session.getAttribute("loginMember");

	request.setCharacterEncoding("UTF-8");
%>
<script>
	
	if( <%= loginMember %> == null){
		alert("로그인이 필요합니다.");
		location.href="${ pageContext.servletContext.contextPath }/member/login"
	}
	
</script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 구글웹폰트 -->
	<link
		href="https://fonts.googleapis.com/css2?family=Roboto+Serif:wght@300&display=swap"
		rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
		rel="stylesheet">
	<!-- 제이쿼리 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<!-- 부트스트랩 아이콘 -->
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
	<!-- 부트스트랩 -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">
	<!-- css 외부 링크 -->
	<link href="${ pageContext.servletContext.contextPath }/resources/css/myOrder.css" rel="stylesheet"
		type="text/css">
	<link rel="icon" type="image/x-icon"
		href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png">
	<title>내 정보 수정</title>
	
<style>
.top_banner {
	margin :0px;
}

.top_banner >p {
	margin :0px;
}

.admin-page a:hover {
 color : #432;
}

</style>

</head>

<body>
	<!-- header -->
	<jsp:include page="/WEB-INF/views/main/header.jsp" />
	<div class="header_hidden">
	</div>

	<div class="container-fluid" style="padding:50px 200px 50px 200px;">
		<div class="row">
			<!-- 마이페이지 사이드 영역 -->
			<div class="col-lg-2 side-box">
				<br>
				<ul>
					<li class="li-1"><a href="#">MYPAGE</a></li>
					<li class="li-2"><a href="#">내 정보 확인</a></li>
					<li class="li-2"><a href="#">구독 내역</a></li>
					<li class="li-2"><a href="#" id="now">주문 내역</a></li>
					<li class="li-2"><a href="#">1:1 문의</a></li>
					<li class="li-2"><a href="#">리뷰 관리</a></li>
					<li class="li-2"><a href="#">위시리스트 조회</a></li>
					<li class="li-2"><a href="#">회원 탈퇴</a></li>
				</ul>
				<br>
			</div>


			<!-- 관리페이지 메인 영역 -->
			<div class="col-lg-9 main-box" style=" margin-bottom : 0px;">
				<div class="admin-page">
					<h1>주문 내역</h1>
					<br>
					
					<!-- 전체 내역 조회 (=테이블명)-->
					<a href="#" class="sub-list">최근 주문조회</a>
					
					<!-- 같은 페이지에서 다른 데이터를 조회받을 때-->
					<a href="#" class="sub-list">지난 주문조회</a>
					<div class="my-info">
						<div class="table-scroll">
							<table class="table w-auto">
								<thead style="background-color: #F3EFEF50;">
									<tr>
										<th scope="col"><i class="bi bi-check-square bg-white"></i></th>
										<th scope="col">날짜 / 주문번호</th>
										<th scope="col"></th>
										<th scope="col">상품명 / 옵션</th>
										<th scope="col">상품 금액 / 수량</th>
										<th scope="col">주문상태</th>
										<th scope="col">운송장 번호</th>
									</tr>
								</thead>
								<tbody>
								
								<!-- 주문건 c:forEach로 추가하기-->
								<c:forEach var="order" items="${ myOrder }">
								<tr>
									<td scope="row"><input type="checkbox" class="checkbox"
										name="order_no" value="${ order.orderNo }"></td>
									<td scope="col">${ order.payDate } <br> ${ order.orderNo }</td>
									<td><img src="${ pageContext.servletContext.contextPath }${ order.goodsImg.thumbnailPath }"></td>
									<td><a href="${ pageContext.servletContext.contextPath }/goods/detail?goodsNo=${order.goodsNo}">
									${ order.goodsName }</a>
									</td>
									<td>${ order.price }원<br>${ order.amount }개</td>
									<td>
									<c:choose>
										<c:when test="${ order.status eq 'Y' }">결제완료</c:when>
										<c:when test="${ order.status ne 'Y'}"> ${ order.status }</c:when>
									</c:choose>
				
									<td>
										<c:choose>
										<c:when test="${ empty order.invoice }"> 배송준비중</c:when>
										<c:when test="${ not empty order.invoice }"> ${ order.invoice }</c:when>
										</c:choose>
									</td>
									</tr>
								   </c:forEach>	
								</tbody>
								<tfoot>
									<tr></tr>
								</tfoot>
							</table>
						</div>
					  </form>
					</div>
					<br>

					<!-- 버튼 만들기 javascript:openModal('모달명 설정') 하기 -->
					<a href="javascript:check('modal1');" class="modal-input-btn btn btn-dark btn-right"
						style="color: #ffffff;">주문 상세 보기</a> 
					<a href="javascript:check('modal2');" class="btn btn-light btn-right">리뷰작성</a>
					<a href="javascript:check('modal3');" class="btn btn-light btn-right">문의작성</a> 
					<a href="javascript:check('modal4');" class="btn btn-light btn-right">교환반품요청</a>

				</div>

				<!-- 모달 시작 !-->
				<!-- float:right; 설정 버튼 순서 오른쪽부터 시작-->

				<!-- 버튼 만들기 javascript:openModal('모달명 설정') 하기 -->
				<!-- 모달창 div 시작 !-->


				<div id="modal">
					<div class="modal-con modal1">
						<!-- 모달 제목 -->
						<p class="title">주문 상세보기</p>
						<!-- 모달 콘텐츠 영역-->
						<div class="con">
							<p> 주문 상품 정보<p>
						</div>
						<!-- 모달창 버튼 영역-->
						<div class="modal-btn">
							<button type="button"
								class="madal-btn button btn btn-light btn-sm">
								<a href="javascript:;" class="close">&nbsp;확인&nbsp;</a>
							</button>
							&nbsp;&nbsp;
							<button type="button"
								class="madal-btn button btn btn-light btn-sm ">
								<a href="javascript:;" class="close">&nbsp;&nbsp;취소&nbsp;&nbsp;</a>
							</button>
						</div>
					</div>

					<div class="modal-con modal3">
						<p class="title">교환 반품 환불 요청</p>
						<div class="con">
							<p>주문건에 대한 요청을 입력하세요.</p>

							<!-- 모달 내부 입력창 부분 !-->
							<form>
								<div class="container">
									<div class="row">
										<div class="col-sm-3">
											<select class="form-control-plaintext op1" id="" name="">
												<option selected disabled>요청 분류</option>
												<option value="1">교환</option>
												<option value="2">반품</option>
												<option value="3">환불</option>
												<option value="etc">기타</option>
											</select>
										</div>
										<div class="col-sm-8">
											<textarea class="form-control-plaintext"></textarea>
										</div>
										<br>
										<div class="offset-sm-3 col-sm-8">
											<input class="form-control-plaintext" type="file" value="">
										</div>
							</form>
							<!-- 폼 여기까지-->
						</div>
						<div class="modal-btn">
							<button type="button"
								class="madal-btn button btn btn-light btn-sm">
								<a href="javascript:;" class="close">변경</a>
							</button>
							&nbsp;&nbsp;
							<button type="button"
								class="madal-btn button btn btn-light btn-sm ">
								<a href="javascript:;" class="close">취소</a>
							</button>
						</div>

					</div>

				</div>


				<!-- 모달 자바 스크립트 필수 -->
				<script>
              function check(modalname) {
                  if($('.checkbox').is(':checked')){
                    openModal(modalname);
                  } else {
                    alert("주문건을 선택해주세요.");
                  }
              }

              function openModal(modalname) {
                document.get
                $("#modal").fadeIn(300);
                $("." + modalname).fadeIn(300);
              }
  
              $(".close").on('click', function () {
                $("#modal").fadeOut(300);
                $(".modal-con").fadeOut(300);
              }); 
              

          </script>


			</div>
			<!-- 모달 div 종료지점 -->

			<br>
		</div>
	</div>
	</div>
	</div>

	<!-- footer -->
	<div>
		<jsp:include page="/WEB-INF/views/main/footer.jsp" />
	</div>


	<!-- 부트스트랩 자바스크립트 -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</body>
</html>