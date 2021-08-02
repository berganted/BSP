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
    <link rel="stylesheet" href="/bsp/css/big.css">
    <link rel="stylesheet" href="/bsp/css/yesol.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="/bsp/js/index.js"></script>
    <!-- <script src="/bsp/js/yesol.js"></script> -->
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
	
	.sub_title {
		padding-top: 50px;
		padding-bottom: 50px;
	}
	
	.button_s{
	    font-size:12px; 
	    text-decoration:none !important; 
	    white-space:nowrap; 
	    display:inline-block; 
	    vertical-align:baseline; 
	    position:relative; 
	    cursor:pointer; 
	    padding:2px 10px; 
	    min-width:20px; 
	    border:2px solid #221f1f; 
	    color:#fff !important; 
	    margin:0 2px; 
	    text-align:center; 
	    font-weight:bold; 
	    border-radius:5px; 
	    background-color:#221f1f;
	}
	
	.paging {
		padding-bottom: 30px;
	}
	.paging > li {
	    right: -530px;
	}
</style>
<body> 
        <%@ include file="/WEB-INF/view/include/header.jsp" %>
        <!-- visual 부분 입니다 -->  
        <div class="wrap">
            <div class="FAQboard_sub">
                <div class="FAQboard_size">
                    <h3 class="sub_title">통합검색 : "<a style="color: #6266ea;">${param.sval }</a>" 검색결과</h3>
		                <div class="index_searchList">
	                        <c:forEach var = "vo" items="${list0 }">
					           <div class="SmallIndex_book2">
					               <div class="s_imgSection">
					                   <div class="s_bookImg"><a href="Book_detail.do?b_no=${vo.b_no }&b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}"><img src = "/bsp/img/${vo.b_imgmain }" alt="${vo.b_title }", title="${vo.b_title }" style="height: 250px; width: 180px;"></a></div>
					               </div>
					               <div class="s_infoSectionWrap">
					                   <div class="s_infoSection">
					                       <span class="s_bookTitle" style="font-size: 20px;">
					                           <a href="Book_detail.do?b_no=${vo.b_no }&b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}"><b>${vo.b_title }</b></a>
					                       </span>
					                       <span class="s_bookAuthor" style="font-size: 17px;">${vo.b_author } <span class="s_bookPub"> | ${vo.b_publisher }</span><span class="s_bookDate"> | <fmt:formatDate value="${vo.b_intodate}" pattern="yyyy년 MM월" /></span> </span>
					                       <span class="s_price"><b>${vo.b_price }</b>원  &nbsp; 적립금 : ${vo.b_point }원</span>
					                       <span class="s_grade">회원리뷰(8건) ★★★★★ 9.3</span>
					                       <span class="s_story">
					                       ${vo.b_content } 
					                       </span>
					                   </div>
					               </div>
					               <div class="s_payWrap">
					                   <div class="s_pay">
					                       <div class="s_pay1">
					                           &nbsp;
					                        <table>
			                                <td id="ant" style="border : none; padding-right: 45px;">
								                 <button class="button_s" type="button" onclick="fnCalCount2('m', this);">-</button>
								                 <input type="text" name="pop_out" value="1" readonly="readonly" style="width: 50px; text-align: center;">
								                 <button class="button_s" type ="button" onclick="fnCalCount2('p',this);">+</button> 
							                 </td>
							                 </table>
					                       </div>
					                       <div class="s_pay2">
					                           <input type="button" class="btn1" value="카트에 넣기" >
					                       </div>
					                       <div class="s_pay3">
					                           <input type="button"  class="btn2" value="바로구매">
					                       </div>
					                   </div>
					               </div>
					            </div>
            				</c:forEach> 
            				<div class="pagenate clear">
		                        <ul class='paging'> 
		                        <c:if test="${bookVo.strPage > bookVo.pageRange}">
		                        	<li><a href="index_search.do?reqPage=${bookVo.strPage-1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"><</a></li>
		                        </c:if>
		                        <c:forEach var="rp" begin="${bookVo.strPage}" end="${bookVo.endPage }">
		                            <li><a href='index_search.do?reqPage=${rp}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}' <c:if test="${rp==bookVo.reqPage }">class='current'</c:if>>${rp }</a></li>
		                        </c:forEach>
		                        <c:if test="${bookVo.totPage > bookVo.endPage}">
		                        	<li><a href="index_search.do?reqPage=${bookVo.endPage+1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">></a></li>
		                        </c:if>
		                        </ul> 
                    		</div>
		               </div>	
	              </div>
                </div>
            </div>
    <%@ include file="/WEB-INF/view/include/footer.jsp" %>     
</body>
</html>