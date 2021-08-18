<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
						<th>반품번호</th>
						<th>반품접수일</th>
						<th>구분</th>
						<th>원주문번호</th>
						<th>상품명/수량</th>
						<th>회송방법</th>
						<th>환불방법</th>
						<th>처리상태</th>
						<th>조회</th>
					</tr>
				<c:if test="${empty RList}">
						<tr>
							<td class="first" colspan="9">반품/교환 내역이 없습니다.</td>
						</tr>
				</c:if>
					<c:forEach var="list" items="${RList}">
					<tr>
						<td><a href="detail.do?returning_no=${list.returning_no}&reqPage=${returningVo.reqPage}&stype=${returningVo.stype}&sval=${returningVo.sval}&orderby=${returningVo.orderby}&direct=${returningVo.direct}">${list.returning_no }</a></td>
						<td>${list.returning_regdate2 }</td>
						<td>${list.returning_category }</td>
						<td>${list.pb_no }</td>
						<td>${list.b_title } / ${list.returning_amount}</td>
						<td>${list.rd_option }</td>
						<td>${list.refund_info }</td>
						<td>${list.ps_title }</td>
						<td><a href="detail.do?returning_no=${list.returning_no}&reqPage=${returningVo.reqPage}&stype=${returningVo.stype}&sval=${returningVo.sval}&orderby=${returningVo.orderby}&direct=${returningVo.direct}"><input
								class="button_s" type="button" value="상세조회"></a></td>
					</tr>
					</c:forEach>
				</table>
				<div class="pagenate clear">
                        <ul class='paging'> 
                        <c:if test="${returningVo.strPage > returningVo.pageRange}">
                        	<li><a href="list.do?reqPage=${returningVo.strPage-1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"><</a></li>
                        </c:if>
                        <c:forEach var="rp" begin="${returningVo.strPage}" end="${returningVo.endPage }">
                            <li><a href='list.do?reqPage=${rp}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}' <c:if test="${rp==returningVo.reqPage }">class='current'</c:if>>${rp }</a></li>
                        </c:forEach>
                        <c:if test="${returningVo.totPage > returningVo.endPage}">
                        	<li><a href="list.do?reqPage=${returningVo.endPage+1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">></a></li>
                        </c:if>
                        </ul> 
                    </div>
			</article>
		</div>

	</div>
	<footer id="footer"></footer>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>