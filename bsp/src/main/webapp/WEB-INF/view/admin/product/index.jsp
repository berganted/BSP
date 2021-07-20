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
					<h2> 회원 - [목록]</h2>
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- 내용 : s -->
					<div id="bbs">
						<div id="blist">
							<span><strong>총 ${bookVo.totCount }개</strong>  |  ${bookVo.reqPage }/${bookVo.totPage }</span>
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
										<th scope="col">번호</th>
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
							<div class="page">
                        <ul class='paging'>
                        	<c:if test="${bookVo.strPage > bookVo.pageRange}"><li><a href="index.do?reqPage=${bookVo.strPage-1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"><</a></li></c:if>
                       	<c:forEach var="rp" begin="${bookVo.strPage }" end="${bookVo.endPage }">
                            <li><a href='index.do?reqPage=${rp }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}' <c:if test="${rp==bookVo.reqPage }">class='current'</c:if>>${rp}</a></li>
                        </c:forEach>
                          	<c:if test="${bookVo.totPage > bookVo.endPage}"><li><a href="index.do?reqPage=${bookVo.endPage+1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">></a></li></c:if>      
                        </ul> 
                    </div>
							<!-- //페이징 처리 -->
							<div class="search">
                        <form method="get" name="searchForm" id="searchForm" action=""> 
                        <span class="srchSelect">	
                                <select id="orderby" name="orderby" class="dSelect" title="검색분류 선택" onchange="$('#searchForm').submit();">
                                    <option value="b_regdate"<c:if test="${param.orderby=='b_regdate'}"> selected</c:if>>가입일</option>
                                    <option value="b_delflag" <c:if test="${param.orderby=='b_delflag'}"> selected</c:if>>탈퇴여부</option>
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
                                    <option value="b_id" <c:if test="${param.stype=='b_id'}"> selected</c:if>>아이디</option>
                                    <option value="b_delflag"<c:if test="${param.stype=='b_delflag'}"> selected</c:if>>탈퇴여부</option>
                                </select>
                            </span>
                            <span class="searchWord">
                                <input type="text" id="sval" name="sval" value="${param.sval}"  title="검색어 입력">
                                <input type="button" id="" value="검색" title="검색" onclick="$('#searchForm').submit();">
                            </span>
                        </form>
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
</div>
<!--//wrap -->

</body>
</html>