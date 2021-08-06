<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import ="order.OrderVo" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <link rel='stylesheet' href='/bsp/css/yesol.css'/><!-- 예솔 css -->
<link rel='stylesheet' href='/bsp/css/base.css'/> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="/bsp/js/main.js"></script><!--여기에 헤더 div에 넣을수있는 스크립트있음-->
</head>
<script>
$(function(){
	 $("#check_module").click(function () {
	    	var IMP = window.IMP; // 생략가능
	    	IMP.init('imp82310032');
	    	// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	    	// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
	    	IMP.request_pay({
	    	pg: 'html5_inicis', // version 1.1.0부터 지원.
	    	/*
	    	'kakao':카카오페이,
	    	html5_inicis':이니시스(웹표준결제)
	    	'nice':나이스페이
	    	'jtnet':제이티넷
	    	'uplus':LG유플러스
	    	'danal':다날
	    	'payco':페이코
	    	'syrup':시럽페이
	    	'paypal':페이팔
	    	*/
	    	pay_method: 'card',
	    	/*
	    	'samsung':삼성페이,
	    	'card':신용카드,
	    	'trans':실시간계좌이체,
	    	'vbank':가상계좌,
	    	'phone':휴대폰소액결제
	    	*/
	    	merchant_uid: 'merchant_' + new Date().getTime(),
	    	/*
	    	merchant_uid에 경우
	    	https://docs.iamport.kr/implementation/payment
	    	위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
	    	참고하세요.
	    	나중에 포스팅 해볼게요.
	    	*/
	    	name: $('input[name=b_title]').val(),
	    	//결제창에서 보여질 이름
	    	amount: $('input[name=pb_totalprice]').val(),
	    	//가격
	    	buyer_email: $('input[name=m_email]').val(),
	    	buyer_name: $('input[name=pb_resname]').val(),
	    	buyer_tel: $('input[name=pb_restel]').val(),
	    	buyer_addr: $('input[name=pb_addr1]').val(),
	    	buyer_postcode:$('input[name=pb_zipcode]').val(),
	    	m_redirect_url: 'https://www.yourdomain.com/payments/complete'
	    	/*
	    	모바일 결제시,
	    	결제가 끝나고 랜딩되는 URL을 지정
	    	(카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
	    	*/
	    	}, function (rsp) {
	    	console.log(rsp);
	    	if (rsp.success) {
	    	var msg = '결제가 완료되었습니다.';
	    	msg += '고유ID : ' + rsp.imp_uid;
	    	msg += '상점 거래ID : ' + rsp.merchant_uid;
	    	msg += '결제 금액 : ' + rsp.paid_amount;
	    	msg += '카드 승인번호 : ' + rsp.apply_num;
	    	location.href="/bsp/order/buySuccess.do?pb_no="+$('#pb_no').val()+"&io_no="+$('#io_no').val();
	    	} else {
	    	var msg = '결제에 실패하였습니다.';
	    	msg += '에러내용 : ' + rsp.error_msg;
	    	}
	    	alert(msg);
	    	});
	    	});
});
</script>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>
    <header id="header"> </header>
   <div class="wrap">
	<jsp:include page="../include/side2.jsp"></jsp:include>
    <div class="mem_content">
        <h1>주문 내역</h1>
        <article id="article">
             <table id="order_tb">
                <tr>
                	<td>주문번호</td> 
                    <td>수령인</td>
                    <td>주문상품</td>
                    <td>주문금액</td>
                    <td>주문일</td>
                   
                </tr>
                <tr>
                 	<td><input type="text" name="pb_no" id="pb_no" value="${pay.pb_no}" style="border:0 solid black; text-align: center; font: 16px"></td>
                    <td><input type="text" name="pb_resname" value="${pay.pb_resname}" style="border:0 solid black; text-align: center; font: 16px"></td>
                    <td><input type="text" name="b_title" value="${pay.b_title}&nbsp;총 ${pay.count }권" style="border:0 solid black; text-align: center; font: 16px"></td>
                    <td><input type="text" name="pb_totalprice" value="${pay.pb_totalprice}" style="border:0 solid black; text-align: center; font: 16px"></td>
                    <td><input type="text" name="pb_orderdate" value="${pay.pb_orderdate }" style="border:0 solid black; text-align: center; font: 16px">
                     	<input type="hidden" name="m_email" value="${pay.m_email}@${pay.m_email_d}" >
            			<input type="hidden" name="pb_restel" value="${pay.pb_restel}" >
            			<input type="hidden" name="pb_zipcode" value="${pay.pb_zipcode}" >
            			<input type="hidden" name="pb_addr1" value="${pay.pb_addr1}" >
            			<input type="hidden" name="io_no"  id="io_no" value="${pay.io_no}" >
            		</td>
                </tr>
        </table>
        <input type="hidden" name="totalprice" value="${sum}">
          	 <div class="retrn_submit" style="padding: 20px; text-align: center;">
                        <input class="button_m" type="button" id="check_module" value="결제" >
                        <input class="button_m" type="button" onclick="location.href='/bsp/order/list.do'" value="목록" >
              </div>
        </article>
    </div>
  <aside class="mypage_ad">
			<div class="mypage_ad_name">
				<p>최근본상품</p>
			</div>
			<div class="img_area">
				<img src="img/book.jpg" width="70px" height="100px">
			</div>
			<div style="text-align: center;">책이름</div>
		</aside>
</div> 
<footer id="footer"></footer>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>