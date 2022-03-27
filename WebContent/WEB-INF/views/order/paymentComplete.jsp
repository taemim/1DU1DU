<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="ko">
<% SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
	Date newDate = new Date();
	String Date = simpleDate.format(newDate);
	
%>


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 구글웹폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Serif:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <!-- 부트스트랩 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- css 외부 링크 -->
    <link href="${ pageContext.servletContext.contextPath }/resources/css/admin.css" rel="stylesheet" type="text/css">
    <!-- 파비콘 -->
    <link rel="icon" type="image/x-icon" href="resources/image/android-icon-48x48.png">
    
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
   
   <title>1DU 1DU</title>

<style>
.top_banner {
	margin :0px;
}

.top_banner >p {
	margin :0px;
}
</style>

</head>
<body>
	<jsp:include page="/WEB-INF/views/main/header.jsp"/>
	
    <div class="header_hidden">
        <h1> 헤더영역 비워두는 용도 </h1>
    </div>
    <div class="container-fluid" style="padding:0px; margin-top: 50px;">
     <div class="row">
        <!-- 관리페이지 사이드 영역 -->
           <div class="col-lg-7 main-box">
              <div class="admin-page" style="text-align: center;">
   				 <h1 align="center">주문 완료</h1><br><br>
   				 <h3>고객님의 주문이 완료 되었습니다. </h3>
   				 <br>
   				 <h3> 고객님이 주문하신 주문 번호는 <b Style="color:red;">1112182번</b>입니다.</h3>
   				 <br>
   				 <p >주문내역 및 배송에 관한 안내는 마이페이지의 <i>"주문내역"</i> 에서 하실 수 있습니다.</p>
   				 <hr>
   				 
   				<h5>결제일자 : </h5><br>
   				<h5>최종 결제 금액 : </h5>
   				
   				<br>
   				
   				<button type="button" class="btn btn-outline-dark btn-lg"
				onclick="location.href= '${ pageContext.servletContext.contextPath }';">&nbsp;쇼핑 계속하기&nbsp;  </button>&nbsp;
				<button type="button" class="btn btn-outline-dark btn-lg" 
				onclick="location.href= '${ pageContext.servletContext.contextPath }/goods/order';">&nbsp;주문 확인하기&nbsp; </button>
   				 
         	</div>
         	
          </div>
          </div>
    </div>
    

    <jsp:include page="/WEB-INF/views/main/footer.jsp"/>
    
    
    
</body>
</html>