<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp"%>
</head>
<body>
	<div id="wrap">
		<!-- canvas -->
		<div id="canvas">
			<!-- S T A R T :: headerArea-->
			<%@ include file="/WEB-INF/view/admin/include/top.jsp"%>
			<!-- E N D :: headerArea-->

			<!-- S T A R T :: containerArea-->
			<div id="container">
				<div id="content">
					<div class="con_tit">
						<h2>반품 - [목록]</h2>
					</div>
					<!-- //con_tit -->
					<div class="con">
						<!-- 내용 : s -->
						<div id="bbs">
							<div id="blist">
								<div class="search">
									<form method="get" name="searchForm" id="searchForm" action="">
										<span class="srchSelect"> <select id="orderby"
											name="orderby" class="dSelect" title="검색분류 선택"
											onchange="$('#searchForm').submit();">
												<option value="pb_orderdate"
													<c:if test="${param.orderby=='pb_orderdate'}"> selected</c:if>>주문일자</option>
												<option value="m_delflag"
													<c:if test="${param.orderby=='m_delflag'}"> selected</c:if>>탈퇴여부</option>
										</select>
										</span> <span class="srchSelect"> <select id="direct"
											name="direct" class="dSelect" title="검색분류 선택"
											onchange="$('#searchForm').submit();">
												<option value="DESC"
													<c:if test="${param.direct=='DESC'}"> selected</c:if>>내림차순</option>
												<option value="ASC"
													<c:if test="${param.direct=='ASC'}"> selected</c:if>>오름차순</option>
										</select>
										</span> <span class="srchSelect"> <select id="stype"
											name="stype" class="dSelect" title="검색분류 선택">
												<option value="all">전체</option>
												<option value="m_id"
													<c:if test="${param.stype=='m_id'}"> selected</c:if>>아이디</option>
												<option value="m_delflag"
													<c:if test="${param.stype=='m_delflag'}"> selected</c:if>>탈퇴여부</option>
										</select>
										</span> <span class="searchWord"> <input type="text" id="sval"
											name="sval" value="${param.sval}" title="검색어 입력"> <input
											type="image"
											src="<%=request.getContextPath()%>/img/admin/btn_search.gif"
											class="sbtn" alt="검색" onclick="$('#searchForm').submit();" /></span>
									</form>
								</div>
								<span><strong>총 ${returningVo.totCount }개</strong> |
									${returningVo.reqPage }/${returningVo.totPage }</span>
								<form name="frm" id="frm" action="process.do" method="post">
									<table width="100%" border="0" cellspacing="0" cellpadding="0"
										summary="관리자 관리목록입니다.">
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
												<th scope="col" class="first"><input type="checkbox"
													name="allChk" id="allChk"
													onClick="check(this, document.frm.no)" /></th>
												<th scope="col">반품번호</th>
												<th scope="col">구매상품</th>
												<th scope="col">주문번호</th>
												<th scope="col">수량</th>
												<th scope="col">회송방법</th>
												<th scope="col" class="last">환불방법</th>
												<th scope="col">처리상태</th>
												<th scope="col">처리상태</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="list" items="${list }">
												<tr>
													<td class="first"><input type="checkbox" name="no"
														id="no" value="" /></td>
													<td>${list.returning_no }</td>
													<td class="title"><a
														href="view.do?returning_no=${list.returning_no }&reqPage=${returningVo.reqPage }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">
															${list.b_title }</a>
													<td>${list.pb_no }</td>
													<td>${list.returning_amount}</td>
													<td>${list.rd_option }</td>
													<td>${list.refund_no }</td>
													<td>${list.ps_title }</td>
													<td>${list.returning_category }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</form>

								<!--//btn-->
								<!-- 페이징 처리 -->
								<div class='page'>
									<c:if test="${returningVo.strPage > returningVo.pageRange}">
										<li><a
											href="index.do?reqPage=${returningVo.strPage-1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"></a>
									</c:if>
									<c:forEach var="rp" begin="${returningVo.strPage }"
										end="${returningVo.endPage }">
										<c:if test="${rp==returningVo.reqPage }">
											<strong>${rp }</strong>
										</c:if>
										<c:if test="${rp!=returningVo.reqPage }">
											<a
												href='index.do?reqPage=${rp}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}'
												class='current'>${rp }</a>
										</c:if>

									</c:forEach>
									<c:if test="${returningVo.totPage > returningVo.endPage}">
										<a
											href="index.do?reqPage=${returningVo.endPage+1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">></a>
									</c:if>
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