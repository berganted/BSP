<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
 <script src="/bsp/js/script.js"></script>
</head>
<style>
 td > select{
	width: 100%;height: 100%
	
}
#head > tbody > tr > td > input[type=text]{
 	width: 80%
}
</style>
<body> 

<script type="text/javascript">
$(function(){
$('#ctype').change(function(){
$('#searchForm').submit();
	})
})

</script>
<div id="wrap">
	<!-- canvas -->
	<div id="canvas">
		<!-- S T A R T :: headerArea-->
		<%@ include file="/WEB-INF/view/admin/include/top.jsp" %>
		<!-- E N D :: headerArea--> 
		
		<!-- S T A R T :: containerArea-->
		<div id="container">
			<div id="content">
				<div class="con_tit">
					<h2> 상품 - [목록]</h2>
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- 내용 : s -->
					<div id="bbs">
						<div id="blist">
						<div>
						<form method="get" name="searchForm" id="searchForm" action=""> 
						<input type="hidden" id="admin" value="${adminInfo.empower }">
						<table id="head">
						<tr>
						<td class="first">카테고리</td>
							<td>	
								<select id="ctype" name="ctype">
										<option value="0"<c:if test="${param.ctype == 0}"> selected</c:if>>전체</option>
										<c:forEach var="ctg" items="${ctg }">
										<option value="${ctg.b_ctgno2key }"
										<c:if test="${param.ctype==ctg.b_ctgno2key}"> selected</c:if>>${ctg.b_ctgdetail }</option>
										</c:forEach>
								</select>
							</td>
						<td>정렬</td>
							<td><select id="orderby" name="orderby" class="dSelect" title="검색분류 선택" onchange="$('#searchForm').submit();">
                                    <option value="b_regdate"<c:if test="${param.orderby=='b_regdate'}"> selected</c:if>>날짜순</option>
                                    <option value="b_stock" <c:if test="${param.orderby=='b_stock'}"> selected</c:if>>재고</option>
                                    <option value="b_ctgdetail" <c:if test="${param.orderby=='b_ctgdetail'}"> selected</c:if>>카테고리순</option>
                                    <option value="b_intodate" <c:if test="${param.orderby=='b_intodate'}"> selected</c:if>>출간일순</option>
                                    <option value="tot" <c:if test="${param.orderby=='tot'}"> selected</c:if>>판매량</option>
                                </select>
                             </td>
                         <td>순서</td>
                         <td>
                        	 <select id="direct" name="direct" class="dSelect" title="검색분류 선택" onchange="$('#searchForm').submit();">
                                    <option value="DESC"<c:if test="${param.direct=='DESC'}"> selected</c:if>>내림차순</option>
                                    <option value="ASC" <c:if test="${param.direct=='ASC'}"> selected</c:if>>오름차순</option>
                         	</select>
                         </td>
                         </tr>
                         <tr>
                         <td class="first">검색조건</td>
                         <td>	
                         		<select name="stype" title="검색을 선택해주세요">
									<option value="all">전체</option>
									<option value="b_title"
											<c:if test="${param.stype=='b_title'}"> selected</c:if>>제목</option>
									<option value="b_publisher"
											<c:if test="${param.stype=='b_publisher'}"> selected</c:if>>출판사</option>
									<option value="b_author"
											<c:if test="${param.stype=='b_author'}"> selected</c:if>>작가</option>
								</select> 
							</td>
							<td>검색어</td>
							<td colspan="4"><input type="text" name="sval" value=""title="검색할 내용을 입력해주세요" /> 
										<input type="image"src="<%=request.getContextPath()%>/img/admin/btn_search.gif"
												class="sbtn" alt="검색" onclick="$('#searchForm').submit();"/></td>
                         </tr>
									
								</table>
								</form>
								</div>
							<span><strong>총 ${bookVo.totCount }개</strong>  |  ${bookVo.reqPage }/${bookVo.totPage }</span>
							<form name="frm" id="frm" action="process.do" method="post">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리목록입니다.">
								<colgroup>
									<col class="w3" />
									<col class="w4" />
									<col class="w8" />
									<col class="4" />
									<col class="w10" />
									<col class="w10" />
									<col class="w6" />
									<col class="w6" />
									<col class="w6" />
									<col class="w6" />
									<col class="w6" />
									<col class="w6" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first"><input type="checkbox" name="allChk" id="allChk" onClick="selectAll(this)"/></th>
										<th scope="col">번호</th>
										<th scope="col">카테고리</th>
										<th scope="col">책이름</th> 
										<th scope="col">작가</th> 
										<th scope="col">출판사</th> 
										<th scope="col">등록일</th> 
										<th scope="col">출간일</th> 
										<th scope="col">평점</th> 
										<th scope="col">리뷰수</th> 
										<th scope="col">판매</th> 
										<th scope="col" class="last">재고</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="list" items="${list }">
									<tr>
										<td class="first"><input type="checkbox" name="no" id="no" value="${list.b_no }"/></td>
										<td>${list.b_no }</td>
										<td>${list.b_ctgdetail }</td>
										<td class="title"><a href="view.do?b_no=${list.b_no }&reqPage=${bookVo.reqPage }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">${list.b_title }</a>
										<td>${list.b_author }</td>
										<td>${list.b_publisher }</td>
										<td><fmt:formatDate value="${list.b_regdate}" pattern="yyyy-MM-dd"/> </td>
										<td><fmt:formatDate value="${list.b_intodate }" pattern="yyyy-MM-dd"/></td>
										<td>${list.avg }</td>
										<td>${list.rcnt }</td>
										<td>${list.tot }</td>
										<td class="last">${list.b_stock }</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
							</form>
							<div class="btn">
								<div class="btnLeft">
									<a class="btns" href="#" onclick="groupDel();"><strong>삭제</strong> </a>
								</div>
								<div class="btnRight">
									<a class="wbtn" href="write.do"><strong>등록</strong> </a>
								</div>
							</div>
							<!--//btn-->
							<!-- 페이징 처리 -->
							<div class='page'>
									<c:if test="${bookVo.strPage > bookVo.pageRange}">
										<li><a href="index.do?reqPage=${bookVo.strPage-1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}&ctype=${param.ctype}"> < </a>
									</c:if>
									<c:forEach var="rp" begin="${bookVo.strPage }"
										end="${bookVo.endPage }">
										<c:if test="${rp==bookVo.reqPage }"><strong>${rp }</strong></c:if>
										<c:if test="${rp!=bookVo.reqPage }">
                                  	<a href='index.do?reqPage=${rp}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}&ctype=${param.ctype}' class='current'>${rp }</a></c:if>

									</c:forEach>
									<c:if test="${bookVo.totPage > bookVo.endPage}">
										<a href="index.do?reqPage=${bookVo.endPage+1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}&ctype=${param.ctype}">></a></c:if>
								</div>
							<!-- //페이징 처리 -->
							
                    </div>
							
							<!-- //search --> 
						</div>
						<!-- //blist -->
					</div>
					<!-- //bbs --> 
					<!-- 내용 : e -->
				</div>
				<!--//con -->
			</div>
			<!--//content -->
		</div>
		<!--//container --> 
		<!-- E N D :: containerArea-->
	</div>
	<!--//canvas -->
<!--//wrap -->

</body>
</html>