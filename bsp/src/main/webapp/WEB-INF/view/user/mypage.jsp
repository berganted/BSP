<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="/bsp/js/main.js"></script>
    <link rel="stylesheet" href="/bsp/css/base.css">
    <link rel="stylesheet" href="/bsp/css/index.css">
    <link rel='stylesheet' href='/bsp/css/yesol.css'/><!-- 예솔 css -->
    <style>
    .mem_content{
	 	 margin-left: 40px;
	    }
	#mypageSpace{
	padding-bottom: 50px
	 }
    #mypageMain .shopMain{
	    display: inline-block;
	    width: 22%;
	    height: ;
	    margin: 0 0.8% 1% 0;
	    padding: 34px 0;
	    border: 1px solid rgb(206, 205, 205);
	    box-sizing: border-box;
	    text-align: center;
	    }
    #mypageMain .shopMain h3 span{
	    display: none;
	    }
  	h3{
	  	padding-bottom: 12px;
	  	}
	  	
	#article{
	 margin: 5px;
	 width: 1175px;
	 }
	 h2{
	width: 1130px
	 }
    </style>
</head>

<body>
    
    <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="wrap">
    <jsp:include page="../include/side2.jsp"></jsp:include>
        
        <div class="mem_content">
            <div class="mypage3_1"><h2>마이페이지</h2></div>
            	<div id="mypageSpace">
                <div id="mypageMain" class="mypageMain">
                <ul>
					<li class="shopMain profile">
			            <h3><a href="/bsp/user/infoidcheak.do"><strong>Profile</strong><span>회원 정보</span></a></h3>
			            <p><a href="/bsp/user/infoidcheak.do">회원이신 고객님의 개인정보를<br/> 관리하는 공간입니다.</a></p>
			        </li>
			        <li class="shopMain order">
			            <h3><a href="/bsp/order/list.do"><strong>Order</strong><span>주문내역 조회</span></a></h3>
			            <p><a href="/bsp/order/list.do">고객님께서 주문하신 상품의<br/> 주문내역을 확인하실 수 있습니다.</a></p>
			        </li>
			          <li class="shopMain returning">
			            <h3><a href="/bsp/returning/list.do"><strong>return/replace</strong><span>반품/교환 내역 조회</span></a></h3>
			            <p><a href="/bsp/returning/list.do">고객님께서 주문하신 상품의<br/> 반품/교환 내역을 확인하실 수 있습니다.</a></p>
			        </li>
			        <li class="shopMain mileage ">
			            <h3 class="txtTitle16B"><a href="/bsp/user/point.do?m_no=${userInfo.m_no }"><strong>point</strong><span>적립금</span></a></h3>
			            <p class="txtSub11"><a href="/bsp/user/point.do?m_no=${userInfo.m_no }">적립금은 상품 구매 시<br/> 사용하실 수 있습니다.</a></p>
			       </li>
   				 </ul>
				</div>
				</div>
				<div style="background: red;"></div>
				<article id="article">
				<h4>${userInfo.m_name}님이 주문한 내역</h4>
				<table id="order_tb">
                <tr>
                    <th>주문일</th> 
                    <th>주문번호</th> 
                    <th>수령인</th>
                    <th>주문상품</th>
                    <th>조회</th>
                    <th>배송상태</th>
                </tr>
                	<c:if test="${empty myList}">
								<tr>
									<td class="first" colspan="6">주문한 내역이 없습니다.</td>
								</tr>
					</c:if>
					<c:forEach var="list" items="${myList}">  
                <tr>
                    <td>${list.pb_orderdate }</td>
                    <td><a href="/bsp/order/detail.do?pb_no=${list.pb_no}&reqPage=${orderVo.reqPage}&stype=${orderVo.stype}&sval=${orderVo.sval}&orderby=${orderVo.orderby}&direct=${orderVo.direct}">
                    	${list.pb_no}</a></td>
                    <td>${list.pb_resname}</td>
                    <td>${list.b_title }&nbsp;총 ${list.count }권</td>
                    <td><a href="/bsp/order/detail.do?pb_no=${list.pb_no}&reqPage=${orderVo.reqPage}&stype=${orderVo.stype}&sval=${orderVo.sval}&orderby=${orderVo.orderby}&direct=${orderVo.direct}">
                    	<input class="button_s" type="button" value="상세조회"></a></td>
                    <td>${list.ps_title}</td>
                </tr>
    				</c:forEach>
        </table>
				<div class="pagenate clear">
                        <ul class='paging'> 
                        <c:if test="${orderVo.strPage > orderVo.pageRange}">
                        	<li><a href="list.do?reqPage=${orderVo.strPage-1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"><</a></li>
                        </c:if>
                        <c:forEach var="rp" begin="${orderVo.strPage}" end="${orderVo.endPage }">
                            <li><a href='list.do?reqPage=${rp}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}' <c:if test="${rp==orderVo.reqPage }">class='current'</c:if>>${rp }</a></li>
                        </c:forEach>
                        <c:if test="${orderVo.totPage > orderVo.endPage}">
                        	<li><a href="list.do?reqPage=${orderVo.endPage+1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">></a></li>
                        </c:if>
                        </ul> 
                    </div>
                    </article>
            
            
           <jsp:include page="../include/quick.jsp"></jsp:include>
        </div>
        </div>
           <jsp:include page="../include/footer.jsp"></jsp:include>

      
            
    
        
        
        
            
</body>
</html>