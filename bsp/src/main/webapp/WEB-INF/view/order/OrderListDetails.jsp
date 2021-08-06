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
    <script src="/bsp/js/yesol.js"></script>
    <script src="/bsp/js/big.js"></script>
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
        <h1>주문 상세 조회</h1>
        <article id="article">
            <h4>기본/배송정보</h4>
                 <table id="order_list_tb">
                <tr>
                    <th>주문번호</th>
                    <td>${vo.pb_no}</td>
                    <th>배송방법</th>
                    <td>${vo.pb_delivery}</td>
                </tr>
                <tr>
                    <th>주문접수일</th>
                    <td>${vo.pb_orderdate} </td>
                    <th>결제일(입금 확인일)</th>
                    <td>2020년 06월 14일 일 12시 40분 </td>
                </tr>
                <tr>
                    <th>처리 상태</th>
                    <td colspan="3">${vo.ps_title}<br>
                    운송장 : 35998978565, cj대한통운</td>
                </tr>
                <tr>
                    <th>주문하신분</th>
                    <td>${userInfo.m_name}</td>
                    <th>받으시는분</th>
                    <td>${vo.pb_resname}</td>
                </tr>
                <tr>
                    <th>배송주소</th>
                    <td colspan="3">
                       ${vo.pb_zipcode}, ${vo.pb_addr1} ${vo.pb_addr2}
                    </td>
                </tr>
                <tr>
                    <th>휴대번호</th>
                    <td>${vo.pb_restel}</td>
                    <th>전화번호</th>
                    <td></td>
                </tr>
                <tr>
                    <th>배송메세지</th>
                    <td colspan="3">
                       ${vo.pb_req}
                    </td>
                </tr>
                </table>
        </article>
        
		<form method="post" name="frm" id="frm" action="" onsubmit="return rtnCheck();">
        <article id="article">
            <h4>주문 상품 정보</h4>
            <table id="order_list_tb">
                <tr> 
                    <th>이미지</th>
                    <th>상품명</th>
                    <th>주문수량</th>
                    <th>가격</th>
                    <th>출고번호</th>
                    <th>배송상태</th>
                </tr>
                <c:forEach var="vo" items="${detail2 }">
                <tr>
                    <td><img class="blah" src ="/bsp/img/${vo.b_imgmain }" alt="${vo.b_title }"title="${vo.b_title }" style="height: 90px; width: 90px;">
               		    <input type="hidden"  class="abc" value="${vo.b_imgmain }"/>
               		</td>
                    <td>${vo.b_title }
                        ${vo.b_author }
                        <a href="/bsp/book/Book_detail.do?b_no=${vo.b_no}&m_no=${vo.m_no}"><input class="button_s" type="button" value="리뷰 쓰기"></a>
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

        <article id="article">
            <h4>결제 정보</h4>
            <table id="order_list_tb">
                <tr>
                    <th>총 주문 금액</th>
                    <td>${vo.pb_totalprice+vo.p_used}원</td>
                </tr>
                <tr>
                    <th>적립금 결제</th>
                    <td>적립금 ${vo.p_used }원</td>
                </tr>
                <tr>
                    <th>실 결제 금액</th>
                    <td>${vo.pb_totalprice}원</td>
                </tr>
                <tr>
                    <th>결제방법</th>
                    <td>카드결제</td>
                </tr>
             </table>
        </article>
        <div style="text-align: center;">
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