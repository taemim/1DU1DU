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
    <link href="${ pageContext.servletContext.contextPath }/resources/css/mypageReviewInsert.css" rel="stylesheet" type="text/css">
    <!-- 파비콘 -->
    <link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png">
    <title>사용자 - 리뷰 등록</title>
</head>

<body>

    <!-- header import -->
    <jsp:include page="../main/header.jsp"/>

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
                </ul>
            </div>
            <!-- 마이페이지 메인 영역 -->
            <div class="col-lg-9 main-box">
                <div class="mypage">
                    <h1>Review 작성</h1>
                    <br>
                    <!-- 전체 내역 조회 (=테이블명)-->
                    <form id="idfrm" name="SubmitFrm" action="${ pageContext.servletContext.contextPath }/review/insert" method="post">
                        <fieldset>
                            <table class="baseTable rowTable docForm tMar15">
                                <colgroup>
                                    <col width="120">
                                    <col width="740">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row" class="ct">상품 정보</th>
                                        <td>
                                            <div class="goodsInfo">
                                                <div class="pdtPhoto"><img
                                                        src="${ pageContext.servletContext.contextPath }${ reviewDetail.imgList[0].thumbnailPath }"
                                                        width="150" height="150"></div>
                                                <div class="pdfInfo">
                                                    <p class="pdtName tPad10"><a href="#">과테말라 부에나 비스타 내추럴</a></p>
                                                    <p class="pdtPrice tPad10"><span class="finalP">19,000원</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="ct"><label for="revTitle" required>제목</label></th>
                                        <td colspan="3">
                                            <input type="text" id="revTitle" name="revTitle" class="txtInp"
                                                style="width:670px; height: 24px;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="ct">
                                            <label for="revContents">내용<br>
                                                <div id="charlen">
                                                    <p><span id="counter">0</span> / 700</p>
                                                </div>
                                            </label>
                                        </th>
                                        <td colspan="3">
                                            <textarea id="revContents" name="revContents" cols="60" rows="8"
                                            	placeholder="상품평은 최소 10자 이상 입력해주세요." minlength="10" required></textarea>
                                            <script>
                                                $("textarea").keyup(function () {
                                                    // 현재 요소의 값의 길이 알기
                                                    let inputLength = $(this).val().length;
                                                    $("#counter").text(inputLength);

                                                    // 700개까지 남은 갯수 계산해서 처리
                                                    let remain = 700 - inputLength;

                                                    if (remain >= 0) {
                                                        $("#counter").css("color", "black");
                                                    } else {
                                                        $("#counter").css("color", "red");
                                                    }
                                                });
                                            </script>
                                            <p class="asset">고객님의 소중한 상품평은 1DU1DU의 큰 자산이 됩니다.</p>
                                        </td>
                                    </tr>
                                    <!-- <tr>
                                        <th scope="row" class="ct">첨부 이미지</th>
                                        <td colspan="3">
                                            <div class="attachFile" id="idDivInputFile">
                                                <input type="file" title="첨부이미지 찾아보기" name="sfile"
                                                    class="inputFile form-control form-control-sm">
                                                <button type="button" class="btnListDel" onclick="">삭제</button>
                                            </div>
                                            <p class="tMar07 fs12">파일크기는 3MB이하, JPG, PNG 또는 GIF형식의 파일만 가능합니다.</p>
                                        </td>
                                    </tr> -->
                                    <tr>
                                        <th scope="row" class="ct">만족도</th>
                                        <td>
                                            <div class="satisfactionList">
                                                <div class="itemField">
                                                    <ul>
                                                        <li>
                                                            <input type="radio" name="totPnt" value="♥♥♥♥♥" checked="" id="satisfaction15">
                                                            <label for="satisfaction15">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#bf3f27" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#bf3f27" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#bf3f27" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#bf3f27" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#bf3f27" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                            </label>
                                                        </li>
                                                        <li>
                                                            <input type="radio" name="totPnt" value="♥♥♥♥♡" id="satisfaction11">
                                                            <label for="satisfaction11">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#bf3f27" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#bf3f27" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#bf3f27" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#bf3f27" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#cfcdcb" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                            </label>
                                                        </li>
                                                        <li>
                                                            <input type="radio" name="totPnt" value="♥♥♥♡♡" id="satisfaction12">
                                                            <label for="satisfaction12">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#bf3f27" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#bf3f27" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#bf3f27" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#cfcdcb" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#cfcdcb" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                            </label>
                                                        </li>
                                                        <li>
                                                            <input type="radio" name="totPnt" value="♥♥♡♡♡" id="satisfaction13">
                                                            <label for="satisfaction13">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#bf3f27" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#bf3f27" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#cfcdcb" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#cfcdcb" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#cfcdcb" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                            </label>
                                                        </li>
                                                        <li>
                                                            <input type="radio" name="totPnt" value="♥♡♡♡♡" id="satisfaction14">
                                                            <label for="satisfaction14">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#bf3f27" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#cfcdcb" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#cfcdcb" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#cfcdcb" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#cfcdcb" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                                                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                                                                </svg>
                                                            </label>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="btnArea ct tPad30">
                            	<!-- 취소 하기 누를 시 팝업 적용 하려고 할 떄의 코드 -->
                                <button type="button" class="btn btnS1 btnGry btnW160" onclick="cancelReview()">취소하기</button>
                                <button type="submit" class="btn btnS1 btnRed btnW160"">등록하기</button>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </c:if>
    
    <script type="text/javascript">
    function cancelReview(){
		if(confirm('리뷰 작성을 취소하시겠습니까?')){
			location.href = "${ pageContext.servletContext.contextPath }/review/list";
		}
	}
    </script>

    <!-- footer import -->
    <jsp:include page="../main/footer.jsp"/>

</body>

</html>