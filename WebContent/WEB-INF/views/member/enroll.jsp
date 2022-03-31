<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>회원가입</title>


    <!-- css 외부 링크 -->
    <link href="${ pageContext.servletContext.contextPath }/resources/css/enroll.css" rel="stylesheet" type="text/css">
    <!-- 파비콘 -->
	<link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png">

<%
	request.setCharacterEncoding("UTF-8");
%>


<title>회원가입</title>
<!-- 외부 스타일 시트 -->
<link href="${ pageContext.servletContext.contextPath }/resources/css/enroll.css" rel="stylesheet">
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


			<form class="loginArea" action="${ pageContext.servletContext.contextPath }/member/enroll" method="post">
				

                
                <h1 id="t11">회원 가입</h1>
                
                <!--아이디-->
                <h4></h4>
				<span class="input_area"><input type="text"  placeholder="아이디 입력" maxlength="13" name="userId" id="memberId" required></span>
				<button id="idCheck" type="button">중복확인</button>
				<input type="hidden" name="idDuplication" value="idUncheck" >
				
				<!--비밀번호-->
                <h4></h4>
				<span class="input_area"><input type="password"  placeholder="비밀번호 입력 &nbsp (영문 대소문자/숫자 4~16자)" maxlength="16" name="userPwd" id="memberPwd1" required></span>
				
				<!--비밀번호 확인-->
                <h4></h4>

				<span class="input_area"><input type="password"  placeholder="비밀번호 확인" maxlength="16" name="userPwd2" id="memberPwd2" required></span>
				<label id="pwdResult"></label>
				
                <!--이름-->
				<h4></h4>
				<span class="input_area"><input type="text" maxlength="10" name="userName" id="name"  placeholder="이름" required></span>
				

                <!--이메일-->
				<h4></h4>
				<span class="input_area"><input type="email" name="email" id="emailCheck" placeholder="이메일 입력"></span>
            
                <!--정보 수신 동의-->
                <h5 id="check"><input type="checkbox" id="agreeMail">
                <label for="agreeMail">정보/이벤트 메일 수신에 동의합니다. </label></h5>

                <!--연락처-->
				<h4></h4>
				<span class="input_area"><input type="tel" maxlength="11" name="phone" id="phoneNum" placeholder=" 핸드폰 번호 ( - 제외)"></span>
		
                <!--정보 수신 동의-->
                <h5 id="check"><input type="checkbox" id="agreePhone">
                <label for="agreePhone">정보/이벤트 SMS 수신에 동의합니다.</label></h5>				
                
                <!-- 성별 -->
                <div class="choice">
                <label id="sex">성별</label>
                <input type="radio" id="male" name="gender" value="M" >
                <LABEL for="male">남자</LABEL>
                <input type="radio" id="female" name="gender" value="F" checked >
                <LABEL for="female" >여자</LABEL>

                
                <label id="birth"><b>생년월일</b></label>
                <input type="date" name="birthday"><br>

                </div>



                <!--주소-->
				<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


				<h4></h4>
                <label id="addr"><b>주소</b></label><br>
                <!--기본주소-->
				<span class="input_area"><input type="text" id="basicAddr" name="postal" class="postcodify_postcode5" readonly></span>
				<button id="postcodify_search_button" type="button" onclick="openZipSearch()" >검색</button>
			
                <!--도로명 주소-->
                <h4></h4>
				<span class="input_area"><input type="text" placeholder="도로명 주소" name="address" id="addr1" class="postcodify_address" readonly></span>
				
                <!--상세 주소-->
                <h4></h4>
				<span class="input_area"><input type="text" placeholder="상세 주소" name="address2" id="addr2" class="postcodify_details"></span>
                


                <!--다음 도로명 우편번호 검색-->
                <script>
                function openZipSearch() {
                    new daum.Postcode({
                        oncomplete: function(data) {
                            $('[name=postal]').val(data.zonecode); // 우편번호 (5자리)
                            $('[name=address]').val(data.address);
                            $('[name=address2]').val(data.buildingName);
                        }
                    }).open();
                }
                </script>










                <div class="contents" >
                    
                    <div class="terms__check__all">
                        <input type="checkbox" name="checkAll" id="checkAll" required />
                        <label for="checkAll"
                          >1DU1DU의 모든 약관을 확인하고 전체 동의합니다. </label>
                      </div>
                      <ul class="terms__list">
                        <li class="terms__box">
                          <div class="input__check">
                            <input type="checkbox" name="agreement" id="termsOfService" value="termsOfService" required />
                            <label for="termsOfService" class="required">이용약관 동의</label>
                          </div>
                          <div class="terms__content">
                            1DU1DU 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 1DU1DU
                            서비스의 이용과 관련하여 1DU1DU 서비스를 제공하는 1DU1DU 주식회사(이하 ‘1DU1DU’)와 이를 이용하는 1DU1DU 서비스
                            회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 1DU1DU 서비스 이용에 도움이 될 수 있는
                            유익한 정보를 포함하고 있습니다. 1DU1DU 서비스를 이용하시거나 1DU1DU 서비스 회원으로 가입하실 경우 여러분은 본
                            약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기
                            바랍니다.
                          </div>
                        </li>
                        <li class="terms__box">
                          <div class="input__check">
                            <input type="checkbox" name="agreement" id="privacyPolicy" value="privacyPolicy" required />
                            <label for="privacyPolicy" class="required">개인정보 수집 및 이용 동의</label>
                          </div>
                          <div class="terms__content">
                            개인정보보호법에 따라 1DU1DU에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및
                            이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내 드리오니
                            자세히 읽은 후 동의하여 주시기 바랍니다.1. 수집하는 개인정보 이용자는 회원가입을 하지 않아도 정보 검색,
                            뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페,
                            블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을
                            위해 필요한 최소한의 개인정보를 수집합니다.
                          </div>
                        </li>
                      </ul>

                </div>














                 <!-- 회원 가입 버튼 -->   
                 <div class="goRback">
                    <a href="login.jsp">
                    <input type="button" id="enrollment1" value="돌아가기">
                    </a>
                    <input type="submit" name="requestMember" id="enrollment2" value="회원 가입">
                </div>
                 


            </form>
        
		</div>

































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






                <!--이메일 찾기 유효성 체크-->
                <script>

                    function email_check( emailCheck ) {    
                        var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
                        return (emailCheck != '' && emailCheck != 'undefined' && regex.test(emailCheck)); 
                    }
    
                    $("input[type=email]").blur(function(){
                    var email = $(this).val();
                    if( email == '' || email == 'undefined') return;
                    if(! email_check(email) ) {
                        $(".result-email").text('이메일 형식으로 적어주세요');
                        $(this).focus();
                        return false;
                    }else {
                        $(".result-email").text('');
                    }
                    });
                    </script>








</body>
</html>
