<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>failed</title>

</head>
<body>
	<jsp:include page="../main/header.jsp"/>
	<div id="imageArea">
		<img id="errorImage" src="${ pageContext.servletContext.contextPath }/resources/images/error.png">
	</div>
	<h1 align="center">${ requestScope.message }</h1>

		
    <script>
        alert('잘못된 접근입니다.');
    </script>
    
</body>
</html>