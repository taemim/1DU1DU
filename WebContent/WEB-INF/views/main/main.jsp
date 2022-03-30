<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS 외부링크 -->
    <link href="resources\css\main.css" rel="stylesheet" type="text/css">
    <!-- 구글웹폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Serif:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <!-- 제이쿼리 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- 파비콘 -->
    <link rel="icon" type="image/x-icon" href="resources/image/android-icon-48x48.png">
    <!-- 부트스트랩 -->
    <!-- 슬라이드랑 충돌 나는 부트스트랩 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <title>1DU1DU</title>
</head>

<body>
	
	<jsp:include page="/WEB-INF/views/main/header.jsp"/>
	
    <!-- main image -->
    <div class="display_container center" id="section1">
        <img src="${ pageContext.servletContext.contextPath }/resources/image/img-bg1.png" style="width: 100%; height: 600px;">
        <div class="display_bottommiddle padding_32">
            <div class="main_white">
                <h1 class="main_img_margin jumbo">
                    내 취향에 <span>꼭</span> 맞는 커피로<br>추천 받고 <span>구독</span>하세요
                </h1>
            </div>
            <button class="main_img_button btn_recomm padding_large main_large margin_top">원두 취향 테스트</button>
            <div class="recomm">
                <p>|</p>
                <p>내 취향에 딱 맞는 원두를 추천해요</p>
                <p>구독을 시작하고 항상 무료 배송으로 받아 보세요</p>
            </div>
        </div>
    </div>
    <!-- /main image -->

<!--     배너(우측 하단) - a카카오톡 1:1문의, 위로 가기 버튼
    display:fiexed로 우측하단에 고정되는 배너입니다.
    <div class="banner-wrap">
        <ul class="banner">
            <li><a href="#"><span>top
                        후에 이미지로 대체하면서 텍스트를 없앨 수 있습니다
                    </span></a></li>
            <li><a href="#">1:1 문의하기</a></li>
        </ul> /banner
    </div>/banner
 -->

    <!-- 슬라이드 구간 -->
