<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<script>
		(function(){
			const successCode = "${ requestScope.successCode }";
			
			let successMessage = "";
			let movePath = "";
			
			switch(successCode){
			
				case "insertAsk" : 
					successMessage = "1:1 문의 등록에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/ask/list";
					break;
					
				case "deleteAsk" : 
					successMessage = "1:1 문의 삭제에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/ask/list";
					break;
			}

			alert(successMessage);
			
			location.replace(movePath);
		})();
	
	</script>

</body>
</html>