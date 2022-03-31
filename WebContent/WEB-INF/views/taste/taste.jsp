<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/testMain.css" rel="stylesheet" type="text/css">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/testTools.css" rel="stylesheet" type="text/css">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/testTopping.css" rel="stylesheet" type="text/css">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/testDecaffeine.css" rel="stylesheet" type="text/css">
    <link rel="icon" type="image/x-icon"
        href="${ pageContext.servletContext.contextPath }/resources/image/android-icon-48x48.png">
    <title>1 D U 1 D U</title>
</head>

<body>
    <div class="header_hidden">
        <jsp:include page="../main/header.jsp" />
    </div> <!-- /header -->

    <form name="main" action="" id="main" inputtype="hidden">
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


    <form name="tools" action="" id="main" inputtype="hidden">
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


    <form name="topping" action="" id="main" inputtype="hidden">
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
    </form> <!-- /topping -->


    <form name="deccafeine" action="" id="main" inputtype="hidden">
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
                </div>
            </div>
        </div>
    </form> <!-- /decaffeine -->



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