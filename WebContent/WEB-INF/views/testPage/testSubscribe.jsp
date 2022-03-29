<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="${ pageContext.servletContext.contextPath }/resources/css/mypageSubsRecentHistory.css" rel="stylesheet" type="text/css">
<link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png"> 
<title>1 D U 1 D U</title>
</head>
<body>
    <div class="header_hidden">
        <h1> 헤더영역 비워두는 용도 </h1>
    </div>

    <div class="container">
        <div class="row">
            <!-- 관리페이지 사이드 영역 숨김 -->
            <div class="container">
                <div class="side-box">
                    <br>
                    <h2>구독정보</h2>
                    <br>

                    <hr>
                    <div class="row subs-box">
                        <div class="col-3 box items">
                            <img src="" alt="">
                        </div>
                        <div class="col-3 box item-txt">
                            <h5>원두 정기구독 <br> 9,900원</h5>
                            <p>케냐룽게토AB 100g <br> 블랙수트 100g <br> 과테말라 부에나 비스타 내추럴 100g </p>
                        </div> <!-- /item-txt -->
                    </div> <!-- /row subs-box -->

                    <hr>
                    <div class="row">
                        <div class="col-6 box item-notice">
                            <table>
                                <tr>
                                    <td>첫 커피는</td>
                                    <td class="dlvr-day">4일 뒤</td>
                                    <td>도착 예정이고,</td>
                                </tr>
                                <tr>
                                    <td>다음 결제일은</td>
                                    <td class="pay-day">n월 n일</td>
                                    <td>입니다.</td>
                                </tr>
                            </table>
                        </div> <!-- /item-notice -->
                    </div> <!-- /row subs-box -->

                    <hr>
                    <div class="mini-notice">
                        <p><span>&#x2764;</span> 다음 커피는 1DU 1DU가 취향에 맞게 보내드릴게요!</p>
                        <p><span>&#x2764;</span> 구독 옵션은 언제든지 마이페이지에서 수정할 수 있습니다.</p>
                    </div> <!-- /mini-notice -->

                    <button class="pay-button">결제하기</button>

                </div> <!-- /side-box -->
            </div> <!-- /container -->
        </div><!-- /row -->
    </div> <!-- /container -->



    <!-- footer import -->
    <div data-include-path="footer.jsp"></div>

    <script>

        $("#bi").onClick(function () {
            var con = document.getElementById("bi");
            if (con.style.display == "none") {
                con.style.display = "block";
            } else {
                con.style.display = "none";
            }
        });

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