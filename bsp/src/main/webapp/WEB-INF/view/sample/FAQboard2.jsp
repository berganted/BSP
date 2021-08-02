<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQboard2</title>    
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>    
    <link rel="stylesheet" href="/bsp/css/index.css">
    <link rel="stylesheet" href="/bsp/css/base.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="/bsp/js/index.js"></script>
    
    <script>
    function move() {
    	location.href='FAQwriteAdmin.do';   
    	<c:if test="${!empty userInfo}">
    	location.href='FAQwriteAdmin.do';
    	</c:if>
    	<c:if test="${empty userInfo}">
    	alert('로그인 후 사용가능합니다.');
    	location.href='FAQboard2.do';
    	</c:if> 
    }
    </script>
    <style>
	    .bbs .FAQboard2_list td {
	    text-align: left;
	    padding: 8px 10px;
	    border-bottom: 1px solid #d9d9d9;
		}
    </style>	
</head>
<body> 
        <%@ include file="/WEB-INF/view/include/header.jsp" %>
        <!-- visual 부분 입니다 -->  
        <div class="wrap">
            <div class="support_search">
                <div class="support_welcome">
                    <li><a class="support_w1">BSP 고객센터 입니다.</a></li>
                    <li><a class="support_w2">무엇을 도와드릴까요?</a></li>
                </div>
            </div>
            <div class="FAQboard_sub">
                <div class="FAQboard_size">
                <div class="support_change2">
                        <ul>
                            <li><a class="support_order">주문</a></li>
                            <li><a class="support_shipping">배송</a></li>
                            <li><a class="support_cancel">취소/교환/반품</a></li>
                            <li><a class="support_member">회원</a></li>
                        </ul>
                    </div>
                    <h3 class="sub_title" style="text-align: left; padding-left: 7px; border-bottom: 1px solid #e3e3e3; padding-bottom: 10px;">
                    FAQ</h3>
                    <div class="bbs">
                        <table class="FAQboard2_list">
                          <p><span><strong>총 ${fboardVo.totCount }개</strong>  |  ${fboardVo.reqPage}/${fboardVo.totPage }페이지</span></p>
                            <tbody>      
                                <c:if test="${empty list }">
		                            <tr>
		                                <td class="first" colspan="5">등록된 글이 없습니다.</td>
		                            </tr>
                        		</c:if>                        
									<c:forEach var="vo" items="${list}" varStatus="status">
									<tr class="faq_title" style="cursor: pointer">     
			                       		<td>[${vo.faq_cate}] ${vo.faq_title }</td>
			                       	</tr>
			                       	<tr class="faq_content">
			                            <td>${vo.faq_content }</td>
			                        </tr>
			                     </c:forEach>	
                        	</tbody>
                    </table>
                    <div class="btnSet"  style="text-align:right;">
                    </div>
                    <div class="pagenate clear">
                        <ul class='paging'> 
                        <c:if test="${fboardVo.strPage > fboardVo.pageRange}">
                        	<li><a href="FAQboard2.do?reqPage=${fboardVo.strPage-1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"><</a></li>
                        </c:if>
                        <c:forEach var="rp" begin="${fboardVo.strPage}" end="${fboardVo.endPage }">
                            <li><a href='FAQboard2.do?reqPage=${rp}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}' <c:if test="${rp==fboardVo.reqPage }">class='current'</c:if>>${rp }</a></li>
                        </c:forEach>
                        <c:if test="${fboardVo.totPage > fboardVo.endPage}">
                        	<li><a href="FAQboard2.do?reqPage=${fboardVo.endPage+1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">></a></li>
                        </c:if>
                        </ul> 
                    </div>
                    
                        <!-- 페이지처리 -->
                        <div class="bbsSearch" style="padding-left: 130px;">
                        <form method="get" name="searchForm" id="searchForm" action="">
                            <span class="srchSelect">
                                <select id="stype" name="stype" class="dSelect" title="검색분류 선택">
                                    <option value="all">전체</option>
                                    <option value="faq_title" <c:if test="${param.stype=='faq_title'}">selected</c:if>>제목</option>
                                    <option value="faq_content" <c:if test="${param.stype=='faq_content'}">selected</c:if>>내용</option>
                                </select>
                            </span>
                            <span class="searchWord">
                                <input type="text" id="sval" name="sval" value="${param.sval }"  title="검색어 입력">
                                <input type="button" id="" value="검색" title="검색" onclick="$('#searchForm').submit();">
                            </span>
                        </form>                        
                    	</div>                 
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="/WEB-INF/view/include/footer.jsp" %>     
</body>
</html>