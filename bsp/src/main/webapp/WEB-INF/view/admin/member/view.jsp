<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
										<th scope="row"><label for="">회원번호</label></th>
										<td colspan="1">
											${vo.m_no}
										</td>
										<th scope="row"><label for="">아이디</label></th>
										<td>
											${vo.m_id}
										</td>
										<th scope="row"><label for="">이메일</label></th>
										<td>
											${vo.m_email}@${vo.m_email_d }
										</td>
										
									</tr>
									<tr>
										<th scope="row"><label for="">이름</label></th>
										<td colspan="">
											${vo.m_name}
										</td>
										<th scope="row"><label for="">전화번호</label></th>
										<td colspan="">
											${vo.m_tel}
										</td>
										<th scope="row"><label for="">주소</label></th>
										<td colspan="">
											우편번호 ${vo.m_zipcode} <br>주소 ${vo.m_addr1 } ${vo.m_addr2 } 
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="">가입일</label></th>
										<td colspan="">
											${vo.m_regdate}
										</td>
										<th scope="row"><label for="">탈퇴일</label></th>
										<td colspan="">
											${vo.m_deldate}
										</td>
										<th scope="row"><label for="">탈퇴여부</label></th>
										<td colspan="">
											${vo.m_delflag}
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="">보유포인트</label></th>
										<td colspan="3">
											${vo.m_point}
										</td>
										<th scope="row"><label for="">성별</label></th>
										<td colspan="3">
										<c:if test="${vo.gender=='m'}">
											남성
										</c:if>
										<c:if test="${vo.gender=='w'}">
											여성
										</c:if>
									</tr>
								</tbody>
							</table>
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