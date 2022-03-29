<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


      <!-- 구글웹폰트 -->
     <link href="https://fonts.googleapis.com/css2?family=Roboto+Serif:wght@300&display=swap" rel="stylesheet">
     <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
     <!-- 제이쿼리 -->
     <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> 
     <!-- 부트스트랩 -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


     <!-- css 외부 링크 -->
     <link href="../resources/css/my-modify.css" rel="stylesheet" type="text/css">
     <link rel="icon" type="image/x-icon" href="../resources/image/android-icon-48x48.png"> 
    <title>내 정보 수정</title>
    <link href="${ pageContext.servletContext.contextPath }/resources/css/my-modify.css" rel="stylesheet">
</head>
<body>

	<jsp:include page="../main/header.jsp"/>
    
    <div class="header_hidden" >
        <h1> 헤더영역 비워두는 용도 </h1>
    </div>

    <div class="container-fluid">
        <div class="row">
        <!-- 마이페이지 사이드 영역 -->
          <div class="col-lg-2 side-box">
            <br>
            <ul>
              <li class="li-1"><a href="#">MYPAGE</a></li>
              <li class="li-2"><a href="${ pageContext.servletContext.contextPath }/mypage/my-modify" id="now">내 정보 확인</a></li>
              <li class="li-2"><a href="#">구독 내역</a></li>
              <li class="li-2"><a href="#">주문 내역</a></li>
              <li class="li-2"><a href="#">1:1 문의</a></li>
              <li class="li-2"><a href="#">리뷰 관리</a></li>
              <li class="li-2"><a href="#">위시리스트 조회</a></li>
              <li class="li-2"><a href="#">회원 탈퇴</a></li>
              
          </ul>
            <br>
          </div>


<!-- 관리페이지 메인 영역 -->
<div class="col-lg-9 main-box">
    <div class="admin-page">

        <div class="mygrade" id="my-grade">
            <label id="grade1">오늘도 <b>1DU1DU</b>와 기분좋은 하루 보내세요! &#128151;</label><br>
            <p id="grade">&#128204; 회원님의 등급은 &#128142; 입니다.

            <a href="javascript:openModal('modal1');" class="btn btn-dark btn-right" style=" color: #ffffff;">비밀번호 변경</a>
            </p>
        </div>


        




    <!--내정보 수정칸-->




        <div class="my-info">



                <!--이메일-->
				<h4></h4>
                <label id="mail"><b>이메일</b></label>
				<span class="input_area"><input type="email" name="email" id="emailCheck" placeholder="이메일 주소"></span>
            

                <!--연락처-->
				<h4></h4>
                <label id="phn"><b>연락처</b></label>
				<span class="input_area"><input type="tel" maxlength="11" name="phone" id="phoneNum" placeholder=" 핸드폰 번호 "></span>
		
                



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
                            $('[name=zipCode]').val(data.zonecode); // 우편번호 (5자리)
                            $('[name=address1]').val(data.address);
                            $('[name=address2]').val(data.buildingName);
                        }
                    }).open();
                }
                </script>

              

                



    </div>
    


    <a href="javascript:openModal('modal4');" class="btn btn-dark btn-right1" style=" color: #ffffff;">정보 수정</a>





          <!-- 모달 시작 !-->         
          <!-- float:right; 설정 버튼 순서 오른쪽부터 시작-->

    <!-- 버튼 만들기 javascript:openModal('모달명 설정') 하기 -->

 


  <!-- 모달창 div 시작 !-->
  <div id="modal">
    <div class="modal-con modal1">
      <!-- 모달 제목 -->
      <p class="title">비밀번호 변경</p>
      <!-- 모달 콘텐츠 영역-->
      <div class="con">
        <p>비밀번호를 변경 하시겠습니까? </p>
      </div>
      <!-- 모달창 버튼 영역-->
      <div class="modal-btn">
        <button type="button" class="madal-btn button btn btn-light btn-sm">
            <a href="javascript:;" class="close">&nbsp;변경&nbsp;</a>
        </button>
        &nbsp;&nbsp;
        <button type="button" class="madal-btn button btn btn-light btn-sm ">
            <a href="javascript:;" class="close">&nbsp;&nbsp;취소&nbsp;&nbsp;</a>
        </button>
      </div>
    </div>

    <div class="modal-con modal4">
      <p class="title">나의 정보 저장</p>
      <div class="con">
        <p>내 정보를 변경하시겠습니까?</p>
        <!-- 모달 내부 입력창 부분 !-->
        <div class="input-group modal-input">
          &nbsp;&nbsp;&nbsp;&nbsp;
          <button class="madal-input-btn btn btn-light dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">택배사 선택</button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Separated link</a></li>
          </ul>
          <input type="text" class="form-control" aria-label="Text input with dropdown button" placeholder="운송장 번호를 입력하세요.">
          &nbsp;&nbsp;&nbsp;&nbsp; <!-- 입력 폼 양쪽 공백추가 -->
        </div>
      </div>
      <div class="modal-btn">
        <button type="button" class="madal-btn button btn btn-light btn-sm">
          <a href="javascript:;" class="close">&nbsp;변경&nbsp;</a>
        </button>
        &nbsp;&nbsp;
        <button type="button" class="madal-btn button btn btn-light btn-sm ">
            <a href="javascript:;" class="close">&nbsp;&nbsp;취소&nbsp;&nbsp;</a>
        </button>
      </div>
    </div>
     <!-- 모달 자바 스크립트 필수 -->
     <script>
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


  </div> <!-- 모달 div 종료지점 -->

          <br>
      </div>
    </div>
  </div>
</div>

<!-- footer import -->
<div data-include-path="footer.html"></div>

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

<!-- 부트스트랩 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>








    



</body>






    <!--푸터 임포트-->

    <footer>

      <div data-include-path="..\main\footer.html"></div>
   
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







</html>