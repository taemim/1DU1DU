<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="${ pageContext.servletContext.contextPath }/resources/css/testTopping.css" rel="stylesheet" type="text/css">
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
                    <h3>어떤 커피를 즐기세요?</h3><br>
                    <div class="row">
                        <div class="col-sm-3 box">
                            <button type="button" class="inner-box" onclick="nextTest(${ taste.testDecaffeine });">
                                <i id="bi" class="bi bi-check-lg"></i>
                                <img src="../resources/image/black.png">
                                <h5>블랙 그대로</h5>
                            </button>

                        </div>
                        <div class="col-sm-3 box">
                            <button type="button" class="inner-box" onclick="nextTest(${ taste.testDecaffeine });">
                                <i id="bi" class="bi bi-check-lg"></i>
                                <img src="../resources/image/latte.png">
                                <h5>우유를 더한 라떼</h5>
                            </button>
                        </div>

                        <div class="col-sm-3 box">
                            <button type="button" class="inner-box" onclick="nextTest(${ taste.testDecaffeine });">
                                <i id="bi" class="bi bi-check-lg"></i>
                                <img src="../resources/image/sugar.png">
                                <h5>설탕을 넣은 커피</h5>
                            </button>
                        </div>

                        <div class="col-sm-3 box">
                            <button type="button" class="inner-box" onclick="nextTest(${ taste.testDecaffeine });">
                                <i id="bi" class="bi bi-check-lg"></i>
                                <img src="../resources/image/syrup.png">
                                <h5>시럽을 넣은 커피</h5>
                            </button>
                        </div>
                    </div> <!-- /side-box -->

                    <div class="pre-box">
                        <button type="button" class="pre-button" onclick="preTest(${ taste.testTools });">
                            <img src="../resources/image/arrow_pre.png" alt="">
                        </button> <!-- /pre-button -->
                    </div> <!-- /pre-box -->

                </div>
            </div>
        </div>
    </div>

    <script>
        $("#bi").onClick(function() {
            var con = document.getElementById("bi");
            if (con.style.display == "none") {
                con.style.display = "block";
            } else {
                con.style.display = "none";
            }
        });
    </script>



    <!-- footer import -->
    <div data-include-path="footer.html"></div>

    <script>

	    function nextTest(testDeccafeine) {
	        location.href = '${ pageContext.servletContext.contextPath }/taste/testDecaffeine';
	    }
	    
	    function preTest(testTools) {
	        location.href = '${ pageContext.servletContext.contextPath }/taste/testTools';
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
</html>