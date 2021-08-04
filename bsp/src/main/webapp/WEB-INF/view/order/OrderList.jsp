<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문내역</title>
    <link rel='stylesheet' href='/bsp/css/yesol.css'/><!-- 예솔 css -->
    <link rel='stylesheet' href='/bsp/css/base.css'/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="/bsp/js/main.js"></script><!--여기에 헤더 div에 넣을수있는 스크립트있음-->
</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>
    <header id="header"> </header>
   <div class="wrap">
	<jsp:include page="../include/side2.jsp"></jsp:include>
    <div class="mem_content">
        <h1>전체 주문 내역</h1>
        <article id="article">
       <!-- 페이지처리 -->
                        <div class="bbsSearch" style="margin-left: 756px" >
                        <form method="get" name="searchForm" id="searchForm" action="">
                            <span class="srchSelect">
                                <select id="stype" name="stype" class="dSelect" title="검색분류 선택">
                                    <option value="all">전체</option>
                                    <option value="ps_title" <c:if test="${param.stype=='ps_title'}">selected</c:if>>처리상태</option>
                                    <option value="b_title" <c:if test="${param.stype=='b_title'}">selected</c:if>>상품명</option>
                                </select>
                            </span>
                            <span class="searchWord"  >
                                <input type="text" id="sval" name="sval" value="${param.sval }"  title="검색어 입력">
                                <input type="button" id="" value="검색" title="검색" onclick="$('#searchForm').submit();">
                            </span>
                        </form>                        
                    </div>                     
             <table id="order_tb">
                <tr>
                    <td>주문일</td> 
                    <td>주문번호</td> 
                    <td>수령인</td>
                    <td>주문상품</td>
                    <td>조회</td>
                    <td>배송상태</td>
                </tr>
                	<c:if test="${empty orderList}">
								<tr>
									<td class="first" colspan="6">주문한 내역이 없습니다.</td>
								</tr>
					</c:if>
					<c:forEach var="list" items="${orderList}">  
                <tr>
                    <td>${list.pb_orderdate }</td>
                    <td><a href="detail.do?pb_no=${list.pb_no}&reqPage=${orderVo.reqPage}&stype=${orderVo.stype}&sval=${orderVo.sval}&orderby=${orderVo.orderby}&direct=${orderVo.direct}">
                    	${list.pb_no}</a></td>
                    <td>${list.pb_resname}</td>
                    <td>${list.b_title }&nbsp;총 ${list.count }권</td>
                    <td><a href="detail.do?pb_no=${list.pb_no}&reqPage=${orderVo.reqPage}&stype=${orderVo.stype}&sval=${orderVo.sval}&orderby=${orderVo.orderby}&direct=${orderVo.direct}">
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