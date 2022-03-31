<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 구글웹폰트 -->
	<link href="https://fonts.googleapis.com/css2?family=Roboto+Serif:wght@300&display=swap"
				rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
				rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        
    <link href="${ pageContext.servletContext.contextPath }/resources/css/testMain.css" rel="stylesheet" type="text/css">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/testTools.css" rel="stylesheet" type="text/css">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/testTopping.css" rel="stylesheet" type="text/css">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/testDecaffeine.css" rel="stylesheet" type="text/css">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/testStyle.css" rel="stylesheet" type="text/css">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/testFrag.css" rel="stylesheet" type="text/css">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/testGrind.css" rel="stylesheet" type="text/css">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/testResult.css" rel="stylesheet" type="text/css">
   
    <link rel="icon" type="image/x-icon"
        href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png">
    
    <title>1 D U 1 D U</title>
</head>

</style>

<body>
	<jsp:include page="/WEB-INF/views/main/header.jsp" />
	<div class="header_hidden">
		<h1>헤더영역 비워두는 용도</h1>
	</div>

    <form name="main" action="" id="main">
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
                                <button type="button" class="start" value="submit">테스트 시작하기</button>
                            </div> <!-- /start-box -->
                        </div><!-- row -->

                    </div> <!-- /side-box -->
                </div> <!-- /wrapper -->
            </div> <!-- /row -->
        </div> <!-- /container -->
    </form> <!-- /main -->


    <form name="tools" action="" id="main">
        <div class="container">
            <div class="row">
                <!-- 관리페이지 사이드 영역 숨김 -->
                <div class="container">
                    <div class="side-box">
                        <br>
                        <h3>커피를 어떻게 내려드세요?</h3><br>
                        <div class="row">
                            <div class="col-sm-3 box">

                                <button type="button" class="inner-box" value="커피메이커"
                                    onclick="nextTest(${ taste.testTopping });">
                                    <i id="bi" class="bi bi-check-lg"></i>
                                    <img src="../resources/image/coffee-maker.png">
                                    <h5>커피메이커</h5>
                                </button>
                            </div>

                            <div class="col-sm-3 box">
                                <button type="button" class="inner-box" value="커피메이커"
                                    onclick="nextTest(${ taste.testTopping });">
                                    <i id="bi" class="bi bi-check-lg"></i>
                                    <img src="../resources/image/dripper.png">
                                    <h5>핸드드립</h5>
                                </button>
                            </div>

                            <div class="col-sm-3 box">
                                <button type="button" class="inner-box" value="커피메이커"
                                    onclick="nextTest(${ taste.testTopping });">
                                    <i id="bi" class="bi bi-check-lg" style="display:none;"></i>
                                    <img src="../resources/image/espresso.png">
                                    <h5>에스프레소 머신</h5>
                                </button>
                            </div>

                            <div class="col-sm-3 box">
                                <button type="button" class="inner-box" value="커피메이커"
                                    onclick="nextTest(${ taste.testTopping });">
                                    <i id="bi" class="bi bi-check-lg"></i>
                                    <img src="../resources/image/moka-pot.png">
                                    <h5>모카포트</h5>
                                </button>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-3 box">
                                <button type="button" class="inner-box" value="커피메이커"
                                    onclick="nextTest(${ taste.testTopping });">
                                    <i class="bi bi-check-lg"></i>
                                    <img src="../resources/image/french-press.png">
                                    <h5>프렌치 프레스</h5>
                                </button>
                            </div>

                            <div class="col-sm-3 box">
                                <button type="button" class="inner-box" value="커피메이커"
                                    onclick="nextTest(${ taste.testTopping });">
                                    <i id="bi" class="bi bi-check-lg"></i>
                                    <img src="../resources/image/aeropress.png">
                                    <h5>에어로 프레스</h5>
                                </button>
                            </div>
                            <div class="col-sm-3 box">
                                <button type="button" class="inner-box" value="커피메이커"
                                    onclick="nextTest(${ taste.testTopping });">
                                    <i id="bi" class="bi bi-check-lg"></i>
                                    <img src="../resources/image/cold-brew.png">
                                    <h5>콜드 브루</h5>
                                </button>
                                <div class="col-sm-1"></div>
                            </div>
                        </div>


                        <div class="pre-box">
                            <button type="button" class="pre-button" onclick="preTest(${ taste.testMain });">
                                <img src="../resources/image/arrow_pre.png" alt="">
                            </button> <!-- /pre-button -->
                        </div> <!-- /pre-box -->

                    </div><!-- /side-box -->
                </div><!-- (inner)container -->
            </div> <!-- /row -->
        </div> <!-- /container -->
    </form> <!-- /tools -->


    <form name="topping" action="" id="main">
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
                        </div> <!-- /row -->
    
                        <div class="pre-box">
                            <button type="button" class="pre-button" onclick="preTest(${ taste.testTools });">
                                <img src="../resources/image/arrow_pre.png" alt="">
                            </button> <!-- /pre-button -->
                        </div> <!-- /pre-box -->
    
                    </div> <!-- /side-box -->
                </div> <!-- /continer(inner) -->
            </div> <!-- /row -->
        </div> <!-- /container -->
    </form> <!-- /topping -->


    <form name="deccafeine" action="" id="main">
        <div class="container">
            <div class="row">
                <!-- 관리페이지 사이드 영역 숨김 -->
                <div class="container">
                    <div class="side-box">
                        <br>
                        <h3>디카페인도 준비되어 있어요 <br> 어떻게 추천해드릴까요?</h3>
                        <div class="row">
                            <div class="col-5 box">
    
                                <button type="button" class="inner-box" value="카페인" onclick="nextTest(${ taste.testStyle });">
                                    <h5>카페인으로 주세요</h5>
                                </button>
    
                            </div>
                            <div class="col-5 box">
                                <button type="button" class="inner-box" value="디카페인" onclick="nextTest(${ taste.testStyle });">
                                    <i id="bi" class="bi bi-check-lg"></i>
                                    <h5>디카페인으로 주세요</h5>
                                </button>
                            </div>
    
                        </div> <!-- /row -->
    
                        <div class="pre-box">
                            <button type="button" class="pre-button" onclick="preTest(${ taste.testTopping });">
                                <i id="bi" class="bi bi-check-lg"></i>
                                <img src="../resources/image/arrow_pre.png" alt="">
                            </button> <!-- /pre-button -->
                        </div> <!-- /pre-box -->
    
                    </div> <!-- /side-box -->
                </div> <!-- /container(inner) -->
            </div> <!-- row -->
        </div> <!-- /container -->
    </form> <!-- /decaffeine -->
    
    <form name="style" action="" id="main">
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
	
	                </div> <!-- /side-box -->
	            </div> <!-- /container(inner) -->
	        </div> <!-- row -->
	    </div> <!-- /container -->
    </form> <!-- /style -->


