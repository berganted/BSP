<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
</head>
<body> 
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
						<form method="get" name="searchForm" id="searchForm" action=""> 
									 
									<div class="search">
									<span class="srchSelect">	
                                <select id="orderby" name="orderby" class="dSelect" title="검색분류 선택" onchange="$('#searchForm').submit();">
                                    <option value="b_regdate"<c:if test="${param.orderby=='b_regdate'}"> selected</c:if>>날짜순</option>
                                    <option value="b_stock" <c:if test="${param.orderby=='b_stock'}"> selected</c:if>>재고</option>
                                    <option value="b_ctgdetail" <c:if test="${param.orderby=='b_ctgdetail'}"> selected</c:if>>카테고리순</option>
                                </select>
                                <select id="direct" name="direct" class="dSelect" title="검색분류 선택" onchange="$('#searchForm').submit();">
                                    <option value="DESC"<c:if test="${param.direct=='DESC'}"> selected</c:if>>내림차순</option>
                                    <option value="ASC" <c:if test="${param.direct=='ASC'}"> selected</c:if>>오름차순</option>
                                </select>
                            </span>
										<select name="stype" title="검색을 선택해주세요">
											<option value="all">전체</option>
											<option value="b_title"
												<c:if test="${param.stype=='b_title'}"> selected</c:if>>제목</option>
											<option value="b_publisher"
												<c:if test="${param.stype=='b_publisher'}"> selected</c:if>>출판사</option>
											<option value="b_author"
												<c:if test="${param.stype=='b_author'}"> selected</c:if>>작가</option>
										</select> 
										<select name="ctype">
										<c:forEach var="ctg" items="${ctg }">
										<option value="${ctg.b_ctgno2key }"
										<c:if test="${param.ctype=='b_ctgno2key'}"> selected</c:if>>${ctg.b_ctgdetail }</option>
										</c:forEach>
										</select>
										<input type="text" name="sval" value=""title="검색할 내용을 입력해주세요" /> 
										<input type="image"src="<%=request.getContextPath()%>/img/admin/btn_search.gif"
												class="sbtn" alt="검색" onclick="$('#searchForm').submit();"/>
									</div>
								</form>
							<span><strong>총 ${bookVo.totCount }개</strong>  |  ${bookVo.reqPage }/${bookVo.totPage }</span>
							<form name="frm" id="frm" action="process.do" method="post">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리목록입니다.">
								<colgroup>
									<col class="w3" />
									<col class="w4" />
									<col class="w8" />
									<col class="4" />
									<col class="w5" />
									<col class="w6" />
									<col class="w6" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first"><input type="checkbox" name="allChk" id="allChk" onClick="check(this, document.frm.no)"/></th>
										<th scope="col">번호</th>
										<th scope="col">카테고리</th>
										<th scope="col">책이름</th> 
										<th scope="col">등록일</th> 
										<th scope="col">작가</th> 
										<th scope="col">출판사</th> 
										<th scope="col" class="last">재고</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="list" items="${list }">
									<tr>
										<td class="first"><input type="checkbox" name="no" id="no" value=""/></td>
										<td>${list.b_no }</td>
										<td>${list.b_ctgdetail }</td>
										<td class="title"><a href="view.do?b_no=${list.b_no }&reqPage=${bookVo.reqPage }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">${list.b_title }</a>
										<td>${list.b_regdate}</td>
										<td>${list.b_author }</td>
										<td>${list.b_publisher }</td>
										<td class="last">${list.b_stock }</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
							</form>
							<div class="btn">
								<div class="btnLeft">
									<a class="btns" href="#" onclick=""><strong>삭제</strong> </a>
								</div>
								<div class="btnRight">
									<a class="wbtn" href="write.do"><strong>등록</strong> </a>
								</div>
							</div>
							<!--//btn-->
							<!-- 페이징 처리 -->
							<div class='page'>
									<c:if test="${bookVo.strPage > bookVo.pageRange}">
										<li><a href="index.do?reqPage=${bookVo.strPage-1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"> < </a>
									</c:if>
									<c:forEach var="rp" begin="${bookVo.strPage }"
										end="${bookVo.endPage }">
										<c:if test="${rp==bookVo.reqPage }"><strong>${rp }</strong></c:if>
										<c:if test="${rp!=bookVo.reqPage }">
                                  	<a href='index.do?reqPage=${rp}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}' class='current'>${rp }</a></c:if>

									</c:forEach>
									<c:if test="${bookVo.totPage > bookVo.endPage}">
										<a href="index.do?reqPage=${bookVo.endPage+1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">></a></c:if>
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