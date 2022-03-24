<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 구글웹폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Serif:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <!-- 부트스트랩 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- css 외부 링크 -->
    <link href="../resources/css/order.css" rel="stylesheet" type="text/css">
    <!-- 파비콘 -->
    <link rel="icon" type="image/x-icon" href="resources/image/android-icon-48x48.png">
    
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
   
   <title>1DU 1DU</title>
    
</head>
<body>
	<jsp:include page="/WEB-INF/views/main/header.jsp"/>
    <div class="header_hidden">
        <h1> 헤더영역 비워두는 용도 </h1>
    </div>

    <div class="container-fluid">
        <form id="orderForm" action="${pageContext.servletContext.contextPath}/goods/order}" method="post" onsubmit="importPay();">
            <!-- 레이아웃 2개로 분리-->
            <div class="row wrap">
                <!--왼쪽 그리드 -->
                <div class="col-lg-6">

                    <!-- 주문 상품 정보 -->
                    <div class="box">
                        <div class="form-box">
                            <h3>주문 상품 정보</h3>
                            <h5 style="text-align: right;">상품 내역 총 ( ${ goodsList.size() } )개</h5><br>
                            <div class="row">
                           
                            <c:set var="total" value="0"/>
                          
                            <c:forEach var="row" items="${ requestScope.goodsList }">
	                            <div class="goods-img col-lg-4">
                                    <input type="checkbox" name="checkGoods" value="${ row.goodsName }">
                                    <img src="../resources/image/1234.png" alt="상품이미지">
                                </div>
                                <div class="goods-title col-lg-8">
                                    <h5><b>상품명 : ${ row.goodsName }</b></h5>
                                    <p>옵션 : ${ row.option }</p>
                                    <p>수량 : ${ row.amount }</p>
                                    <br>
                                    <h5><b>Total : <fmt:formatNumber value="${ row.price * row.amount }" pattern="#,###" /> 원</b></h5>
                                </div>
                            	<hr>  
                            	
                            	<c:set var="total" value="${ total + (row.price * row.amount) }" />
                                                    
                           	</c:forEach> 
                           	
                           	
                            </div>
                            <input type="button" class="btn btn-light" value="선택 상품 삭제">
                        </div>
                        <br>
          
                        <!-- 결제 폼 박스 1-->
                        <fieldset class="form-horizontal needs-validation" novalidate>
                            <div class="form-group">
                                <div class="row form-box">
                                    <h3>주문인 정보</h3><br><br>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control-plaintext" id="name" name="name" placeholder="이름" readonly >
                                    </div>
                                    <div class="col-sm-7">
                                        <input type="tel" class="form-control-plaintext" id="phone" name="phone" placeholder="연락처" readonly >
                                    </div>
                                    <br><br>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <input type="email" id="email" name="email" class="form-control-plaintext" placeholder="Email" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <br>
                        <!-- 결제 폼 박스 2 -->
                        <fieldset class="form-horizontal needs-validation" novalidate>
                            <div class="form-group">
                                <div class="row form-box">
                                    <h3>배송지 정보</h3><br><br>
                                    <div class="col-sm-12">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" name="" value=""> 주문자 정보와 동일
                                            </label>
                                        </div>
                                    </div><br><br>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control-plaintext" id="receiverName" placeholder="수령인" >
                                    </div>
                                    <div class="col-sm-7">
                                        <input type="tel" class="form-control-plaintext" name="receiverPhone" maxlength="11" minlength="9" placeholder="연락처 (-하이픈없이)">
                                    </div>

                                    <br><br>
                                    <div class="col-sm-5">
                                        <input id="zipCode" type="text" class="form-control-plaintext" name="zipCode" placeholder="우편번호" 
                                          required  disabled>
                                    </div>
                                    <div class="col-sm-7">
                                        <input type="button" class="btn btn-dark" 
                                            onclick="execDaumPostcode();" value="우편번호 찾기">
                                    </div>
                                    <br><br>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <input id="address" type="text" class="form-control-plaintext" name="address" placeholder="도로명 주소"
                                            required disabled>
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <input type="text" class="form-control-plaintext" name="extraAddress" placeholder="상세주소"
                                               required >
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="input-group mb-3">
                                          <select class="form-control-plaintext" id="shipMemo" name="shipMemo">
	                                          <option selected disabled>배송 메세지 입력</option>
	                                          <option value="부재시 경비실에 맡겨주세요">부재시 경비실에 맡겨주세요</option>
	                                          <option value="배송 전 연락 바랍니다.">배송 전 연락 바랍니다.</option>
	                                          <option value="문앞에 놔주세요.">문앞에 놔주세요.</option>
	                                          <option value="etc">직접입력</option>
                                        </select>
                                    </div>
                                    <br><br>
                                    <div class="col-sm-12">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" id="updateUser" > 위 내용을 회원정보에 반영합니다. (우편번호/도로명주소/상세주소)
                                            </label>
                                        </div>
                                    </div><br>
                                </div><!-- 배송지정보 끝-->
                            </div>
                        </fieldset>
                    </div>

                </div><!-- 왼쪽 그리드 끝-->
                
                <!-- 다음 주소 api-->
                <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                <script>
                    function execDaumPostcode() {
                        new daum.Postcode({
                            oncomplete: function(data) {
                                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                                var addr = ''; // 주소 변수
                                var extraAddr = ''; // 상세주소 변수

                                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                    addr = data.roadAddress;
                                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                    addr = data.jibunAddress;
                                }

                                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                document.getElementById('zipCode').value = data.zonecode;
                                document.getElementById("address").value = addr;
                                
                                // 커서를 상세주소 필드로 이동한다.
                                document.getElementById("extraAddress").focus();
                                

                            }
                        }).open();
                    }
                </script> 
               

                <!--오른쪽 그리드 -->
                <div class="col-lg-6">
                    <!-- 주문 상품 정보 -->
                    <div class="box">
                        <div class="row form-box">
                            <h3>최종 결제 금액</h3>
                            <br><br>
                            <div class="col-sm-8">
                                <h5>총 상품 가격</h5>
                            </div>
                            <br>
                            <div class="col-sm-offset-1 col-sm-4">
                            
                          
                               <h5><fmt:formatNumber value="${ total }" pattern="#,###"/>원</h5>
                            </div>
                            <br>
                            <div class="col-sm-8">
                                <h5>배송비</h5>
                            </div>
                            <br>
                            <div class="col-sm-offset-1 col-sm-4">
                                <h5>
                                <c:if test="${ total >= 30000 }">
                                	무료
                                </c:if>
                                <c:if test="${ total < 30000 }">
                                     2,500원
                                    <c:set var="total" value="${ total + 2500 }" />
                                </c:if>
                               </h5>
                            </div>
                            <br>
                            <hr>
                            <div class="col-sm-8">
                                <h5><b>총 결제 금액</b></h5>
                            </div>
                            <br>
                            <div class="col-sm-offset-1 col-sm-4">
                                <h5><b><fmt:formatNumber value="${ total }" pattern="#,###"/> </b></h5>
                            </div>
                            <br>
                        </div>
                        <br>
                        <!-- 3. 결제 수단-->
                        <fieldset class="form-horizontal needs-validation" novalidate>
                            <div class="row form-box">
                                <h3>결제 수단</h3><br><br>
                               <!--  <div class="col-sm-5">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault"
                                            id="flexRadioDefau1" >
                                        <label class="form-check-label" for="flexRadioDefault1" >
                                            <h5> 카카오 페이 </h5>
                                        </label>
                                    </div>
                                </div> -->
                                <div class="col-sm-5">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault"
                                            id="flexRadioDefault2">
                                        <label class="form-check-label" for="flexRadioDefault2">
                                           <h5> 신용 카드 </h5>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <br>
                        <!-- 4. 주문 동의-->
                        <fieldsetfieldset class="form-horizontal needs-validation" novalidate>
                            <div class="row form-box">

                                <h3>주문 동의</h3><br><br>
                                <div class="col-sm-12">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="order-check" required>
                                            (필수) 구매하실 상품의 결제정보를 확인하였으며, 구매진행에 동의합니다.
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </fieldsetfieldset>
                        <br>
                        <br> 
                        <div class="col-sm-12">
                            <div class="d-grid gap-2 col-11 mx-auto">
                                <input type="submit" id="check1" class="btn btn-dark btn-lg" value="결제 진행" />
                                <input type="button" id="check2" class="btn btn-outline-dark btn-lg" onclick="back()" value="결제 취소"/>
                        </div><br>
                    </div>
                </div>
            </div>
        </form>
    </div><!-- /container-fluid-->
    <script>
    
