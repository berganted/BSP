<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문상세</title>
    <link rel='stylesheet' href='/bsp/css/yesol.css'/> <!-- 예솔 css -->
    <link rel='stylesheet' href='/bsp/css/base.css'/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="/bsp/js/main.js"></script><!--여기에 헤더 div에 넣을수있는 스크립트있음-->

</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>
    <header id="header"></header>
   <div class="wrap">
	<jsp:include page="../include/side2.jsp"></jsp:include>

    <div class="mem_content">
        <h1>주문 상세 조회</h1>
        <article id="article">
            <h4>기본/배송정보</h4>
                 <table id="order_list_tb">
                <tr>
                    <td>주문번호</td>
                    <td>${vo.pb_no}</td>
                    <td>배송방법</td>
                    <td>${vo.pb_delivery}</td>
                </tr>
                <tr>
                    <td>주문접수일</td>
                    <td>${vo.pb_orderdate} </td>
                    <td>결제일(입금 확인일)</td>
                    <td>2020년 06월 14일 일 12시 40분 </td>
                </tr>
                <tr>
                    <td>처리 상태</td>
                    <td colspan="3">${vo.ps_title}<br>
                    운송장 : 35998978565, cj대한통운</td>
                </tr>
                <tr>
                    <td>주문하신분</td>
                    <td>★나중에 가져올 회원이름★</td>
                    <td>받으시는분</td>
                    <td>${vo.pb_resname}</td>
                </tr>
                <tr>
                    <td>배송주소</td>
                    <td colspan="3">
                       ${vo.pb_zipcode}, ${vo.pb_addr1} ${vo.pb_addr2}
                    </td>
                </tr>
                <tr>
                    <td>전화번호</td>
                    <td></td>
                    <td>휴대번호</td>
                    <td>${vo.pb_restel}</td>
                </tr>
                <tr>
                    <td>배송메세지</td>
                    <td colspan="3">
                       ${vo.pb_req}
                    </td>
                </tr>
                    <tr>
                        <td>거래명세서</td>
                        <td colspan="3">
                           ★★★  ★★★  ★★★
                        </td>
                    </tr>
                </table>
        </article>
        
		<form method="post" name="frm" id="frm" action="">
        <article id="article">
            <h4>주문 상품 정보</h4>
            <table id="order_list_tb">
                <tr> 
               		<td><input type="checkbox" value="select" name="checkAll" ></td>
                    <td>이미지</td>
                    <td>상품명</td>
                    <td>주문수량</td>
                    <td>가격</td>
                    <td>교환/반품신청</td>
                </tr>
                <c:forEach var="vo" items="${detail2 }">
                <tr>
                 	<td><input type="checkbox" value="${vo.io_no}"  name="checkOne" id='checkOne' ></td>
                    <td><input type="image" name="b_image"></td>
                    <td>${vo.b_title }
                        ${vo.b_author }
                        <a href=""><input class="button_s" type="button" value="리뷰 쓰기"></a>
                    </td>
                    <td>1</td>
                    <td>가격: ${vo.b_price}<br>
                        마일리지:1500원(5%)</td>
                        <td><input class="button_s" type="button" value="반품 신청" style="margin: 5px"><br>
                        	<input class="button_s" type="button" value="교환 신청" style="margin: 5px"></td>
                </tr>
                </c:forEach>
                  </table>   
        </article>

        <article id="article">
            <h4>결제 정보</h4>
            <table id="order_list_tb">
                <tr>
                    <td>총 주문 금액</td>
                    <td>${vo.pb_totalprice}</td>
                </tr>
                <tr>
                    <td>적립금 결제</td>
                    <td>적립금 3000원</td>
                </tr>
                <tr>
                    <td>실 결제 금액</td>
                    <td>28,000원</td>
                </tr>
                <tr>
                    <td>결제방법</td>
                    <td>카드결제(신한)</td>
                </tr>
             </table>
        </article>
        <div style="text-align: center;">
        <input class="button_m" type="submit" value="반품신청" onclick="javascript: form.action='/bsp/returning/returnSend.do';">
        <input class="button_m" type="submit" value="교환신청" onclick="javascript: form.action='/bsp/returning/replaceSend.do';">
       <a href="/bsp/order/list.do?reqPage=${param.reqPage}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}';"> 
       <input class="button_m" type="button" value="주문 내역 목록" ></a>
        </div>
        </form>
    </div>
   <aside class="mypage_ad">
                <div class="mypage_ad_name"><p>최근본상품</p></div>
                <div class="img_area">
                    <img src="img/book.jpg" width="70px" height="100px">
                </div>
                <div style="text-align: center;">
                    책이름
                </div>
            </aside> 
</div> 
<footer id="footer"></footer>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>