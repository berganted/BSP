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
							<span><strong>총 ${userVo.totCount }개</strong>  |  ${userVo.reqPage }/${userVo.totPage }</span>
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
										<th scope="col">아이디</th> 
										<th scope="col">가입일</th> 
										<th scope="col">이름</th> 
										<th scope="col">이메일</th> 
										<th scope="col" class="last">탈퇴여부</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="list" items="${list }">
									<tr>
										<td class="first"><input type="checkbox" name="no" id="no" value=""/></td>
										<td>${list.m_no }</td>
										<td class="title"><a href="view.do?m_no=${list.m_no }&reqPage=${userVo.reqPage }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">${list.m_id }</a>
										<td>${list.m_regdate}</td>
										<td>${list.m_name }</td>
										<td>${list.m_email }@${list.m_email_d }</td>
										<td class="last">${list.m_delflag }</td>
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
                        	<c:if test="${userVo.strPage > userVo.pageRange}"><li><a href="index.do?reqPage=${userVo.strPage-1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"><</a></li></c:if>
                       	<c:forEach var="rp" begin="${userVo.strPage }" end="${userVo.endPage }">
                            <li><a href='index.do?reqPage=${rp }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}' <c:if test="${rp==userVo.reqPage }">class='current'</c:if>>${rp}</a></li>
                        </c:forEach>
                          	<c:if test="${userVo.totPage > userVo.endPage}"><li><a href="index.do?reqPage=${userVo.endPage+1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">></a></li></c:if>      
                        </ul> 
                    </div>
							<!-- //페이징 처리 -->
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