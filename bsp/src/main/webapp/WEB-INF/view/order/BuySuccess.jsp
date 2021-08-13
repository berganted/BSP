<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel='stylesheet' href='/bsp/css/yesol.css'/><!-- 예솔 css -->
	<link rel='stylesheet' href='/bsp/css/base.css'/> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script src="/bsp/js/main.js"></script><!--여기에 헤더 div에 넣을수있는 스크립트있음-->
    <title>결제완료창</title>
    <style>
	#b_success, #b_success_info {
		text-align: center;
		padding: 5px;
		font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;   
	}
	
	#b_success_info {
		width: 70%;
		/* border: 1px rgb(206, 205, 205) solid ; */
		margin: auto;
		padding: 30px;
	}
	
	input {
		border:0 solid black; 
		text-align: center;
		font-size: 15px;
	}
	
	#buyimg{
	width: 200px;
	height: 200px;
	}
</style>
</head>

<body>
 <jsp:include page="../include/header.jsp"></jsp:include>
    <header id="header"> </header>
   <div class="wrap">
	<jsp:include page="../include/side2.jsp"></jsp:include>
    <div class="mem_content">
        <h1></h1>
        <article id="article">
             <div id="b_success">
             	<input type="image"  id="buyimg" src="../img/order/buy.jpg">
	             <h1> 고객님의 주문이 완료되었습니다. </h1>
	             <br>
	             <h3> 주문내역 및 배송에 관한 안내는 주문 조회를 통하여 확인 가능합니다. </h3>
             </div>
             <div id="b_success_info">
             	 주문번호 : <input type="text" value="${pay.pb_no}">
             <br>
            	 주문일자 : <input type="text" value="${pay.pb_orderdate2 }">
             
               </div>
          	 <div class="retrn_submit" style="padding: 20px; text-align: center;">
                        <input class="button_m" type="button" onclick="location.href='/bsp/order/list.do'" value="주문조회" >
                        <input class="button_m" type="button" onclick="location.href='/bsp/sample/index.do'" value="홈으로" >
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