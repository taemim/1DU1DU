<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- 구글웹폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Serif:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <!-- 부트스트랩 아이콘 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <!-- 부트 스트랩 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- css 외부 링크 -->
    <link href="${ pageContext.servletContext.contextPath }/resources/css/header.css" rel="stylesheet" type="text/css">

    <!-- 제이쿼리 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> 

    <!--파비콘-->
    <link rel="icon" type="image/x-icon" href="resources/image/android-icon-48x48.png">

<style>
.top_banner {
    margin :0px;
}

.top_banner >p {
    margin :0px;
}
</style>

    <title>1DU1DU</title>

</head>

<body>

    <!-- header 시작 -->
    <header id="header" class="main-header">
    
    <div id="header_wrap" style=" position: fixed; 
    width: 100%;
    z-index: 100;
    background-color: #F3EFEF;
    !important;">
        <!-- 상단 top배너 광고 -->
        <div class="top_banner">
           <p>지금 바로 정기구독 9,900원 무료배송</p>
       </div>
       <!-- 헤더 왼쪽 메인메뉴 nav -->
        <nav class="h_cate inline">
            <ul class="main-nav inline">
                <li>
                    <a href="#">구독하기</a>
                </li>
                <li>
                    <a href="#">Shop</a>
                </li>
                <li>
                    <a href="#">About</a>
                </li>
            </ul>
        </nav><!-- 하위 카테고리 -->
        <div class="h_cate_all inline">                      
            <div>  
                <ul class="sub_menu">
                    <li><a href="#">정기구독</a></li>
                    <li><a href="${ pageContext.servletContext.contextPath }/taste/testMain">취향테스트</a></li>
                </ul>
            </div>
            <div>
                <ul class="sub_menu">
                    <li><a href="#">new</a></li>
                    <li><a href="#">best</a></li>
                    <li><a href="${ pageContext.servletContext.contextPath }/goods/list">원두</a></li>
                    <li><a href="#">드립백</a></li>
                    <li><a href="#">캡슐</a></li>
                    <li><a href="#">커피용품</a></li>
                </ul> 
            </div>
            <div>
                <ul class="sub_menu">
                    <li><a href="#">Notice</a></li>
                    <li><a href="#">Partnership</a></li>
                    <li><a href="#">Best Review</a></li>
                </ul>
            </div>
        </div>
        <!-- 메뉴 하위카테고리 호버 슬라이드다운 효과  -->
        <script>
            $(document).ready(function(){
                 $('.h_cate_all').hide();
                 $('.h_cate').mouseover(function(){
                     $('.h_cate_all').slideDown();
                });
            
                $('.h_cate_all').mouseleave(function(){
                    $('.h_cate_all').fadeOut();
                });
            });
        </script>

            <!-- 로고 -->
            <div class="logo">
            <a href="${ pageContext.servletContext.contextPath }"><img src="${ pageContext.servletContext.contextPath }/resources/image/원두배너_투명.png"></a>
            </div> <!-- /logo -->
        
            <!--헤더 오른쪽 메뉴-->
            <div class="right_menu inline">
                <ul class="right_div inline">
                    <!-- 로그인시 회원/관리자에 따라 마이/관리 페이지 나타나기-->
          
                    <%-- 로그인이 된 상태와 로그인 되지 않은 상태를 구분하기 위해 if문으로 조건식 추가 --%>
                    <c:if test="${ empty sessionScope.loginMember }">
					<li><a href="${ pageContext.servletContext.contextPath }/member/login">로그인</a></li>
					<li><a href="${ pageContext.servletContext.contextPath }/member/login">마이페이지</a></li>
                    </c:if>
					<c:if test="${ !empty sessionScope.loginMember }">
					<li><a href="${ pageContext.servletContext.contextPath }/member/logout">로그아웃</a></li>
					<li><a href="${ pageContext.servletContext.contextPath }/mypage/my-modify">마이페이지</a></li>
					</c:if>
					
                    
                    <!--장바구니 아이콘-->
                    <li class="cart"><a href="${ pageContext.servletContext.contextPath }/cart/list"><i class="bi bi-cart"></i></a></li>
                </ul>
            </div> 
    </div>    
    </header><!-- /header -->

<!-- 부트스트랩 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</body>
</html>