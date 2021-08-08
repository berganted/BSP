<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
 <script src="/bsp/js/script.js"></script>
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
					<h2>공지사항 - [목록]</h2>
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- 내용 : s -->
					<div id="bbs">
						<div id="blist">
							<p><span><strong>총 ${boardVo.totCount }개</strong>  |  ${boardVo.reqPage}/${boardVo.totPage }페이지</span></p>
							<form name="frm" id="frm" action="process.do" method="post">
							<input type="hidden" id="admin" value="${adminInfo.empower }">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리목록입니다.">
								<colgroup>
								<col width="80px" />
								<col width="80px" />
	                            <col width="*" />
	                            <col width="100px" />
	                            <col width="200px" />
	                            <col width="80px" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first"><input type="checkbox" name="allChk" id="allChk" onClick="selectAll(this)"/></th>
										<th scope="col">번호</th>
										<th scope="col">제목</th> 
										<th scope="col">작성자</th> 
										<th scope="col">작성일</th> 
										<th scope="col" class="last">조회수</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="vo" items="${list }">
									<tr>
								<td class="first"><input type="checkbox" name="no" id="no" value=""/></td>
								<td>${(boardVo.totCount-status.index)-((boardVo.reqPage-1)*boardVo.pageRow)}</td>
                                <td class="txt_l" style="text-align: left;">
                                    <a href="view.do?q_no=${vo.q_no }&reqPage=${boardVo.reqPage}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">
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
							</form>
							<div class="btn">
								<div class="btnLeft">
									<a class="btns" href="#" onclick="groupDel();"><strong>삭제</strong> </a>
								</div>
								<div class="btnRight">
								</div>
							</div>
							<!--//btn-->
							<!-- 페이징 처리 -->
							<div class='page'>
									<c:if test="${boardVo.strPage > boardVo.pageRange}">
										<li><a href="index.do?reqPage=${boardVo.strPage-1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"></a>
									</c:if>
									<c:forEach var="rp" begin="${boardVo.strPage }"
										end="${boardVo.endPage }">
										<c:if test="${rp==boardVo.reqPage }"> <strong>${rp }</strong></c:if>
										<c:if test="${rp!=boardVo.reqPage }">
                                  	<a href='index.do?reqPage=${rp}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}' class='current'>${rp }</a></c:if>

									</c:forEach>
									<c:if test="${boardVo.totPage > boardVo.endPage}">
										<a
											href="index.do?reqPage=${boardVo.endPage+1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">></a></c:if>
								</div>
							<!-- //페이징 처리 -->
							<form name="searchForm" id="searchForm" action="index.do"  method="post">
								<div class="search">
									<select name="stype" title="검색을 선택해주세요">
										<option value="all">전체</option>
										<option value="title">제목</option>
										<option value="contents">내용</option>
									</select>
									<input type="text" name="sval" value="" title="검색할 내용을 입력해주세요" />
									<input type="image" src="<%=request.getContextPath()%>/img/admin/btn_search.gif" class="sbtn" alt="검색" />
								</div>
							</form>
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