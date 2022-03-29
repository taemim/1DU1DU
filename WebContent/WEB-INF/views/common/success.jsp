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
					successMessage = "1:1 문의가 등록되었습니다.";
					movePath = "${ pageContext.servletContext.contextPath }/ask/list";
					break;
					
				case "deleteAsk" : 
					successMessage = "1:1 문의가 삭제되었습니다.";
					movePath = "${ pageContext.servletContext.contextPath }/ask/list";
					break;
				
				case "insertReview" : 
					successMessage = "리뷰가 등록되었습니다.";
					movePath = "${ pageContext.servletContext.contextPath }/review/list";
					break;
					
				case "deleteReview" : 
					successMessage = "리뷰가 삭제되었습니다.";
					movePath = "${ pageContext.servletContext.contextPath }/review/list";
					break;
					
				case "updateReview" : 
					successMessage = "리뷰가 수정되었습니다.";
					movePath = "${ pageContext.servletContext.contextPath }/review/list";
					break;
					
				case "updateCart" : 
					successMessage = "상품 수량이 변경되었습니다.";
					movePath = "${ pageContext.servletContext.contextPath }/cart/list";
					break;
					
				case "deleteCart" : 
					successMessage = "선택하신 상품이 삭제되었습니다.";
					movePath = "${ pageContext.servletContext.contextPath }/cart/list";
					break;
					
				case "deleteOneCart" : 
					successMessage = "선택하신 상품이 삭제되었습니다.";
					movePath = "${ pageContext.servletContext.contextPath }/cart/list";
					break;
			}

			alert(successMessage);
			
			location.replace(movePath);
		})();
	
	</script>

</body>
</html>