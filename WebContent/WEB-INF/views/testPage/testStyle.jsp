<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="${ pageContext.servletContext.contextPath }/resources/css/testStyle.css" rel="stylesheet" type="text/css">
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
                    <h3>커피를 어떻게 내려드세요?</h3><br>
                    <div class="row">
                        <div class="col-4 box">
                            <button type="button" class="inner-box" value="원두본연의특색" onclick="nextTest(${ taste.testFlavor });">
                                <i id="bi" class="bi bi-check-lg"></i>
                                <h5>원두 본연의 특색을 즐겨요</h5>
                                <span>과일, 꽃, 허브 등의 향미를 즐기고 싶어요. <br>
                                      다채롭고 산미가 있는 경우가 일반적이에요.</span>
                            </button>
                        </div>
                        <div class="col-4 box">
                            <button type="button" class="inner-box" value="커피스러운커피" onclick="nextTest(${ taste.testFlavor });">
                                <i id="bi" class="bi bi-check-lg"></i>
                                <h5>커피스러운 커피 맛을 즐겨요</h5>
                                <span>우리가 잘 알고 있는 전형적인 그 커피예요. <br>
                                      산미가 적고 고소, 쌉싸름해요.</span>
                            </button>
                        </div>
                        <div class="col-4 box">
                            <button type="button" class="inner-box" value="조화로운맛" onclick="nextTest(${ taste.testFlavor });">
                                <i id="bi" class="bi bi-check-lg"></i>
                                <h5>조화로운 맛을 즐겨요</h5>
                                <span>익숙한 커피 맛과 원두 본연의 다채로운 향미를 <br>
                                      조화롭게 느낄 수 있어요.</span>
                            </button>
                        </div>

                    </div> <!-- /row -->

                    <div class="pre-box">
                        <button type="button" class="pre-button" onclick="preTest(${ taste.testDecaffeine });">
                            <img src="../resources/image/arrow_pre.png" alt="">
                        </button> <!-- /pre-button -->
                    </div> <!-- /pre-box -->

                </div>
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
        
	    function nextTest(testFlavor) {
	        location.href = '${ pageContext.servletContext.contextPath }/taste/testFlavor';
	    }
	    
	    function preTest(testDecaffeine) {
	        location.href = '${ pageContext.servletContext.contextPath }/taste/testDecaffeine';
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