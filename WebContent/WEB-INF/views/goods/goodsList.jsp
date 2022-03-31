<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="${ pageContext.servletContext.contextPath }/resources/css/goods_list.css" rel="stylesheet" type="text/css">
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

          <div class="container-fluid" style="margin-left: 70px;">
            <div class="goods_list_cont"> 
       
		    <div class="content_area">
			    <ul>
			    
			    	<!-- 저장된 사진 파일 경로로 그대로 상품 불러오기 -->
                    <li style="width:33.333333333333%;">
                        <div class="item_cont">
                            <div class="item_photo_box">
                               <img src="${ pageContext.servletContext.contextPath }/resources/image/매뉴팩트5.jpeg" width="417" alt="원두1" title="원두1" class="middle">
                            </div>
                            <div class="item_tit_box">
                                <a href="#">
                                  <strong class="item_name ">원두1</strong>
                                  <p class="item_e_name">ONEDU 1</p>
                                </a>
                            </div>
                         </div>
                    </li>
                    <li style="width:33.333333333333%;">
                        <div class="item_cont">
                            <div class="item_photo_box">
                                    <img src="${ pageContext.servletContext.contextPath }/resources/image/매뉴팩트6.jpeg" width="417" alt="원두2" title="원두2" class="middle">
                                </div>
                                <div class="item_tit_box">
                                    <a href="#">
                                        <strong class="item_name ">원두2</strong>
                                        <p class="item_e_name">ONEDU 2</p>
                                    </a>
                            </div>
                         </div>
                    </li>
                    <li style="width:33.333333333333%;">
                        <div class="item_cont">
                            <div class="item_photo_box">
                                
                                    <img src="${ pageContext.servletContext.contextPath }/resources/image/매뉴팩트원두3.jpeg" width="417" alt="원두3" title="원두3" class="middle">
                                </div>
                                <div class="item_tit_box">
                                    <a href="#">
                                        <strong class="item_name ">원두3</strong>
                                        <p class="item_e_name">ONEDU 3</p>
                                    </a>
                            </div>
                         </div>
                    </li>
                    <li style="width:33.333333333333%;">
                        <div class="item_cont">
                            <div class="item_photo_box">
                                
                                    <img id="img" src="${ pageContext.servletContext.contextPath }/resources/image/매뉴팩트원두4.jpeg" width="417" alt="원두4" title="원두4" class="middle">
                                </div>
                                <div class="item_tit_box">
                                    <a href="#">
                                        <strong class="item_name ">원두4</strong>
                                        <p class="item_e_name">ONEDU 4</p>
                                    </a>
                            </div>
                         </div>
                    </li>
                    <li style="width:33.333333333333%;">
                        <div class="item_cont">
                            <div class="item_photo_box">
                                
                                    <img id="img" src="${ pageContext.servletContext.contextPath }/resources/image/매뉴팩트5.jpeg" width="417" alt="원두6" title="원두6" class="middle">
                                </div>
                                <div class="item_tit_box">
                                    <a href="#">
                                        <strong class="item_name ">원두6</strong>
                                        <p class="item_e_name">ONEDU 6</p>
                                    </a>
                            </div>
                         </div>
                    </li>    
                    <li style="width:33.333333333333%;">
                        <div class="item_cont">
                            <div class="item_photo_box">
                                
                                    <img id="img" src="${ pageContext.servletContext.contextPath }/resources/image/매뉴팩트6.jpeg" width="417" alt="원두5" title="원두5" class="middle">
                                </div>
                                <div class="item_tit_box">
                                    <a href="#">
                                        <strong class="item_name ">원두5</strong>
                                        <p class="item_e_name">ONEDU 5</p>
                                    </a>
                            </div>
                         </div>
                    </li> 
                    
                    <!-- db에서 상품 불러오기 -->
                    <c:forEach var="goods" items="${ goodsList }">
                    <li style="width:33.333333333333%;">
                    	
                         <div class="item_cont">
                            <div class="item_photo_box" onclick="detailView(${ goods.goodsNo });">
                                <img src="${ pageContext.servletContext.contextPath }${ goods.imgList[0].thumbnailPath }" width="417" alt="원두1" title="원두1" class="middle">
                                <div class="item_tit_box">
                                	<a>
                                        <p class="item_name"><strong>${ goods.goodsName }</strong><br>
                                        <p class="item_e_name mt-0">${ goods.goodsNameEn }</p></p>
                                    </a>
                                </div>
                            </div>
                         </div>
                         
                    </li>
                	</c:forEach>
                    </ul>       
		</div>
	</div>
</div>
<script>
        function detailView(goodsNo) {
            location.href = '${ pageContext.servletContext.contextPath }/goods/detail?goodsNo=' + goodsNo;
        }
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>

				<%-- <c:forEach var="goods" items="${ goodsList }">
                    <li> <!-- style="width:33.333333333333%;" -->
                    	
                         <div class="item_cont">
                            <div class="item_photo_box" onclick="detailView(${ goods.goodsNo });">
                                <img src="${ pageContext.servletContext.contextPath }${ goods.imgList[0].thumbnailPath }" width="417" alt="원두1" title="원두1" class="middle">
                                <div class="item_tit_box">
                                        <strong class="item_name">${ goods.goodsName }</strong>
                                        <p class="item_e_name">${ goods.goodsNameEn }</p>
                                </div>
                            </div>
                         </div>
                         
                    </li>
                </c:forEach> --%>