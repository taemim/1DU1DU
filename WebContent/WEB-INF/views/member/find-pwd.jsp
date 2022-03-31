<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 찾기</title>

    <!--폰트-->
    <link href="https://fonts.googleapis.com/css2?family=Syne+Tactile&display=swap" rel="stylesheet">

    <!--css-->
    <link href="${ pageContext.servletContext.contextPath }/resources/css/find-pwd.css"  rel="stylesheet" type="text/css">

    <!--파비콘-->
    <link rel="icon" type="image/x-icon" href="../resources/image/android-icon-48x48.png">

    <!-- 제이쿼리 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> 
    



</head>
<body>
    

	<!-- 헤더 -->
		<jsp:include page="/WEB-INF/views/main/header.jsp" />	
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



	<div class="wrapper">
		<div class="outer">


			<form class="loginArea" action="${ pageContext.servletContext.contextPath }/member/findPwd" method="post">
				
                
                <h1 id="t11">비밀번호 찾기</h1>
                <h4>&nbsp 가입시 사용한 아이디 입력</h4>
                <!--이메일 입력칸-->

                <span class="input_area"><input type="text" name="memberPwd" id="phonePwd" maxlength="11"
                placeholder="핸드폰번호 입력" required></span>

                <h4>&nbsp 가입시 사용한 이메일 입력</h4>
                <!--연락처 입력칸-->
                <span class="input_area"><input type="email" name="memberId" id="emailFind" maxlength="50"
                placeholder="이메일 입력" required></span>

                

                <h1></h1>
                <h1></h1>
                

                <!-- 비밀번호 찾기버튼 -->   
                <span class="input_area"><input type="submit" id="findButton" value="비밀번호 찾기" onclick="email_check()"></span>
                
                <script type>

                        function email_check( emailFind ) {    
                            var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
                            return (emailFind != '' && emailFind != 'undefined' && regex.test(emailFind)); 
                        }

                        $("input[type=email]").blur(function(){
                        var email = $(this).val();
                        if( email == '' || email == 'undefined') return;
                        if(! email_check(email) ) {
                            alert('올바른 정보를 기입해주세요.');
                            $(".result-email").alert('올바른 정보를 기입해주세요.');
                            $(this).focus();
                            return false;
                        }else {
                            alert('메일로 임시 비밀번호를 보냈습니다. 재로그인 후 회원정보수정에서 비밀번호를 재설정해주세요.');
                            $(".result-email").text('');
                            location.href="../main/main.html";
                        }
                        });
                      
                    
                    </script>



            <!--로그인화면 돌아가기-->
                <a href="${ pageContext.servletContext.contextPath }/member/login" class="myButton" !important> ◀ 로그인화면 돌아가기</a>

                

            </form>
		</div>
	</div>





















    

    <!--푸터 임포트-->

    <footer>

	<!-- 헤더 -->
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

