<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 구글웹폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Serif:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <!-- 제이쿼리 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- css 외부 링크 -->
    <link href="${ pageContext.servletContext.contextPath }/resources/css/login.css" rel="stylesheet" type="text/css">
    <!-- 파비콘 -->
	<link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png">
    <!-- 슬라이드랑 충돌 나는 부트스트랩 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">






<title>로그인</title>
  
</head>
<body>


	
<!-- 헤더 -->
		<jsp:include page="/WEB-INF/views/main/header.jsp" />
    <div class="header_hidden">
        <h1>헤더영역 비워두는 용도</h1>
    </div>

<!-- 본문 -->

	<div class="wrapper">
		<div class="outer">


		<form class="loginArea" action="${ pageContext.servletContext.contextPath }/member/login" method="post">
			<h1 id="t11">로그인</h1>
             <h4></h4>

            <!--아이디 입력칸-->
			<span class="input_area"><input type="text" name="userId" id="memberId"
			placeholder="아이디 입력" required></span>
            <h2></h2>

             <!--비밀번호 입력칸-->
			<span class="input_area"><input type="password" name="userPwd" id="memberPwd"
			placeholder="비밀번호 입력" required></span>

            <!--아이디 저장 체크 박스-->
			<h5><input type="checkbox" name="remember" id="remember">
			<label for="remember">아이디 저장</label></h5>

            <!--로그인 버튼-->
            <span class="input_area"><input type="submit" name="requestMember" id="login" value="로그인"></span>
            
            
            <br>
            <br>

            <!--카카오톡으로 로그인-->
			<span class="input_area"><input type="button" id="kakao-login" value="카카오톡으로 로그인"></span>
                
            <div class="cantlogin">
                <a href="${ pageContext.servletContext.contextPath }/member/findId"><label for="idfind" id="id-find">아이디 찾기</label></a>
                 &nbspㅣ&nbsp
                <a href="${ pageContext.servletContext.contextPath }/member/findPwd"><label for="pwdfind" id="pwd-find">비밀번호 찾기</label></a>
                 &nbspㅣ&nbsp
                <a href="${ pageContext.servletContext.contextPath }/member/enroll"><label for="enroll" id="enrollment">회원가입</label></h5></a>
            </div>
                


            <!--글자위에 마우스 오버시 색상이 변하는 hover 효과-->
            <script>
                    $('#id-find').hover(function(){
                        $(this).css("color", "gray");
                    }, function(){
                        $(this).css("color", "black");
                    });

                    $('#pwd-find').hover(function(){
                        $(this).css("color", "gray");
                    }, function(){
                        $(this).css("color", "black");
                    });

                    $('#enrollment').hover(function(){
                        $(this).css("color", "gray");
                    }, function(){
                        $(this).css("color", "black");
                    });
                    
                </script>

                


            
            </form>
		</div>
	</div>




	<!-- 쿠키 사용하여 아이디 기억하기 기능 -->
	<script src="${ pageContext.servletContext.contextPath }/resources/js/rememberId.js"></script>
	






    <!--푸터 임포트-->

    <footer>

	<jsp:include page="/WEB-INF/views/main/footer.jsp" />
 
    <script>
 
        window.addEventListener('load', function() {
            var allElements = document.getElementsByTagName('*');
            Array.prototype.forEach.call(allElements, function(el) {
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

</footer>



</body>
</html>