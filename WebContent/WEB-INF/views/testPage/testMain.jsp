<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="${ pageContext.servletContext.contextPath }/resources/css/testMain.css" rel="stylesheet" type="text/css">
<link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png"> 
<title>1 D U 1 D U</title>
</head>
<body>
	<div class="header_hidden" >
        <jsp:include page="../main/header.jsp" />
    </div>


    <div class="container">
        <div class="row">
            <!-- 관리페이지 사이드 영역 숨김 -->
            <div class="wrapper">
                <div class="side-box">
                    <br>
                    <h3>안녕하세요. 매일 즐길 수 있는 커피 구독, 1DU 1DU입니다.</h3><br>
                    <h3>커피 추천을 위해 저희가 불러드릴 이름을 입력해주세요.</h3>
                    <div class="row">
                        <div class="col-sm-3 box name-box">
                            <input class="name-box" type="text" name="userName" placeholder="이름을 입력해주세요.">
                        </div> <!-- /box -->

                        <div class="start-box" onclick="nextTest(${ taste.testTools });">
                            <button type="button" class="start" value="submit" >테스트 시작하기</button>
                        </div> <!-- /start-box -->
                    </div><!-- row -->

                </div> <!-- /side-box -->
            </div> <!-- /wrapper -->
        </div> <!-- /row -->



        <!-- footer import -->
        <div data-include-path="footer.html"></div>

        <script>

        function nextTest(testTools) {
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

        <!-- 부트스트랩 자바스크립트 -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>