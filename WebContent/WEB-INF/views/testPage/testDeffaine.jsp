<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="${ pageContext.servletContext.contextPath }/resources/css/testDecaffeine.css" rel="stylesheet" type="text/css">
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
                    <h3>디카페인도 준비되어 있어요 <br> 어떻게 추천해드릴까요?</h3>
                    <div class="row">
                        <div class="col-5 box">

                            <button type="button" class="inner-box" value="카페인" onClick="location.href='testStyle.jsp'">
                                <h5>카페인으로 주세요</h5>
                            </button>

                        </div>
                        <div class="col-5 box">
                            <button type="button" class="inner-box" value="디카페인" onClick="location.href='testStyle.jsp'">
                                <i id="bi" class="bi bi-check-lg"></i>
                                <h5>디카페인으로 주세요</h5>
                            </button>
                        </div>

                    </div> <!-- /row -->

                    <div class="pre-box">
                        <button type="button" class="pre-button" onClick="location.href='testTopping.jsp'">
                            <i id="bi" class="bi bi-check-lg"></i>
                            <img src="/resources/image/arrow_pre.png" alt="">
                        </button> <!-- /pre-button -->
                    </div> <!-- /pre-box -->

                </div> <!-- /side-box -->
            </div>
        </div>
    </div>



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