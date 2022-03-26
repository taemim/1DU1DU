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
    <link href="${ pageContext.servletContext.contextPath }/resources/css/mypageAskDetail.css" rel="stylesheet" type="text/css">
    <!-- 파비콘 -->
	<link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png">
    <title>사용자 - 1:1 문의 상세</title>
</head>

<body>

    <div class="header_hidden">
        <h1> 헤더영역 비워두는 용도 </h1>
    </div>

    <div class="container">
        <div class="row">
            <!-- 마이페이지 사이드 영역 -->
            <div class="col-lg-2 side-box">
                <ul>
                    <li class="li-1"><a href="mypage.html">mypage</a></li>
                    <li><a href="#">내 정보 확인</a></li>
                    <li><a href="#">구독 내역</a></li>
                    <li><a href="#">주문 내역</a></li>
                    <li><a href="${ pageContext.servletContext.contextPath }/ask/list">1:1 문의</a></li>
                    <li><a href="${ pageContext.servletContext.contextPath }/review/list">리뷰 관리</a></li>
                    <li><a href="#">위시리스트 조회</a></li>
                    <li><a href="#">회원 탈퇴</a></li>
                </ul>
            </div>
            <!-- 마이페이지 메인 영역 -->
            <div class="col-lg-9 main-box">
                <div class="mypage">
                    <h1>1:1 문의 조회</h1>
                    <br>
                    <!-- 전체 내역 조회 (=테이블명)-->
                    <form id="idfrm" name="SubmitFrm" method="get" action="">
                        <fieldset>
                            <table class="baseTable rowTable docForm tMar15">
                                <colgroup>
                                    <col width="120">
                                    <col width="*">
                                    <col width="120">
                                    <col width="290">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row" rowspan="1" class="ct">문의 분야</th>
                                        <td colspan="3">${ askDetail.ask.askName }</td>
                                    </tr>
                                    <tr class="user_padding">
                                        <th scope="row" class="ct">주문자</th>
                                        <td>주문자 이름</td>
                                        <th scope="row" class="ct">아이디</th>
                                        <td>주문자 아이디</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="ct"><label for="subject" required>제목</label></th>
                                        <td colspan="3">${ askDetail.askTitle }</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="ct">
                                            <label for="message">내용<br></label>
                                        </th>
                                        <td colspan="3" class="content">${ askDetail.askContents }</td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="btnArea ct tPad30">
                                <button type="button" class="btn btnS1 btnGry btnW160" 
                                onclick="location.href='${ pageContext.servletContext.contextPath }/ask/list'">취소 하기</button>
                                <%-- <button type="button" class="btn btnS1 btnRed btnW160" onclick="updateNoticeView(${ ask.askNo })">수정 하기</button> --%>
                                <!-- form 태그를 post 방식으로 제출 -->
								<form name="askForm" method="post">
									<input type="hidden" name="askNo" value="${ ask.askNo }">
								</form>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <script>
		function updateNoticeView(no){
			location.href = "${ pageContext.servletContext.contextPath }/ask/update?no="+no;
		}
	</script>

    <!-- footer import -->
    <div data-include-path="footer.html"></div>

    <script>
        window.addEventListener('load', function () {
            var allElements = document.getElementsByTagName('*');
            Array.prototype.forEach.call(allElements, function (el) {
                var includePath = el.dataset.includePath;
                if (includePath) {
                    var xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function () {
                        if (this.readyState == 4 && this.status == 200) {
                            el.outerHTML = this.responseText;
                        }
                    };
                    xhttp.open('GET', includePath, true);
                    xhttp.send();
                }
            });
        });
    </script>

</body>

</html>