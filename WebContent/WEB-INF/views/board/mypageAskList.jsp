<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- 부트스트랩 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- css 외부 링크 -->
    <link href="${ pageContext.servletContext.contextPath }/resources/css/mypageAsk.css" rel="stylesheet" type="text/css">
    <!-- 파비콘 -->
    <link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png">
    <title>사용자 - 1:1 문의 조회</title>
</head>
<body>

    <!-- header import -->
    <jsp:include page="../main/header.jsp"/>
    <h1 >헤더영역 비워두는 용도</h1>
    </div>
    <div style="margin-top:50px;"></div>

	<c:if test="${ empty sessionScope.loginMember }">
		<div class="error">
			<a href="${ pageContext.servletContext.contextPath }/member/login">
				<img src="${ pageContext.servletContext.contextPath }/resources/image/error.png">
				<p>회원만 접근 권한이 있습니다</p>
			</a>
		</div>
	</c:if>
	<c:if test="${ !empty sessionScope.loginMember }">
    <div class="container">
        <div class="row">
            <!-- 마이페이지 사이드 영역 -->
            <div class="col-lg-2 side-box">
                <ul>
                    <li class="li-1"><a href="mypage.html">mypage</a></li>
                    <li><a href="#">내 정보 확인</a></li>
                    <li><a href="#">구독 내역</a></li>
                    <li><a href="${ pageContext.servletContext.contextPath }/mypage/myOrder">주문 내역</a></li>
                    <li><a href="${ pageContext.servletContext.contextPath }/ask/list">1:1 문의</a></li>
                    <li><a href="${ pageContext.servletContext.contextPath }/review/list">리뷰 관리</a></li>
                    <li><a href="#">위시리스트 조회</a></li>
                    <li><a href="#">회원 탈퇴</a></li>
                    <div></div>
                </ul>
            </div>
            <!-- 마이페이지 메인 영역 -->
            <div class="col-lg-9 main-box">
                <div class="mypage table-scroll">
                    <h1>1:1 문의</h1>
                    <br>
                    <div class="top_menu">
                        <span style="padding-bottom: 20px;">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-check-all" viewBox="0 0 16 16">
                                <path d="M8.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L2.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093L8.95 4.992a.252.252 0 0 1 .02-.022zm-.92 5.14.92.92a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 1 0-1.091-1.028L9.477 9.417l-.485-.486-.943 1.179z"/>
                            </svg>
                            한 번 등록한 문의는 수정이 불가능하므로, 삭제 후 재문의 해 주시기 바랍니다.
                        </span>
                        <div class="write">
                             <button type="button"
                                 onclick="location.href='${ pageContext.servletContext.contextPath }/ask/insert'">작성하기</button>
                        </div>
                    </div>
                    <!-- 전체 내역 조회 (=my-ask-list)-->
                    <table class="baseTable">
                        <colgroup>
                            <col width="70">
                            <col width="150">
                            <col width="380">
                            <col width="120">
                            <col width="70">
                            <col width="70">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">번호</th>
                                <th scope="col">구분</th>
                                <th scope="col">제목</th>
                                <th scope="col">작성일</th>
                                <th scope="col">답변</th>
                                <th scope="col">삭제</th>
                            </tr>
                        </thead>
                        <c:forEach var="ask" items="${ askList }">
                            <tbody>
                                <tr>
                                    <td>${ ask.askNo }</td>
                                    <td>${ ask.askType }</td>
                                    <td class="rt">
                                    	<span class="url title myQuestion"  onclick="detailView(${ask.askNo})">${ ask.askTitle }</span>
                                    </td>
                                    <td>${ ask.askDate }</td>
                                    <td><c:if test="${ ask.ansContents != null }">Y</c:if></td>
                                    <td>
                                    	<button type="button" class="btn_delete" onclick="deleteAsk()"><strong style="font-size: large;">X</strong></button>
                                    	<!-- form 태그를 post 방식으로 제출 -->
										<form name="askForm" method="post">
											<input type="hidden" name="no" value="${ ask.askNo }">
										</form>
                                    </td>
                                </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>

                <!-- 페이징 -->
                <div class="pagination">
                    <a href="#">&laquo;</a>
                    <a href="#"><small>&lt;</small></a>
                    <a href="#">1</a>
                    <a class="active" href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#"><small>&gt;</small></a>
                    <a href="#">&raquo;</a>
                </div>

            </div>
        </div>
    </div>
    </c:if>

    <script type="text/javascript">
        function detailView(no){
			location.href = '${ pageContext.servletContext.contextPath }/ask/detail?no=' + no;
		}
        
        function deleteAsk(){
			if(confirm('선택하신 문의글을 삭제하시겠습니까?')){
				document.forms.askForm.action = "${ pageContext.servletContext.contextPath }/ask/delete";
				document.forms.askForm.submit();
			}
		}
    </script>
    
    <!-- footer import -->
    <jsp:include page="../main/footer.jsp"/>

</body>

</html>