<<<<<<< HEAD
    <form name="style" action="" id="main">
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
	
	                </div> <!-- /side-box -->
	            </div> <!-- /container(inner) -->
	        </div> <!-- row -->
	    </div> <!-- /container -->
    </form> <!-- /style -->


	<form name="frag" action="" id="frag" inputtype="hidden">
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
	                    </div> <!-- /row -->
	
	                    <div class="pre-box">
	                        <button type="button" class="pre-button" onClick="preTest(${ taste.testStyle });">
	                            <img src="../resources/image/arrow_pre.png" alt="">
	                        </button> <!-- /pre-button -->
	                    </div> <!-- /pre-box -->
	
	                </div><!-- /side-box -->
	            </div> <!-- /container(inner) -->
	        </div> <!-- /row -->
	    </div> <!-- /container -->
	</form> <!-- /frag -->
	
	
	<form name="grind" action="" id="grind">
		<div class="container">
	        <div class="row">
	            <!-- 관리페이지 사이드 영역 숨김 -->
	            <div class="container">
	                <div class="side-box" style="height: 700px;">
	                    <br>
	                    <h3>마지막으로, 원두를 갈아드릴까요?</h3><br>
	                    <div class="row">
	                        <div class="col-2 box">
	
	                            <button type="button" class="inner-box" value="커피메이커" onClick="nextTest(${ taste.testResult });">
	                                <i id="bi" class="bi bi-check-lg"></i>
	                                <h5>갈지 않고 받을래요</h5>
	                            </button>
	                        </div>
	
	                        <div class="col-2 box">
	                            <button type="button" class="inner-box" value="커피메이커" onClick="nextTest(${ taste.testResult });">
	                                <i id="bi" class="bi bi-check-lg"></i>
	                                <h5>도구에 맞게 갈아주세요</h5>
	                            </button>
	                        </div>
	                    </div> <!-- /row -->
	
	                    <div class="pre-box">
	                        <button type="button" class="pre-button" onClick="preTest(${ taste.testFlavor });">
	                            <img src="../resources/image/arrow_pre.png" alt="">
	                        </button> <!-- /pre-button -->
	                    </div> <!-- /pre-box -->
	
	                </div> <!-- /side-box -->
	            </div> <!-- /container -->
	        </div><!-- /row -->
	    </div><!-- /container -->
	</form> <!-- /grind -->
	
	
	<form name="result" action="" id="result">
		<div class="container">
	        <div class="row" style=" margin-top: 0px; !important">
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
	                        <div class="anal" style="margin-top:80px;">
	                            <h3 style="margin-bottom:10px;">김원두님의 취향 분석중...</h3>
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
	</form> <!-- /result -->


    <!-- 부트스트랩 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>

</html>