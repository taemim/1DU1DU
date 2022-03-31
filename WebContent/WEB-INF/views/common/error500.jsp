<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error500</title>
<style>
	#imageArea{
		width : 500px;
		margin : 100px auto;
		display : flex;
		justify-content : center;
		align-items : center;
	}
	#imageArea img {
		width : 100%;
	}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/main/header.jsp"/>
	<div id="imageArea">
		<img id="errorImage" src="${ pageContext.servletContext.contextPath }/resources/images/error.png">
	</div>
	<h1 align="center">개발자의 잘못입니다. 개발자는 누구??</h1>
</body>
</html>