<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>반품/교환 상세</title>
    <link rel='stylesheet' href='/bsp/css/yesol.css'/> <!-- 예솔 css -->
    <link rel='stylesheet' href='/bsp/css/base.css'/> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="/bsp/js/main.js"></script><!--여기에 헤더 div에 넣을수있는 스크립트있음-->
    <script src="/bsp/js/big.js"></script>
</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>
    <header id="header"></header>
   <div class="wrap">
	<jsp:include page="../include/side2.jsp"></jsp:include>
    <div class="mem_content">
        <h1>교환/반품 내역조회</h1>
       <article id="article">
           <table id="return_list_detil_tb">
            <p></p>
               <tr>
                   <th>반품접수일</th>
                   <th>구분</th>
                   <th>반품번호</th>
                   <th>원주문번호</th>
                   <th>상품명/수량</th>
                   <th>회송방법</th>
                   <th>처리상태</th>
               </tr>
               <tr>
                 	<td>${vo.returning_regdate }</td>
					<td>${vo.returning_category }</td>
					<td>${vo.returning_no }</td>
					<td><a href="">${vo.pb_no }</a></td>
					<td>${vo.b_title } / ${vo.returning_amount}권</td>
					<td>${vo.rd_option }</td>
					<td>${vo.ps_title }</td>
               </tr>
           </table>

           <h4>상품정보</h4>
           <table id="return_list_detil_tb">
            <tr>
            	<th>이미지</th>
                <th>상품명</th>
                <th>구입 가격</th>
                <th>반품 수량</th>
                <th>신청 수량</th>
            </tr>
           <c:forEach var="vo" items="${detail2}">
            <tr>
            	<td>
            		<img class="blah" src ="/bsp/img/${vo.b_imgmain }" alt="${vo.b_title }"title="${vo.b_title }" style="height: 90px; width: 90px;">
               		<input type="hidden"  class="abc" value="${vo.b_imgmain }"/>
               	</td>
                <td>${vo.b_title }</td>
                <td>${vo.b_price }</td>
                <td>${vo.returning_amount}</td>
                <td>${vo.returning_amount}</td>
            </tr>
         </c:forEach>
           </table>

           <h4>환불정보</h4>
           <table id="return_list_detil_tb">
            <tr>
                <th>원결제 방법</th>
                <td colspan="3">
                		<%-- <c:if test="${vo.pb_payno == 0}">무통장 입금</c:if>
                    	<c:if test="${vo.pb_payno == 1}">실시간계좌이체</c:if> 
                    	<c:if test="${vo.pb_payno == 2}">카드결제</c:if>  --%>
                    	카드결제
                </td>
            </tr>
            <tr>
                <th>환불 요청정보</th>
                <td>카드승인취소</td>
                <th>환불 정보</th>
                <td>카드승인취소</td>
            </tr>
            <tr>
                <th>반품 신청액</th>
                <td >14400원</td>
                <th>환불 예정액</th>
                <td>14400원</td>
            </tr>
           </table>
           <h4>회송 정보</h4>
           <table id="return_list_detil_tb">
            <tr>
                <th>회송 방법</th>
                <td>${vo.rd_option}</td>
                <th>방문예상일</th>
                <td>2012-05-22</td>
            </tr>
            <tr>
                <th>고객명</th>
                <td>${vo.rd_name}</td>
                <th>주소</th>
                <td> ${vo.rd_zipcode }, ${vo.rd_addr1 }, ${vo.rd_addr2 }</td>
            </tr>
            <tr>
                <th>전화번호</th>
                <td>${vo.rd_tel }</td>
                <th>요청사항</th>
                <td>${vo.rd_req }</td>
            </tr>
           </table>
       </article>
       <div style="text-align: center;">
      <a href="list.do?reqPage=${param.reqPage}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"> 
      <input class="button_m" type="button" value="반품 내역 목록"  ></a>
       </div>
    </div>
    
</div> 
<footer  id="footer"></footer>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>