<%--     <div class="slideshow-container">
        <div class="mySlides fade">
            <div class="white">
                <img src="${ pageContext.servletContext.contextPath }/resources/image/img-bg1.png" style="width:100%">
                <div class="text">
                    <p>원두 보관소 KH점</p>
                    <div class="bunder">
                        <div class="under"></div>
                    </div>
                    1DU1DU의 로스터리
                </div>
            </div>
        </div>
        <div class="mySlides fade">
            <div class="white">
                <img src="resources/image/img-bg1.png" style="width:100%">
                <div class="text">
                    <p>여기에 제목2</p>
                    <div class="bunder">
                        <div class="under"></div>
                    </div>
                    이미지도 바꿔주세용!
                </div>
            </div>
        </div>
        <div class="mySlides fade">
            <div class="white">
                <img src="resources/image/img-bg1.png" style="width:100%">
                <div class="text">
                    <p>여기에 제목3</p>
                    <div class="bunder">
                        <div class="under"></div>
                    </div>
                    이미지도 바꿔주세용!
                </div>
            </div>
        </div>
        <div class="fresh">
            <p>
                원두원두와 함께 하는 협업 카페를 통해<br>
                매일매일 신선한 원두를 받아보세요
            </p>
        </div>

        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div> --%>
    <!-- /슬라이드 구간 -->

    <!-- 베스트 리뷰 -->
    <div class="content4">
        <div class="review_title">
            <h1>
                <img src="../resources/image/iconbrown.png" alt="1DU1DU로고">
                지금 1DU1DU를 즐기고 있는 사람들
                <img src="../resources/image/iconbrown.png" alt="1DU1DU로고">
            </h1>
        </div>

        <!-- 베스트 리뷰 -->
        <div class="main_review">
            <div class="image_three">
                <div class="review_img">
                    <img src="../resources/image/1.jpeg" alt="Car" style="width:100%">
                    <div class="review_txt">
                        <h2 class="txt1">
                            <p class="star">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#bf3f27"
                                    class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#bf3f27"
                                    class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#bf3f27"
                                    class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#bf3f27"
                                    class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#bf3f27"
                                    class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                </svg>
                            </p>
                            다양하게 즐기는 1DU1DU!<br>
                            제 입맛에 딱 맞는 원두였어요!
                            <p>임
                                <svg xmlns="http://www.w3.org/2000/svg" width="8" height="8" fill="currentColor"
                                    class="bi bi-asterisk" viewBox="0 0 16 16">
                                    <path
                                        d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="8" height="8" fill="currentColor"
                                    class="bi bi-asterisk" viewBox="0 0 16 16">
                                    <path
                                        d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z" />
                                </svg>
                                님
                            </p>
                        </h2>
                    </div>
                </div>
            </div>

            <div class="image_three">
                <div class="review_img">
                    <img src="../resources/image/1.jpeg" alt="Car" style="width:100%">
                    <div class="review_txt">
                        <h2>
                            <p class="star">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#bf3f27"
                                    class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#bf3f27"
                                    class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#bf3f27"
                                    class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#bf3f27"
                                    class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#bf3f27"
                                    class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                </svg>
                            </p>
                            3개월째 구독중입니다.<br>
                            랜덤하게 보내주는 원두 덕분에<br>
                            제 취향을 알아가는 게 너무 좋아요!
                            <p>김
                                <svg xmlns="http://www.w3.org/2000/svg" width="8" height="8" fill="currentColor"
                                    class="bi bi-asterisk" viewBox="0 0 16 16">
                                    <path
                                        d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="8" height="8" fill="currentColor"
                                    class="bi bi-asterisk" viewBox="0 0 16 16">
                                    <path
                                        d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z" />
                                </svg>
                                님
                            </p>
                        </h2>
                    </div>
                </div>
            </div>

            <div class="image_three">
                <div class="review_img">
                    <img src="../resources/image/1.jpeg" alt="Car" style="width:100%">
                    <div class="review_txt">
                        <h2>
                            <p class="star">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#bf3f27"
                                    class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#bf3f27"
                                    class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#bf3f27"
                                    class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#bf3f27"
                                    class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#bf3f27"
                                    class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                </svg>
                            </p>
                            원두는 처음인데 모카포트도 사고<br>
                            매일 커피 마시는 시간을<br>
                            즐기고 있어요!
                            <p>송
                                <svg xmlns="http://www.w3.org/2000/svg" width="8" height="8" fill="currentColor"
                                    class="bi bi-asterisk" viewBox="0 0 16 16">
                                    <path
                                        d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="8" height="8" fill="currentColor"
                                    class="bi bi-asterisk" viewBox="0 0 16 16">
                                    <path
                                        d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z" />
                                </svg>
                                님
                            </p>
                        </h2>
                    </div>
                </div>
            </div>
        </div>
        <!-- /베스트 리뷰 -->

        <button class="sub-button"><a href="#">1DO 1DO 구독하러 가기</a></button>
    </div> <!-- /content4 -->

    <!-- FAQ -->
    <div class="container">
        <br><br>
        <h1 class="h1 text-center"><strong>FAQ</strong></h1><br><br>
        <div class="accordion accordion-flush" id="accordionFlushExample">
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingOne">
                    <button class="accordion-button bg-white text-dark fs-5 font-monospace" type="button"
                        data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false"
                        aria-controls="flush-collapseOne">
                        받아보는 커피들은 매달 달라지나요?
                    </button>
                </h2>
                <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"
                    data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">
                        <br>
                        IDUIDU는 입력해두신 커피 취향에 맞춰 매달 새로운 로스터리 브랜드의 커피들로 라인업이 구성되기 때문에 매달 질릴 틈 없이 새로운 구성으로 즐기실 수
                        있습니다.<br><br>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingTwo">
                    <button class="accordion-button bg-white text-dark fs-5 font-monospace" type="button"
                        data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false"
                        aria-controls="flush-collapseTwo">
                        IDUIDU의 원두는 언제 로스팅 되나요?
                    </button>
                </h2>
                <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo"
                    data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">
                        <br>
                        IDUIDU의 원두는 아래와 같은 과정을 거쳐 전달하는 것을 원칙으로 하고 있습니다.<br>
                        1) 발송일 기준 최대 3일 전 로스팅<br>
                        2) 발송일 전일 픽업 및 패키징<br>
                        3) 매월 정해진 발송일에 발송<br>
                        *해당 기준은 원두 기준으로, 드립백과 캡슐 제품의 경우 신선도를 유지할 수 있는 공법을 활용해 제조된 제품들이기 때문에 제조 일자는 배송일과 더 차이가 날 수
                        있습니다.<br>
                        <br><br>
                        다만, 파트너 로스터, 물류 파트너 등의 상황에 따라 변경될 수 있으며 일정이 변경될 경우 구독자분들께 사전에 안내하고 있어요.<br>
                        하지만 이 경우에도 최대 1주일 이내 발송하기 위해 노력하고 있습니다!<br><br>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingThree">
                    <button class="accordion-button bg-white text-dark fs-5 font-monospace" type="button"
                        data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false"
                        aria-controls="flush-collapseThree">
                        정기결제는 언제 진행되나요?
                    </button>
                </h2>
                <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree"
                    data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">
                        <br>
                        A. 카페박스는 매달 16일~다음달 1일 신청자의 경우 2일 정기결제,
                        2일~15일 신청자의 경우 16일 정기결제가 진행됩니다.<br>
                        (정기결제 회사 명 : 주식회사 터틀크루)
                        <br><br>

                        구독 신청시 카드 등록과 동시에 결제가 진행되지는 않으며, 정해진 정기 결제일에 첫 결제가 진행됩니다. <br>
                        홈페이지의 내 구독 확인하기 페이지에서 언제든 받아볼 커피 정보 확인, 변경, 이번 결제 및 발송 스케줄 확인 등이 가능합니다.<br>
                        <br>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingFour">
                    <button class="accordion-button bg-white text-dark fs-5 font-monospace" type="button"
                        data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false"
                        aria-controls="flush-collapseFour">
                        구독을 취소하거나 쉬어갈 수 있나요?
                    </button>
                </h2>
                <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour"
                    data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">
                        <br>
                        내 구독 확인하기 > 구독 탭에서 언제든지 자유롭게 구독 취소, 쉬어가기가 가능합니다.<br><br>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingFive">
                    <button class="accordion-button bg-white text-dark fs-5 font-monospace" type="button"
                        data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false"
                        aria-controls="flush-collapseFive">
                        교환/환불을 받고 싶으면 어떻게 해야하나요?
                    </button>
                </h2>
                <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive"
                    data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">
                        <br>
                        제품 하자 등으로 인해 교환/환불이 필요한 경우 반송비 등 비용은 IDUIDU가 부담하고 있습니다.<br>
                        제품에 문제가 있는 경우, 오른쪽 하단의 [카카오톡 상담]을 통해 문의하시면 CS 크루와 빠르게 상담하실 수 있습니다.<br>
                        다만, 신선식품인 제품의 특성상 아래와 같은 경우에는 교환/환불이 불가능합니다.<br><br>

                        1. 고객의 단순 변심으로 요청하는 경우<br>
                        2. 고객의 부주의로 인해 제품의 품질이 훼손된 경우<br>
                        3. CS 크루를 통한 교환 접수 절차 없이 임의로 반송한 경우<br><br>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br><br><br>
    <!-- /FAQ -->

    <!-- page top 버튼 -->
    <div class="scroll_top">
        <a href="#section1">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                class="bi bi-chevron-double-up" viewBox="0 0 16 16">
                <path fill-rule="evenodd"
                    d="M7.646 2.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 3.707 2.354 9.354a.5.5 0 1 1-.708-.708l6-6z" />
                <path fill-rule="evenodd"
                    d="M7.646 6.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 7.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z" />
            </svg>
        </a>
    </div>
    <!-- /content5 -->

    </main><!-- /main-->

  	<jsp:include page="/WEB-INF/views/main/footer.jsp" />

    <!-- 슬라이드 스크립트 -->
    <script>
        var slideIndex = 1;
        showSlides(slideIndex);
        function plusSlides(n) {
            showSlides(slideIndex += n);
        }
        function currentSlide(n) {
            showSlides(slideIndex = n);
        }
        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
    </script>

    <!-- 부트스트랩 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>



</body>

</html>