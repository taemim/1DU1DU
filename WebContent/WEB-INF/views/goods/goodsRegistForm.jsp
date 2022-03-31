<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 구글웹폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Serif:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <!-- 부트스트랩 아이콘 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <!-- 부트 스트랩 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- css 외부 링크 -->
    <link href="${ pageContext.servletContext.contextPath }/resources/css/admin.css" rel="stylesheet" type="text/css">
    <!-- 제이쿼리 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- 파비콘 -->
    <link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png">
    <title>1DU1DU</title>
</head>
<body>
    
    <div class="header_hidden" >
        <jsp:include page="../main/header.jsp" />
    </div>

    <div class="container-fluid">
        <div class="row">
        <!-- 관리페이지 사이드 영역 -->
          <div class="col-lg-2 side-box">
            <br>
            <ul>
                <li class="li-1"><a href="adminMain.html">관리페이지</a></li>
                <li class="li-2">회원 관리</li>
                <li><a href="#">회원 조회</a></li>
                <li class="li-2">구독 관리</li>
                <li><a href="#">상품 등록</a></li>
                <li><a href="#">상품 조회</a></li>
                <li><a href="#">구독 내역 관리</a></li>
                <li><a href="admin-reqList.html">교환/반품/취소 관리</a></li>
                <li class="li-2">상품관리</li>
                <li><a href="${ pageContext.servletContext.contextPath }/goods/regist">상품 등록</a></li>
                <li><a href="mng_goods_list.html">상품 조회</a></li>
                <li><a href="admin-order.html">주문 내역 관리</a></li>
                <li><a href="admin-reqList.html">교환/반품/취소 관리</a></li>
                <li class="li-2">문의/리뷰 관리</li>
                <li><a href="#">1:1 문의 관리</a></li>
                <li><a href="#">리뷰 관리</a></li>
            </ul>
            <br>
          </div>
          <!-- 관리페이지 메인 영역 -->
          <div class="col-lg-9 main-box">
          <form method="post" action="${ pageContext.servletContext.contextPath }/goods/regist" enctype="multipart/form-data"> 
            	<div class="admin-page">
                <h1>일반 상품 등록</h1>
                <br>
                    <div class="row mb-3">
                      <label for="inputCategory" class="col-sm-2 col-form-label">카테고리</label>
                      <div class="col-sm-10">
                        <select id="inputCategory" class="form-select" name="categoryId">
                            <option selected>카테고리를 선택하세요</option>
                            <option value="1">NEW</option>
                            <option value="2">BEST</option>
                            <option value="3">원두</option>
                            <option value="4">드립백</option>
                            <option value="5">콜드브루</option>
                            <option value="6">커피용품</option>
                        </select>
                      </div>
                    </div>
                
                    <div class="row mb-3">
                      <label for="inputGoodsName" class="col-sm-2 col-form-label">상품명</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputGoodsName" name="goodsName">
                      </div>
                    </div>
                    <div class="row mb-3">
                        <label for="inputGoodsNameEn" class="col-sm-2 col-form-label">영문명</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="inputGoodsNameEn" name="goodsNameEn">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="inputGoodsShortDetail" class="col-sm-2 col-form-label">한줄설명</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="inputGoodsShortDetail" name="goodsExplain">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="formFile" class="col-sm-2 col-form-label">대표 이미지</label>
                        <div class="col-sm-10">
                        	<div class="image_area">
                        		<input class="form-control" type="file" id="formFile" name="thumbnail" accept="image/gif,image/jpeg,image/png" required>
                       		</div>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="inputGoodsPrice" class="col-sm-2 col-form-label">판매가</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="inputGoodsPrice" name="price">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="inputGoodsAmount" class="col-sm-2 col-form-label">재고수량</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="inputGoodsAmount" name="totalStock">
                        </div>
                    </div>
                    <div class="row g-2">
                        <label for="inputGoodsOption" class="col-sm-2 col-form-label">옵션 추가</label>
                        <div class="col-sm-2">
                            <select id="inputOption" class="form-select">
                                <option selected>옵션 카테고리</option>
                                <option value="1">용량</option>
                                <option value="2">분쇄도</option>
                            </select>
                        </div>
                        <div class="col-sm">
                          <input type="text" class="form-control" id="inputGoodsOption" placeholder="옵션명">
                        </div>
                        <div class="col-sm">
                            <input type="text" class="form-control" id="inputGoodsOptionPrice" placeholder="옵션추가금액">
                        </div>
                        <div class="col-sm">
                            <button type="submit" class="btn btn-dark">옵션 추가</button>
                        </div>
                    </div>
                    
                    <!-- 옵션 선택하면 나타나는 박스 -->
                    <div class="row bg-secondary bg-opacity-10" style="display:none" id="optionDiv">
                	<div class="col-5">
                		<div class="d-grid gap-3">
                			<p class="text mt-4 ms-3">
                			<span id='gram'></span>&nbsp / &nbsp<span id='grinder'></span>
                		</div>
                		<div class="row">
                			<div class="col">
                				<div class="d-grid gap-2" onclick='count("minus")' value='-'>
                					<a href="#"><i class="bi bi-dash-square ms-3"></i></a>
                				</div>
                			</div>
                			<div class="col mt-0">
                				<div class="d-grid gap-2">
                					<div id="result"><p class="text mt-0 ms-3">1</p></div>
                				</div>
                			</div>
                			<div class="col">
                				<div class="d-grid gap-2" onclick='count("plus")' value='+'>
                					<a href="#"><i class="bi bi-plus-square ms-3"></i></a>
                				</div>
                			</div>
                		</div>
                	</div>
                	<div class="col-5">
                	</div>              	
                	<div class="col-2">
                		<button type="button" class="btn-close mt-3 ms-5" aria-label="Close"></button>
                		<p class="fw-bold mt-4 ms-1 mb-0"><strong id="optionPrice"><fmt:formatNumber value="${goods.price}" type="number"/>원</strong></p>
                	</div>
                	</div>
                	<!-- /옵션 선택하면 나타나는 박스 -->
                    
                    <div class="row mb-3 mt-3">
                        <label for="inputGoodsdetails" class="col-sm-2 col-form-label">About This Coffee</label>
                        <div class="col-sm form-floating">
                            <textarea class="form-control" placeholder="상품 상세 설명" id="inputGoodsdetails" name="goodsExplainDetail"></textarea>
                            <label for="floatingTextarea">상품 상세 설명</label>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="formFile" class="col-sm-2 col-form-label">상품 상세 이미지</label>
                        <div class="col-sm-10">
                        	<div class="image_area">
                        		<input class="form-control" type="file" id="formFile" accept="image/gif,image/jpeg,image/png" required>
                        	</div>
                        </div>
                    </div>
                    
                    <div class="row mb-3 mt-5">
                        <div class="col-sm">
                            <button type="submit" class="btn btn-dark">상품 등록</button>
                        </div>
                    </div>
                  </div>
            </form>
                </div>
            </div>
          </div>
        

    <!-- footer import -->
    <jsp:include page="../main/footer.jsp" />
  
    <script>
    	window.addEventListener('load', function() {
       	 var allElements = document.getElementsByTagName('*');
        	Array.prototype.forEach.call(allElements, function(el) {
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