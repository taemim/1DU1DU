<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="${ pageContext.servletContext.contextPath }/resources/css/testResult.css" rel="stylesheet" type="text/css">
<link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png"> 
<title>1 D U 1 D U</title>
</head>
<body>
    <div class="header_hidden" >
        <jsp:include page="../main/header.jsp" />
    </div>

		<!-- menu bar-->
        <nav class="navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid" >
              
              <div class="collapse navbar-collapse" id="navbarSupportedContent" >
                <ul class="navbar-nav me-auto mb-2 mt-lg-2 mb-lg-2" >
                  <li class="nav-item ms-5 me-4">
                    <a class="nav-link fs-5" href="#">NEW</a>
                  </li>
                  <li class="nav-item me-4">
                    <a class="nav-link fs-5" href="#">BEST</a>
                  </li>
                  <li class="nav-item me-4">
                    <a class="nav-link fs-5" href="#">원두</a>
                  </li>
                  <li class="nav-item me-4">
                    <a class="nav-link fs-5" href="#">드립백</a>
                  </li>
                  <li class="nav-item me-4">
                    <a class="nav-link fs-5" href="#">콜드브루</a>
                  </li>
                  <li class="nav-item me-4">
                    <a class="nav-link fs-5" href="#">커피용품</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>

    <div class="container">
        <div class="row">
            <!-- 관리페이지 사이드 영역 숨김 -->
            <div class="container">
                <div class="side-box">
                    <br>
                    <h2>1DU 1DU의 추천</h2><br>
                    <h5>방금 입력하신 취향을 바탕으로 매달 새로운 원두를 보내드릴게요!</h5>
                    <div class="row">
                        <div class="col-4 box result-box">
                            <table class="result-list">
                                <tr>
                                    <td>내리는 방식</td>
                                    <td class="answered">에스프레소 머신</td>
                                </tr>
                                <tr>
                                    <td>평소 커피 취향</td>
                                    <td class="answered">라떼</td>
                                </tr>
                                <tr>
                                    <td>카페인</td>
                                    <td class="answered">디카페인</td>
                                </tr>
                                <tr>
                                    <td>스타일</td>
                                    <td class="answered">어른스러운 커피맛</td>
                                </tr>
                                <tr>
                                    <td>원두 향</td>
                                    <td class="answered">달콤한 과일과 농후한 느낌</td>
                                </tr>
                                <tr>
                                    <td>분쇄도</td>
                                    <td class="answered">도구에 맞게</td>
                                </tr>
                            </table>

                        </div> <!-- /col-5 box -->

                        <div class="anal">
                            <h3>김원두님의 취향 분석중...</h3>
                            <p>1DU 1DU가 추천하는 이번달 원두는 <br>
                                <b>케냐룽게토AB, 블랙수트, 과테말라 부에나 비스타 내추럴</b>이에요!</p>
                        </div> <!-- /anal -->

                        <div class="row">
                                <div class="col-3 box items">
                                    <img src="" alt="">
                                    <h5>케냐 룽게토 AB</h5>
                                    <p>자두의 쥬시함, 은은한 레몬티 향 <br> 12,000원</p>
                                </div>
                                <div class="col-3 box items">
                                    <img src="" alt="">
                                    <h5>블랙수트</h5>
                                    <p>이탈리안 에스프레소에 대한 오마주 <br> 10,000원</p>
                                </div>
                                <div class="col-3 box items">
                                    <img src="" alt="">
                                    <h5>과테말라 뷔에나 비스타 내추럴</h5>
                                    <p>초콜릿의 달콤함, 아몬드의 고소함 <br> 12,000원</p>
                                </div>
                        </div> <!-- /row -->

                        <!-- 정기 구독 버튼 -->
                        <div class="button-wrap">
                            <button type="button" class="subs-button">
                                <h5>정기 구독하러 가기</h5>
                                <p>이 옵션으로 구독할래요!</p>
                            </button> <!-- /subs-button -->
                            <button type="button" class="another-button" onclick="goodsList(${ goods.goodsList });">
                                <h5>다른 상품 둘러보기</h5>
                                <p>좀 더 둘러볼래요!</p>
                            </button> <!-- /another-button -->
                        </div> <!-- /another-wrap -->
                    </div> <!-- /row -->
                </div> <!-- /side-box -->
            </div><!-- /container -->
        </div> <!-- /row -->
    </div> <!-- /container -->



        <!-- footer import -->
        <div data-include-path="footer.html"></div>

        <script>

            $("#bi").onClick(function () {
                var con = document.getElementById("bi");
                if (con.style.display == "none") {
                    con.style.display = "block";
                } else {
                    con.style.display = "none";
                }
            });
            
            function goodsList(goodsList) {
                location.href = '${ pageContext.servletContext.contextPath }/goods/goodsList';
            }

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

        <!-- 부트스트랩 자바스크립트 -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</body>
</html>