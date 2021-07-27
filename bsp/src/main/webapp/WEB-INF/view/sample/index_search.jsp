<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>    
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="/bsp/css/index.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="/bsp/js/index.js"></script>
</head>
<style>
	.wrap > .search_list {
		width: 1500px;
		height: 1000px;
		margin-bottom: 10px;
		border: 1px solid black;
	}
	
	.index_searchList {
		width: 100%;
	}
</style>
<body> 
        <%@ include file="/WEB-INF/view/include/header.jsp" %>
        <!-- visual 부분 입니다 -->  
        <div class="wrap">
            <div class="FAQboard_sub">
                <div class="FAQboard_size">
                    <h3 class="sub_title">통합검색 : "수학" 검색결과</h3>
		                <div class="index_searchList">
		                    <c:forEach var="vo" items="${list4 }" varStatus="status">
		                                <img src="/bsp/img/${vo.b_imgmain }" alt="">
		                            <div class="index_todayDetails">
		                                ${vo.b_content }
		                                <li>${vo.b_title } | ${vo.b_author }</li>
		                            </div>
	                        </c:forEach> 
		                </div>	
	              </div>
                    <%-- <div class="bbs">
                        <table class="FAQboard_list">
                        <p><span><strong>총 ${boardVo.totCount }개</strong>  |  ${boardVo.reqPage}/${boardVo.totPage }페이지</span></p>
                            <caption>게시판 목록</caption>
                            <colgroup>
                                <col width="80px" />
	                            <col width="*" />
	                            <col width="100px" />
	                            <col width="200px" />
	                            <col width="80px" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>작성일</th>
                                    <th>조회수</th>
                                </tr>
                            </thead>
                            <tbody>      
                                <c:if test="${empty list }">
                            <tr>
                                <td class="first" colspan="5">등록된 도서가 없습니다.</td>
                            </tr>
                        </c:if>                        
						<c:forEach var="vo" items="${list}" varStatus="status">     
                            <tr>
                                <td>${(boardVo.totCount-status.index)-((boardVo.reqPage-1)*boardVo.pageRow)}</td>
                                <td class="txt_l">
                                    <a href="board_view.do?q_no=${vo.q_no }&reqPage=${boardVo.reqPage}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">
                                    <c:forEach begin="1" end="${vo.q_nested }">&nbsp;&nbsp;&nbsp;</c:forEach>
                                    <c:if test="${vo.q_nested > 0 }"><img src="/bsp/img/admin/answer_icon.gif"></c:if>
                                    ${vo.q_title } [${vo.comment_count}]
                                    </a>
                                </td>
                                <td class="FAQboard_writer">
                                    ${vo.name }
                                </td>
                                <td class="date">${vo.q_regdate }</td>
                                <td>${vo.q_readcount }</td>
                            </tr>
                        </c:forEach>	
                                                
                        </tbody>
                    </table>
                    <div class="pagenate clear">
                        <ul class='paging'> 
                        <c:if test="${boardVo.strPage > boardVo.pageRange}">
                        	<li><a href="FAQboard.do?reqPage=${boardVo.strPage-1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"><</a></li>
                        </c:if>
                        <c:forEach var="rp" begin="${boardVo.strPage}" end="${boardVo.endPage }">
                            <li><a href='FAQboard.do?reqPage=${rp}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}' <c:if test="${rp==boardVo.reqPage }">class='current'</c:if>>${rp }</a></li>
                        </c:forEach>
                        <c:if test="${boardVo.totPage > boardVo.endPage}">
                        	<li><a href="FAQboard.do?reqPage=${boardVo.endPage+1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">></a></li>
                        </c:if>
                        </ul> 
                    </div>
                    </div> --%>
                </div>
            </div>
        </div>
    <%@ include file="/WEB-INF/view/include/footer.jsp" %>     
</body>
</html>