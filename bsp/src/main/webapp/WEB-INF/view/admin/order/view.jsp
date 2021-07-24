<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
					<h2>회원 - [상세/수정]</h2>
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- 내용 : s -->
					<div id="bbs">
						<div id="bread">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리 기본내용입니다.">
								<colgroup>
									<col width="10%" />
									<col width="15%" />
									<col width="10%" />
									<col width="15%" />
									<col width="10%" />
									<col width="25%" />
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><label for="">주문번호</label></th>
										<td colspan="1">${vo.pb_no }
										</td>
										<th scope="row"><label for="">아이디</label></th>
										<td>${vo.m_id }
										</td>
										<th scope="row"><label for="">이메일</label></th>
										<td>
											${ vo.m_email}@${vo.m_email_d }
										</td>
										
									</tr>
									<tr>
										<th scope="row"><label for="">이름</label></th>
										<td colspan="">
											${vo.pb_resname }
										</td>
										<th scope="row"><label for="">전화번호</label></th>
										<td colspan="">
											${vo.pb_restel }
										</td>
										<th scope="row"><label for="">주소</label></th>
										<td colspan="">
											${vo.pb_zipcode }<br>
											${vo.pb_addr1 }
										</td>
									</tr>
									<tr>
							</table>
							
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
									<tr>
										<th scope="col" class="first"><input type="checkbox" name="allChk" id="allChk" onClick="check(this, document.frm.no)"/></th>
										<th scope="col">출고번호</th>
										<th scope="col">구매상품</th> 
										<th scope="col" class="last">주문수량</th>
										<th scope="col">개별가격</th> 
										<th scope="col">총 가격</th> 
										<th scope="col">처리상태</th> 
										<th scope="col">구매일</th> 
									</tr>
									<c:forEach var="list" items="${list }">
									<tr>
										<td class="first"><input type="checkbox" name="no" id="no" value=""/></td>
										<td>${list.io_no }</td>
										<td class="title"><a href="view.do?pb_no=${list.pb_no }&reqPage=${orderVo.reqPage }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">
											${list.b_title }<c:if test="${list.count>1 }">외 ${list.count - 1}권</c:if></a>
										<td>${list.io_amount }</td>
										<td><fmt:formatNumber value="${list.b_price }" groupingUsed="true" /></td>
										<td><fmt:formatNumber value="${list.b_price * list.io_amount}" groupingUsed="true" /></td>
										<td>${list.ps_title }</td>
										<td class="last">${list.pb_orderdate }</td>
									</tr>
									</c:forEach>
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
									
									
							<div class="btn">
								<div class="btnLeft">
									<a class="btns" href="index.do"><strong>목록</strong></a>
								</div>
								<div class="btnRight">
									<a class="btns" style="cursor:pointer;" href=""><strong>수정</strong></a>
									<a class="btns" style="cursor:pointer;" href=""><strong>답변</strong></a>
								</div>
							</div>
							<!--//btn-->
						</div>
						<!-- //bread -->
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