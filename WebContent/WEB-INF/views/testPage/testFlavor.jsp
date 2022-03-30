<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="${ pageContext.servletContext.contextPath }/resources/css/testFlavor.css" rel="stylesheet" type="text/css">
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
                    <h3>어느 맛으로 즐기고 싶으세요?</h3><br>
                    <div class="row">
                        <div class="col-sm-3 box">

                            <button type="button" class="inner-box" value="커피메이커" onClick="nextTest(${ taste.testGrind });">
                                <i id="bi" class="bi bi-check-lg"></i>
                                <h5>상큼한 과일과 <br> 꽃향기의 <br> 깔끔한 느낌</h5>
                            </button>

                        </div>
                        <div class="col-sm-3 box">
                            <button type="button" class="inner-box" value="커피메이커" onClick="nextTest(${ taste.testGrind });">
                                <i id="bi" class="bi bi-check-lg"></i>
                                <h5>달콤한 과일과 <br> 농후한 느낌</h5>
                            </button>
                        </div>
                        <div class="col-sm-3 box">
                            <button type="button" class="inner-box" value="커피메이커" onClick="nextTest(${ taste.testGrind });">
                                <i id="bi" class="bi bi-check-lg"></i>
                                <h5>고소하고 달콤하고 <br> 향긋한 <br> 균형잡힌 느낌</h5>
                            </button>
                        </div>
                        <div class="col-sm-3 box">
                            <button type="button" class="inner-box" value="커피메이커" onClick="nextTest(${ taste.testGrind });">
                                <i id="bi" class="bi bi-check-lg"></i>
                                <h5>다크초콜릿 같은 <br> 쌉쌀함이 <br> 묵직한 느낌</h5>
                            </button>
                        </div>
                    </div>

                    <div class="pre-box">
                        <button type="button" class="pre-button" onClick="preTest(${ taste.testStyle });">
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
        
	    function nextTest(testGrind) {
	        location.href = '${ pageContext.servletContext.contextPath }/taste/testGrind';
	    }
	    
	    function preTest(testStyle) {
	        location.href = '${ pageContext.servletContext.contextPath }/taste/testStyle';
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