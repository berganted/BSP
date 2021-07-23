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
					<h2> 주문 - [목록]</h2>
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- 내용 : s -->
					<div id="bbs">
						<div id="blist">
						<div class="search">
                        <form method="get" name="searchForm" id="searchForm" action=""> 
                        <span class="srchSelect">	
                                <select id="orderby" name="orderby" class="dSelect" title="검색분류 선택" onchange="$('#searchForm').submit();">
                                    <option value="m_regdate"<c:if test="${param.orderby=='m_regdate'}"> selected</c:if>>가입일</option>
                                    <option value="m_delflag" <c:if test="${param.orderby=='m_delflag'}"> selected</c:if>>탈퇴여부</option>
                                </select>
                            </span>             
                            <span class="srchSelect">	
                                <select id="direct" name="direct" class="dSelect" title="검색분류 선택" onchange="$('#searchForm').submit();">
                                    <option value="DESC"<c:if test="${param.direct=='DESC'}"> selected</c:if>>내림차순</option>
                                    <option value="ASC" <c:if test="${param.direct=='ASC'}"> selected</c:if>>오름차순</option>
                                </select>
                            </span>
                            <span class="srchSelect">	
                                <select id="stype" name="stype" class="dSelect" title="검색분류 선택">
                                    <option value="all">전체</option>
                                    <option value="m_id" <c:if test="${param.stype=='m_id'}"> selected</c:if>>아이디</option>
                                    <option value="m_delflag"<c:if test="${param.stype=='m_delflag'}"> selected</c:if>>탈퇴여부</option>
                                </select>
                            </span>
                            <span class="searchWord">
                                <input type="text" id="sval" name="sval" value="${param.sval}"  title="검색어 입력">
                                <input type="image"src="<%=request.getContextPath()%>/img/admin/btn_search.gif"
											class="sbtn" alt="검색" onclick="$('#searchForm').submit();"/></span>
                        </form>
                    </div>
							<span><strong>총 ${orderVo.totCount }개</strong>  |  ${orderVo.reqPage }/${orderVo.totPage }</span>
							<form name="frm" id="frm" action="process.do" method="post">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리목록입니다.">
								<colgroup>
									<col class="w3" />
									<col class="w4" />
									<col class="4" />
									<col class="w10" />
									<col class="w5" />
									<col class="w6" />
									<col class="w6" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first"><input type="checkbox" name="allChk" id="allChk" onClick="check(this, document.frm.no)"/></th>
										<th scope="col">주문번호</th>
										<th scope="col">구매상품</th> 
										<th scope="col">구매자</th> 
										<th scope="col">가격</th> 
										<th scope="col">처리상태</th> 
										<th scope="col" class="last">주문수량</th>
										<th scope="col">구매일</th> 
									</tr>
								</thead>
								<tbody>
									<c:forEach var="list" items="${list }">
									<tr>
										<td class="first"><input type="checkbox" name="no" id="no" value=""/></td>
										<td>${list.pb_no }</td>
										<td class="title"><a href="view.do?pb_no=${list.pb_no }&reqPage=${orderVo.reqPage }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">
											${list.b_title }<c:if test="${list.count>1 }">외 ${list.count - 1}권</c:if></a>
										<td>${list.m_id }</td>
										<td>${list.pb_totalprice}</td>
										<td>${list.ps_title }</td>
										<td>${list.amount_sum }</td>
										<td class="last">${list.pb_orderdate }</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
							</form>
							
							<!--//btn-->
							<!-- 페이징 처리 -->
							<div class='page'>
									<c:if test="${orderVo.strPage > orderVo.pageRange}">
										<li><a href="index.do?reqPage=${orderVo.strPage-1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"></a>
									</c:if>
									<c:forEach var="rp" begin="${orderVo.strPage }"
										end="${orderVo.endPage }">
										<c:if test="${rp==orderVo.reqPage }"> <strong>${rp }</strong></c:if>
										<c:if test="${rp!=orderVo.reqPage }">
                                  	<a href='index.do?reqPage=${rp}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}' class='current'>${rp }</a></c:if>

									</c:forEach>
									<c:if test="${orderVo.totPage > orderVo.endPage}">
										<a
											href="index.do?reqPage=${orderVo.endPage+1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">></a></c:if>
								</div>
							<!-- //페이징 처리 -->
							
							
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
</div>
<!--//wrap -->

</body>
</html>