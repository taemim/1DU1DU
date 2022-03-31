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

				case "insertMember" : 
					successMessage = "회원 가입에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }";
					break;
				case "updateMember" : 
					successMessage = "회원 정보 변경에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/member/modify";
					break;
				case "updateMemberPassword" : 
					successMessage = "회원 비밀번호 변경에 성공하셨습니다!";
					window.close();
					break;
				case "deleteMember" : 
					successMessage = "회원 탈퇴에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }";
					break;
				case "insertNotice" : 
					successMessage = "공지사항 등록에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/notice/list";
					break;
				case "updateNotice" : 
					successMessage = "공지사항 수정에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/notice/detail?no=${ no }";
					break;
				case "deleteNotice" : 
					successMessage = "공지사항 삭제에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/notice/list";
					break;
				case "insertBoard" : 
					successMessage = "게시판 등록에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/board/list";
					break;
				case "insertThumbnail" : 
					successMessage = "썸네일 게시판 등록에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/thumbnail/list";
			
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
				
				case "insertCart" : 
					successMessage = "선택하신 상품을 장바구니에 담았습니다.";
					movePath = "${ pageContext.servletContext.contextPath }/cart/list";
					break;
			}

			alert(successMessage);
			
			location.replace(movePath);
		})();
	
	</script>

</body>
</html>