/*     var form = $('#orderForm');
    
    form.addEventListner('submit', function(event) {
      	event.preventDefault(); // 기본 동작인 submit 중단
      	importPay();	//submit 전에 실행할 이벤트 코드
    	form.submit();	//이벤트 수행 후, form submit 진행
      });
    
     */
			function importPay(){
				
			 	let goodsName = "<c:out value=" ${ goodsList[0].goodsName }"/>";
			 	let amount = '${ total }';
		    	// 여기까지 넘어오는 값
		    	
			    let	name = $("#name").val();
			    let	email = $("#email").val();
			    let	address = $("#address").val();
			    let	phone = $("#phone").val();
			    let	shipMemo = $("#shipMemo").val();
			    let	zipCode = $("#zipCode").val();
		    	// 사용자가 입력해야 하는 값 
		    	
		    	console.log(name);
		    	console.log(phone);
		    	
		    	//결제 api
		 		var IMP = window.IMP;
		 		var code = "imp68097050"; //가맹점 식별코드
		 		IMP.init(code);
		 		
		 			//결제요청
		 			IMP.request_pay({
		 				//name과 amout만있어도 결제 진행가능
		 				//pg : 'kakao', //pg사 선택 (kakao, kakaopay 둘다 가능)
		 				pay_method: 'card',
		 				merchant_uid : 'merchant_' + new Date().getTime(),
		 				name : goodsName , // 상품명
		 				amount : amount,
		 				buyer_email: email,
		 				buyer_name: name,
		 				buyer_tel: phone,
		 				buyer_addr: address,
		 				buyer_postcode: zipCode
		 				//필수항목
		 				//결제완료후 이동할 페이지 kko나 kkopay는 생략 가능
		 				//m_redirect_url : "${ pageContext.servletContext.contextPath }/payment/complete"
		 			}, function(rsp){
		 				if(rsp.success){//결제 성공시
		 				
		 				   	var msg = '결제가 완료되었습니다.';
		                        msg += '\n고유ID : ' + rsp.imp_uid;
		                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
		                        msg += '\결제 금액 : ' + rsp.paid_amount;
		                        msg += '카드 승인번호 : ' + rsp.apply_num;
		                        
		 				       alert(msg);
/*
		 					$.ajax({
		 						url : '/goods/order', 
		 				        type :'POST',
		 				        data : JSON.stringify({
		 			                imp_uid: rsp.imp_uid,
		 			                merchant_uid: rsp.merchant_uid,
		 			               	name : goodsName,
		 			              	amount : amount,
		 			 				buyer_email: email,
		 			 				buyer_name: name,
		 			 				buyer_tel: phone,
		 			 				buyer_addr: address,
		 			 				buyer_postcode: zipCode
		 			            }),
		 				        
		 				        contentType:'application/json;charset=utf-8',
		 				        dataType: 'json', //서버에서 보내줄 데이터 타입
		 				        success: function(res){
		 				        			        	
		 				          if(res == 1){
		 				        	  
		 							 
		 				        	 $("#orderForm").submit();
		 				         
		 				          }else{
		 				        	 alert("디비입력실패"); // 결제 실패
		 							 return false;
		 				          }
		 				        },
		 				        error:function(){
		 				          console.log("Insert ajax 통신 실패!!!");
		 				        }
		 					}) //ajax
		 					 */
		 				}
		 				else{//결제 실패시
		 					var msg = '결제에 실패했습니다';
		 					msg += '에러 : ' + rsp.error_msg
		 				}
		 					alert(msg);
		 			});//pay
		 			
			}; //check1 클릭 이벤트

    	
		 		
		 		function back() {
				        let reply = confirm('결제를 더이상 진행하지 않고 메인페이지로 이동합니다.');
				        if(reply){
				            /* 이전 페이지로 가기*/
				        }
				}; //check2 클릭 이벤트
				    
		 
      
    </script>
</body>
</html>