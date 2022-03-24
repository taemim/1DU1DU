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
    <link href="${ pageContext.servletContext.contextPath }/resources/css/mypageAskInsert.css" rel="stylesheet" type="text/css">
    <!-- 파비콘 -->
    <link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png">
    <title>사용자 - 1:1 문의 등록</title>
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
                    <li><a href="#">리뷰 관리</a></li>
                    <li><a href="#">위시리스트 조회</a></li>
                    <li><a href="#">회원 탈퇴</a></li>
                </ul>
            </div>
            <!-- 마이페이지 메인 영역 -->
            <div class="col-lg-9 main-box">
                <div class="mypage">
                    <h1>1:1 문의 작성</h1>
                    <br>
                    <!-- 전체 내역 조회 (=테이블명)-->
                    <form id="idfrm" name="SubmitFrm" action="${ pageContext.servletContext.contextPath }/ask/insert"  method="post">
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
                                        <td colspan="3">
                                            <div class="itemField">
                                                <select class="form-select form-select-sm" name="ask" style="width: 300px;">
                                                    <option selected>문의 분야를 선택해 주세요.</option>
                                                    <option value="1">배송 문의</option>
                                                    <option value="2">주문 문의</option>
                                                    <option value="3">교환/반품/환불 문의</option>
                                                    <option value="4">상품 문의</option>
                                                    <option value="5">기타 문의</option>
                                                </select>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr id="layoutView1" name="layoutView1">
                                        <th scope="row" class="ct"><label for="prodNo">상품 번호</label></th>
                                        <td colspan="3">
                                            <input type="text" id="prodNo" name="prodNo" value=""
                                                class="txtInp rMar05 crRed fb" style="width:120px; height: 24px;">
                                        </td>
                                    </tr>
                                    <tr class="user_padding">
                                        <th scope="row" class="ct">주문자</th>
                                        <td readonly></td>
                                        <th scope="row" class="ct">아이디</th>
                                        <td readonly></td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="ct"><label for="askTitle" required>제목</label></th>
                                        <td colspan="3">
                                            <input type="text" id="askTitle" name="askTitle" class="txtInp"
                                                style="width:670px; height: 24px;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="ct">
                                            <label for="askContents">내용<br>
                                                <div id="charlen">
                                                    <p><span id="counter">0</span> / 700</p>
                                                </div>
                                            </label>
                                        </th>
                                        <!-- <input type="hidden" name="contents" value=""> -->
                                        <td colspan="3">
                                            <textarea id="askBody" name="askContents" cols="60" rows="8" required></textarea>
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
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="ct">사진 첨부</th>
                                        <td colspan="3">
                                            <div class="attachFile" id="idDivInputFile">
                                                <input type="file" title="첨부이미지 찾아보기" name="sfile"
                                                    class="inputFile form-control form-control-sm">
                                                <button type="button" class="btnListDel" onclick="">삭제</button>
                                            </div>
                                            <!-- <p class="tMar07 fs12">파일크기는 3MB이하, JPG, PNG 또는 GIF형식의 파일만 가능합니다.</p> -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="ct"><label for="email">이메일</label></th>
                                        <td colspan="3">
                                            <input type="email" id="email" name="email" placeholder="1DU1DU@gmail.com"
                                                class="txtInp" style="width:200px;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="ct"><label for="tel">연락처</label></th>
                                        <td colspan="3">
                                            <input type="tel" id="tel" name="tel" placeholder="연락처 입력" class="txtInp"
                                                style="width:200px;">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="btnArea ct tPad30">
                                <!-- 취소 하기 누를 시 팝업 적용 하려고 할 떄의 코드 -->
                                <button type="button" class="btn btnS1 btnGry btnW160" onclick="cancelAsk()">취소 하기</button>
                                <button type="submit" class="btn btnS1 btnRed btnW160"">문의 하기</button>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
    function cancelAsk(){
		if(confirm('1:1 문의 작성을 취소하시겠습니까?')){
			location.href = "${ pageContext.servletContext.contextPath }/ask/list";
		}
	}
    </script>

    <!-- footer import -->
    <div data-include-path=" footer.html">
    </div>

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

</body>
</html>