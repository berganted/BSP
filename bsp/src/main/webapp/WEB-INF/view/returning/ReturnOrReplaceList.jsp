<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>교환/반품리스트</title>
<link rel='stylesheet' href='/bsp/css/yesol.css' />
<!-- 예솔 css -->
<link rel='stylesheet' href='/bsp/css/base.css' />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/bsp/js/main.js"></script>
<!--여기에 헤더 div에 넣을수있는 스크립트있음-->
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<header id="header"></header>
	<div class="wrap">
	<jsp:include page="../include/side2.jsp"></jsp:include>
		<div class="mem_content">
			<h1>교환/반품 내역조회</h1>
			<article id="article">
				<table id="return_list_tb">
					<tr>
						<td>접수일</td>
						<td>구분</td>
						<td>반품시한</td>
						<td>원주문번호</td>
						<td>상품명/수량</td>
						<td>회송방법</td>
						<td>환불방법</td>
						<td>처리상태</td>
						<td>조회</td>
					</tr>
					<tr>
						<td>2012-05-18</td>
						<td>반품*환불(or 교환)</td>
						<td>2021-06-01</td>
						<td><a href="Return or replace list(details).html">000-A11</a></td>
						<td>인터넷 수능</td>
						<td>알라딘 지정택배사</td>
						<td>현금</td>
						<td>환불완료</td>
						<td><a href="Return or replace list(details).html"><input
								class="button_s" type="button" value="상세조회"></a></td>
					</tr>
				</table>
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

		</aside>
	</div>
	<footer id="footer"></footer>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>