<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="${ pageContext.servletContext.contextPath }/resources/css/testMain.css" rel="stylesheet" type="text/css">
<link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png"> 
<title>1 D U 1 D U</title>
</head>
<body>
	<div class="header_hidden">
        <!-- header 시작 -->
	    <header id="header" class="main-header">
	    
	    <div id="header_wrap" style="display: blo ck;" >
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
	                    <li><a href="#">취향테스트</a></li>
	                </ul>
	            </div>
	            <div>
	                <ul class="sub_menu">
	                    <li><a href="#">new</a></li>
	                    <li><a href="#">best</a></li>
	                    <li><a href="#">원두</a></li>
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
	            <a href="#"><img src="${ pageContext.servletContext.contextPath }/resources/image/원두배너_투명.png"></a>
	            </div> <!-- /logo -->
	        
	            <!--헤더 오른쪽 메뉴-->
	            <div class="right_menu inline">
	                <ul class="right_div inline">
	                    <!-- 로그인시 회원/관리자에 따라 마이/관리 페이지 나타나기-->
	                    <li class="hidden-menu"><a href="#">관리페이지</a></li>
	                    <li class="hidden-menu"><a href="#">마이페이지</a></li>
	
	                    <li><a href="#">로그인</a></li>
	                    <!--장바구니 아이콘-->
	                    <li class="cart"><a href="#"><i class="bi bi-cart"></i></a></li>
	                </ul>
	            </div> 
	    </div>    
	    </header><!-- /header -->
    </div>

    <div class="container">
        <div class="row">
            <!-- 관리페이지 사이드 영역 숨김 -->
            <div class="wrapper">
                <div class="side-box">
                    <br>
                    <h3>안녕하세요. 매일 즐길 수 있는 커피 구독, 1DU 1DU입니다.</h3><br>
                    <h3>커피 추천을 위해 저희가 불러드릴 이름을 입력해주세요.</h3>
                    <div class="row">
                        <div class="col-sm-3 box name-box">
                            <input class="name-box" type="text" name="userName" placeholder="이름을 입력해주세요.">
                        </div> <!-- /box -->

                        <div class="start-box">
                            <button type="button" class="start" value="submit" onClick="location.href='testTools.jsp'">테스트 시작하기</button>
                        </div> <!-- /start-box -->
                    </div><!-- row -->

                </div> <!-- /side-box -->
            </div> <!-- /wrapper -->
        </div> <!-- /row -->



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

        <!-- 부트스트랩 자바스크립트 -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>