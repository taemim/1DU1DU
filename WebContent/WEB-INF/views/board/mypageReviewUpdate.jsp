<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
    <link href="${ pageContext.servletContext.contextPath }/resources/css/mypageReviewUpdate.css" rel="stylesheet" type="text/css">
    <!-- 파비콘 -->
    <link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png">
    <title>사용자 - 리뷰 수정</title>
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
                <div class="mypage">
                    <h1>Review 수정</h1>
                    <br>
                    <!-- 전체 내역 조회 (=테이블명)-->
                    <form id="idfrm" name="SubmitFrm" action="${ pageContext.servletContext.contextPath }/review/update" method="post">
                  	  <input type="hidden" name="no" value="${ review.revNo }">
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
                                                <div class="pdtPhoto"><img src="${ pageContext.servletContext.contextPath }${ review.imgList[0].thumbnailPath }" width="150"
                                                        height="150" alt="${ review.goods.goodsName }"></div>
                                                <div class="pdfInfo">
                                                    <p class="pdtName tPad10"><a href="#">${ review.goods.goodsName }</a></p>
                                                    <span class="finalP"><fmt:formatNumber value="${ review.goods.price }" pattern="#,###,### 원"/></span>
                                                    </p>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="ct"><label for="revTitle" required>제목</label></th>
                                        <td colspan="3">
                                            <input type="text" id="revTitle" name="revTitle" class="txtInp" value="${ review.revTitle }"
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
                                                placeholder="상품평은 최소 10자 이상 입력해주세요." minlength="10" required>${ review.revContents }</textarea>
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
                                </tbody>
                            </table>

                            <div class="btnArea ct tPad30">
                                <!-- 취소 하기 누를 시 팝업 적용 하려고 할 때의 코드 -->
                                <button type="button" class="btn btnS1 btnGry btnW160"
                                    onclick="cancelReview()">취소하기</button>
                                <button type="submit" class="btn btnS1 btnRed btnW160">수정하기</button>
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
            if(confirm('리뷰 수정을 취소하시겠습니까?')){
            	location.href = "${ pageContext.servletContext.contextPath }/review/list";
            }
        }
    </script>

    <!-- footer import -->
    <jsp:include page="../main/footer.jsp"/>

</body>

</html>