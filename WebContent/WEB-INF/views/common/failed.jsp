<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>failed</title>

</head>
<body>
	<jsp:include page="/WEB-INF/views/main/header.jsp"/>
	
	
	<div id="imageArea">
		<img id="errorImage" src="${ pageContext.servletContext.contextPath }/resources/images/error.png">
	</div>
	<h1 align="center">${ requestScope.message }</h1>

		
		
		
		
		
		
    <script>
	(function(){
		const failedCode = "${ requestScope.failedCode }";
		
		let failedMessage = "";
		let movePath = "";
		
		switch(failedCode){
			case "loginfail" : 
				failedMessage = "로그인에 실패하였습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/member/login";
				break;
			case "notFindId" :
				failedMessage = "${ message }";
				movePath = "${ pageContext.servletContext.contextPath }/member/login";
				break;
			case "modifyPwd" :
				failedMessage = "${ message }";
				movePath = "${ pageContext.servletContext.contextPath }/mypage/my-modify";
				break;
		}

		alert(failedMessage);
		
		location.replace(movePath);
	})();

</script>
</body>
</html>
