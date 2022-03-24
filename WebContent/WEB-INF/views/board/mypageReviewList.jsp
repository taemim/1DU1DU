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
    <link href="${ pageContext.servletContext.contextPath }/resources/css/mypageReviewList.css" rel="stylesheet" type="text/css">
    <!-- 파비콘 -->
   <link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png">
    <title>사용자 - 리뷰 조회</title>
</head>

<body>

	<!-- header import -->
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
                    <div></div>
                </ul>
            </div>
            <!-- 마이페이지 메인 영역 -->
            <div class="col-lg-9 main-box">
                <div class="mypage table-scroll">
                    <h1>Review</h1>
                    <br>
                    <!-- 전체 내역 조회 (=my-review-list)-->
                    <table class="baseTable">
                        <colgroup>
                            <col width="60">
                            <col width="230">
                            <col width="320">
                            <col width="101">
                            <col width="85">
                            <col width="60">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">번호</th>
                                <th scope="col">상품</th>
                                <th scope="col">제목</th>
                                <th scope="col">작성일</th>
                                <th scope="col">평점</th>
                                <th scope="col">조회수</th>
                            </tr>
                        </thead>
                        <c:forEach var="rev" items="${ reviewList }">
                            <tbody>
                                <tr>
                                    <td>${ rev.revNo }</td>
                                    <td>과테말라 부에나 비스타 내추럴</td>
                                    <td class="rt">
                                        <a href="#none" class="url title myQuestion">${ rev.revTitle }</a>
                                    </td>
                                    <td>${ rev.writeDate }</td>
                                    <td>${ rev.gradeAvg }</td>
                                    <td>${ rev.revHits }</td>
                                </tr>

                                <tr class="answerView">
									<td colspan="6" style="display:none;">
										<div class="qnaList">
											<div class="question">
												<div class="account">
													<p>글 내용 <br>
                                                        <!-- 사진 첨부 예시 -->
                                                        <div class="pdtPhoto"><img
                                                            src="../resources/images/5.jpeg"
                                                            width="150" height="150" alt="과테말라 부에나 비스타 내추럴">
                                                        </div>
                                                        <!-- 사진 첨부 예시 -->
                                                        ${ rev.revContents }
                                                    </p>
												</div>
											</div>
											<div class="answer">
												<div class="account">
                                                    <p style="font-weight: bold; font-size: 22px;">${ rev.ansTitle }</p>
													<p>${ rev.ansContents }</p>
												</div>
											</div>
										</div>
                                        <div class="edit">
                                        <c:if test="${ !empty loginMember }">
                                        	<div class="btnArea ct tPad30">
                                                <button type="button" class="btn btnS1 btnGry btnW160" onclick="">삭제 하기</button>
                                                <button type="button" class="btn btnS1 btnRed btnW160" ondblclick="">수정 하기</button>
                                            </div>
                                        </c:if>
                                        </div>
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

    <script type="text/javascript">
        $(function() {
            $(".baseTable .myQuestion").click(function() {
                if($(this).parent().parent().next(".answerView").find("td").css("display") == "none") {
                    $(".baseTable .answerView td").slideUp();
                    $(this).parent().parent().next(".answerView").find("td").slideDown();
                } else {
                    $(this).parent().parent().next(".answerView").find("td").slideUp();
                }
            });
        });
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