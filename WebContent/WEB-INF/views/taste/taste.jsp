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

<style>
 .side--box{
  margin-top:100px;
 }

</style>

<body>
	<jsp:include page="/WEB-INF/views/main/header.jsp" />
	<div class="header_hidden">
		<h1>헤더영역 비워두는 용도</h1>
	</div>

    <form name="main" action="" id="TestStart" >
        <div class="container">
            <div class="row">
                <!-- 관리페이지 사이드 영역 숨김 -->
                <div class="wrapper">
                    <div class="side-box" style="margin-top:100px;">
                        <br>
                        <h3>안녕하세요. 매일 즐길 수 있는 커피 구독, 1DU 1DU입니다.</h3><br>
                        <h3>커피 추천을 위해 저희가 불러드릴 이름을 입력해주세요.</h3>
                        <div class="row">
                            <div class="col-sm-3 box name-box">
                                <input class="name-box" type="text" id="userName" name="userName" placeholder="이름을 입력해주세요.">
                            </div> <!-- /box -->

						<div class="start-box">
                            <button type="button" class="start" onclick="nextTest(this, 0);" >테스트 시작하기</button>
                        </div> <!-- /start-box -->
                        </div><!-- row -->

                    </div> <!-- /side-box -->
                </div> <!-- /wrapper -->
            </div> <!-- /row -->
        </div> <!-- /container -->
    </form> <!-- /main -->


    <form name="tools" action="" id="main" class="hideDiv">
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
                                    onclick="nextTest(this, 1);">
                                    <i id="bi" class="bi bi-check-lg"></i>
                                    <img src="../resources/image/coffee-maker.png">
                                    <h5>커피메이커</h5>
                                </button>
                            </div>

                            <div class="col-sm-3 box">
                                <button type="button" class="inner-box" value="핸드드립"
                                    onclick="nextTest(this, 1);">
                                    <i id="bi" class="bi bi-check-lg"></i>
                                    <img src="../resources/image/dripper.png">
                                    <h5>핸드드립</h5>
                                </button>
                            </div>

                            <div class="col-sm-3 box">
                                <button type="button" class="inner-box" value="에스프레소 머신"
                                   onclick="nextTest(this, 1);">
                                    <i id="bi" class="bi bi-check-lg" style="display:none;"></i>
                                    <img src="../resources/image/espresso.png">
                                    <h5>에스프레소 머신</h5>
                                </button>
                            </div>

                            <div class="col-sm-3 box">
                                <button type="button" class="inner-box" value="모카포트"
                                    onclick="nextTest(this, 1);">
                                    <i id="bi" class="bi bi-check-lg"></i>
                                    <img src="../resources/image/moka-pot.png">
                                    <h5>모카포트</h5>
                                </button>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-3 box">
                                <button type="button" class="inner-box" value=""
                                    onclick="nextTest(this, 1);">
                                    <i class="bi bi-check-lg"></i>
                                    <img src="../resources/image/french-press.png">
                                    <h5>프렌치 프레스</h5>
                                </button>
                            </div>

                            <div class="col-sm-3 box">
                                <button type="button" class="inner-box" value="에어로 프레스"
                                    onclick="nextTest(this, 1);">
                                    <i id="bi" class="bi bi-check-lg"></i>
                                    <img src="../resources/image/aeropress.png">
                                    <h5>에어로 프레스</h5>
                                </button>
                            </div>
                            <div class="col-sm-3 box">
                                <button type="button" class="inner-box" value="콜드 브루"
                                    onclick="nextTest(this, 1);">
                                    <i id="bi" class="bi bi-check-lg"></i>
                                    <img src="../resources/image/cold-brew.png">
                                    <h5>콜드 브루</h5>
                                </button>
                                <div class="col-sm-1"></div>
                            </div>
                        </div>


                        <div class="pre-box">
                            <button type="button" class="pre-button" onclick="preTest(0);">
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
                                <button type="button" class="inner-box" onclick="nextTest(this, 2);" value="블랙 그대로">
                                    <i id="bi" class="bi bi-check-lg"></i>
                                    <img src="../resources/image/black.png">
                                    <h5>블랙 그대로</h5>
                                </button>
    
                            </div>
                            <div class="col-sm-3 box">
                                <button type="button" class="inner-box" onclick="nextTest(this, 2);" value="우유를 더한 라떼">
                                    <i id="bi" class="bi bi-check-lg"></i>
                                    <img src="../resources/image/latte.png">
                                    <h5>우유를 더한 라떼</h5>
                                </button>
                            </div>
    
                            <div class="col-sm-3 box">
                                <button type="button" class="inner-box" onclick="nextTest(this, 2);" value="설탕을 넣은 커피">
                                    <i id="bi" class="bi bi-check-lg"></i>
                                    <img src="../resources/image/sugar.png">
                                    <h5>설탕을 넣은 커피</h5>
                                </button>
                            </div>
    
                            <div class="col-sm-3 box">
                                <button type="button" class="inner-box" onclick="nextTest(this, 2);" value="시럽을 넣은 커피">
                                    <i id="bi" class="bi bi-check-lg"></i>
                                    <img src="../resources/image/syrup.png">
                                    <h5>시럽을 넣은 커피</h5>
                                </button>
                            </div>
                        </div> <!-- /row -->
    
                        <div class="pre-box">
                            <button type="button" class="pre-button" onclick="pretTest(this, 1);">>
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
    
                                <button type="button" class="inner-box" value="카페인" onclick="nextTest(this, 3);">
                                    <h5>카페인으로 주세요</h5>
                                </button>
    
                            </div>
                            <div class="col-5 box">
                                <button type="button" class="inner-box" value="디카페인" onclick="nextTest(this, 3);">
                                    <i id="bi" class="bi bi-check-lg"></i>
                                    <h5>디카페인으로 주세요</h5>
                                </button>
                            </div>
    
                        </div> <!-- /row -->
    
                        <div class="pre-box">
                            <button type="button" class="pre-button" onclick="nextTest(this, 3);">
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
	                    <h3>어떤 스타일로 드세요?</h3><br>
	                    <div class="row">
	                        <div class="col-4 box">
	                            <button type="button" class="inner-box" value="원두 본연의 특색" onclick="nextTest(this, 4);">
	                                <i id="bi" class="bi bi-check-lg"></i>
	                                <h5>원두 본연의 특색을 즐겨요</h5>
	                                <span>과일, 꽃, 허브 등의 향미를 즐기고 싶어요. <br>
	                                      다채롭고 산미가 있는 경우가 일반적이에요.</span>
	                            </button>
	                        </div>
	                        <div class="col-4 box">
	                            <button type="button" class="inner-box" value="커피스러운 커피" onclick="nextTest(this, 4);">
	                                <i id="bi" class="bi bi-check-lg"></i>
	                                <h5>커피스러운 커피 맛을 즐겨요</h5>
	                                <span>우리가 잘 알고 있는 전형적인 그 커피예요. <br>
	                                      산미가 적고 고소, 쌉싸름해요.</span>
	                            </button>
	                        </div>
	                        <div class="col-4 box">
	                            <button type="button" class="inner-box" value="조화로운 맛" onclick="nextTest(this, 4);">
	                                <i id="bi" class="bi bi-check-lg"></i>
	                                <h5>조화로운 맛을 즐겨요</h5>
	                                <span>익숙한 커피 맛과 원두 본연의 다채로운 향미를 <br>
	                                      조화롭게 느낄 수 있어요.</span>
	                            </button>
	                        </div>
	
	                    </div> <!-- /row -->
	
	                    <div class="pre-box">
	                        <button type="button" class="pre-button" onclick="preTest(this, 3);">
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
	
	                            <button type="button" class="inner-box" value="상큼한 과일과 꽃향기의 깔끔한 느낌" onclick="nextTest(this, 5);">
	                                <i id="bi" class="bi bi-check-lg"></i>
	                                <h5>상큼한 과일과 <br> 꽃향기의 <br> 깔끔한 느낌</h5>
	                            </button>
	
	                        </div>
	                        <div class="col-sm-3 box">
	                            <button type="button" class="inner-box" value="달콤한 과일과 농후한 느낌" onclick="nextTest(this, 5);">
	                                <i id="bi" class="bi bi-check-lg"></i>
	                                <h5>달콤한 과일과 <br> 농후한 느낌</h5>
	                            </button>
	                        </div>
	                        <div class="col-sm-3 box">
	                            <button type="button" class="inner-box" value="고소하고 달콤하고 향긋한 균형잡힌 느낌" onclick="nextTest(this, 5);">
	                                <i id="bi" class="bi bi-check-lg"></i>
	                                <h5>고소하고 달콤하고 <br> 향긋한 <br> 균형잡힌 느낌</h5>
	                            </button>
	                        </div>
	                        <div class="col-sm-3 box">
	                            <button type="button" class="inner-box" value="다크초콜릿 같은 쌉쌀함이 묵직한 느낌" onclick="nextTest(this, 5);">
	                                <i id="bi" class="bi bi-check-lg"></i>
	                                <h5>다크초콜릿 같은 <br> 쌉쌀함이 <br> 묵직한 느낌</h5>
	                            </button>
	                        </div>
	                    </div> <!-- /row -->
	
	                    <div class="pre-box">
	                        <button type="button" class="pre-button" onClick="preTest(this, 4);">
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
	                <div class="side-box" style="height: 600px;">
	                    <br>
	                    <h3>마지막으로, 원두를 갈아드릴까요?</h3><br>
	                    <div class="row">
	                        <div class="col-5 box">
	
	                            <button type="button" class="inner-box" value="갈지 않고 받을래요" onclick="nextTest(this, 6);">
	                                <i id="bi" class="bi bi-check-lg"></i>
	                                <h5>갈지 않고 받을래요</h5>
	                            </button>
	                        </div>
	
	                        <div class="col-5 box">
	                            <button type="button" class="inner-box" value="도구에 맞게 갈아주세요" onclick="nextTest(this, 6);">
	                                <i id="bi" class="bi bi-check-lg"></i>
	                                <h5>도구에 맞게 갈아주세요</h5>
	                            </button>
	                        </div>
	                    </div> <!-- /row -->
	
	                    <div class="pre-box">
	                        <button type="button" class="pre-button" onClick="preTest(this, 5);">
	                            <img src="../resources/image/arrow_pre.png" alt="">
	                        </button> <!-- /pre-button -->
	                    </div> <!-- /pre-box -->
	
	                </div> <!-- /side-box -->
	            </div> <!-- /container -->
	        </div><!-- /row -->
	    </div><!-- /container -->
	</form> <!-- /grind -->
	
	
	<form name="result" action="" id="result" class="hideDiv">
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
	                                    <td class="answered"></td>
	                                </tr>
	                                <tr>
	                                    <td>평소 커피 취향</td>
	                                    <td class="answered"></td>
	                                </tr>
	                                <tr>
	                                    <td>카페인</td>
	                                    <td class="answered"></td>
	                                </tr>
	                                <tr>
	                                    <td>스타일</td>
	                                    <td class="answered"></td>
	                                </tr>
	                                <tr>
	                                    <td>원두 향</td>
	                                    <td class="answered"></td>
	                                </tr>
	                                <tr>
	                                    <td>분쇄도</td>
	                                    <td class="answered"></td>
	                                </tr>
	                            </table>
	
	                        </div> <!-- /col-5 box -->
	                        <div class="anal" style="margin-top:80px;">
	                            <h3 style="margin-bottom:10px;"><b id="answer"></b>님의 취향 분석중...</h3>
	                            <p>1DU 1DU가 추천하는 이번달 원두는 <br>
	                                <b>케냐룽게토AB, 블랙수트, 과테말라 부에나 비스타 내추럴</b>이에요!</p>
	                        </div> <!-- /anal -->
	                        <div class="row">
	                                <div class="col-3 box items">
	                                    <img src="${ pageContext.servletContext.contextPath }/resources/image/매뉴팩트5.jpeg" alt="">
	                                    <h5>케냐 룽게토 AB</h5>
	                                    <p>자두의 쥬시함, 은은한 레몬티 향 <br> 12,000원</p>
	                                </div>
	                                <div class="col-3 box items">
	                                    <img src="${ pageContext.servletContext.contextPath }/resources/image/매뉴팩트6.jpeg" alt="">
	                                    <h5>블랙수트</h5>
	                                    <p>이탈리안 에스프레소에 대한 오마주 <br> 10,000원</p>
	                                </div>
	                                <div class="col-3 box items">
	                                    <img src="${ pageContext.servletContext.contextPath }/resources/image/매뉴팩트원두1.jpeg" alt="">
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
<script>

	$('form').hide(); //모든 폼 숨기기

    var result= []; //취향 테스트 값 배열 선언
    
	$('form').first().show(); //첫번째 폼은 보이기
	
    //버튼에 함수호출 onclick=nextTest(this, n); n은 몇 번째 폼인지 0, 1, 2, 3 ,..
	// this(전달인자) => e(매개변수) 
    function nextTest(e, n) {
		
		// 폼 태그가 0번째 라면 이름 input값을 저장
    	if( n == 0 ){
    		
    		let userName =  $('#userName').val();
			if(userName==''){
				alert('이름을 입력해주세요');
				
				return false;
			}
			
			alert("1DU 1DU가 " + userName + "님 입맛에 딱맞는 원두를 추천해드릴게요! 테스트를 끝까지 진행해주세요.");
			
			$('#answer').text(userName);
			 result[n] = userName;
    	}
			
		$('form').eq(n).hide(); //지금 페이지 숨김
		$('form').eq(n+1).show(); // 다음 페이지 보이기
		   
		result[n] = $(e).val(); // 결과에 저장 (버튼의 value값)
		
		//alert(result[n]); //값 확인용 (첫번째 입력한 이름은 버튼에 value값이 없으므로 공백)
		
		//인덱스가 0번부터 시작하므로 n-1 (이름은 0-1로 건너뛰고 출력)
		$('.answered').eq(n-1).text(result[n]);
		
		$('form').eq(8).show(); //테스트 선택이 잘 누적되는지 확인 하고 싶으면 주석 해제
		
	}

	// 이전 페이지로 이동
	function preTest(n) {	
		
		$('form').eq(n).hide(); //지금 페이지 숨김
		$('form').eq(n-1).show(); // 이전 페이지 보이기
		
	}
	


</script>

    <!-- 부트스트랩 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>

</html>