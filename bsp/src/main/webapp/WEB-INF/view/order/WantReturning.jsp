<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>반품/교환 신청</title>
    <link rel='stylesheet' href='/bsp/css/yesol.css'/> <!-- 예솔 css -->
    <link rel='stylesheet' href='/bsp/css/base.css'/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="/bsp/js/main.js"></script><!--여기에 헤더 div에 넣을수있는 스크립트있음-->
    <script src="/bsp/js/yesol.js"></script>
<script>
function rtnCheck(){
		
	if($("input:checkbox[name=checkOne]").is(":checked") == false) {
		alert('상품을 하나이상 체크해주세요');
		return false;

	}
}
</script>
</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>
    <header id="header"></header>
   <div class="wrap">
	<jsp:include page="../include/side2.jsp"></jsp:include>

    <div class="mem_content">
        <h1>반품/교환 신청</h1>
		<form method="post" name="frm" id="frm" action="" onsubmit="return rtnCheck();">
        <article id="article">
            <h4>주문 상품 정보</h4>
            <table id="order_list_tb">
                <tr> 
               		<th><input type="checkbox" value="select" name="checkAll" ></th>
                    <th>이미지</th>
                    <th>상품명</th>
                    <th>주문수량</th>
                    <th>가격</th>
                    <th>출고번호</th>
                    <th>배송상태</th>
                </tr>
              
                	<c:if test="${empty wantReturning}">
								<tr>
									<td class="first" colspan="7">반품/교환 가능한 상품이 없습니다.</td>
								</tr>
					</c:if>
                <c:forEach var="vo" items="${wantReturning }">
                <tr>
                 	<td><input type="checkbox" value="${vo.io_no}"  name="checkOne" id='checkOne' ></td>
                    <td><input type="image" name="b_image"></td>
                    <td>${vo.b_title }
                        ${vo.b_author }
                    </td>
                 	<td>${vo.io_amount}</td>
                    <td>
                    	가격: ${vo.b_price}원<br>
                        마일리지:${vo.b_point}원(5%)
                   </td>
                    <td>  ${vo.io_no} </td>
                    <td> ${vo.ps_title }
                    <input type="hidden" id="ps_title" value="${vo.ps_title} ">
                    <input type="hidden" id="ps_no" value="${vo.ps_no} ">
                    </td>
                </tr>
                </c:forEach>
                  </table>   
        </article>
        <div style="text-align: center;">
        <input class="button_m" type="submit" value="반품신청" onclick="javascript: form.action='/bsp/returning/returnSend.do';">
        <input class="button_m" type="submit" value="교환신청" onclick="javascript: form.action='/bsp/returning/replaceSend.do';">
       <a href="/bsp/order/list.do?reqPage=${param.reqPage}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"> 
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