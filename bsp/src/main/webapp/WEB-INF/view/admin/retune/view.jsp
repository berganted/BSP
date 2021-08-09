<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp"%>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	function openZipSearch() {
		new daum.Postcode({
			oncomplete : function(data) {
				$('[name=rd_zipcode]').val(data.zonecode); // 우편번호 (5자리)
				$('[name=rd_addr1]').val(data.address);
				$('[name=rd_addr2]').val(data.buildingName);
			}
		}).open();
	}
</script>

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
						<h2>회원 - [상세/수정]</h2>
					</div>
					<!-- //con_tit -->
					<div class="con">
						<!-- 내용 : s -->
						<div id="bbs">
							<div id="bread">
								<article id="article">
								<form id="frm" action="update.do">
									<table id="return_list_detil_tb">
										<p></p>
										<tr>
											<td>반품접수일</td>
											<td>구분</td>
											<td>반품번호</td>
											<td>원주문번호</td>
											<td>상품명/수량</td>
											<td>회송방법</td>
											<td>환불방법</td>
											<td>처리상태</td>
										</tr>
										<tr>
											<td>${vo.returning_regdate }</td>
											<td>${vo.returning_category }</td>
											<td>${vo.returning_no }</td>
											<td><a href="">${vo.pb_no }</a></td>
											<td>${vo.b_title }/ ${vo.returning_amount}</td>
											<td>${vo.rd_option }</td>
											<td>${vo.refund_info }</td>
											<td><input type="hidden" value="${vo.ps_no }"> <select name="ps_no">
													<c:forEach var="op" items="${op }">
														<option value="${op.ps_no }"
															<c:if test="${op.ps_no == vo.ps_no }">selected="selected"</c:if>>${op.ps_title}</option>
													</c:forEach>
											</select></td>
										</tr>
									</table>

											<input type="hidden" name="returning_no" value="${vo.returning_no }"/>
											<input type="hidden" name="io_no" value="${vo.io_no }"/>
									<h4>상품정보</h4>
									<table id="return_list_detil_tb">
										<tr>
											<td>상품명</td>
											<td>구입 가격</td>
											<td>반품 완료 수량</td>
											<td>신청 수량</td>
										</tr>
										<c:forEach var="vo" items="${detail2}">
											<tr>
												<td>${vo.b_title }</td>
												<td>${vo.b_price }</td>
												<td>${vo.returning_amount}</td>
												<td>${vo.returning_amount}</td>
											</tr>
										</c:forEach>
									</table>

									<h4>환불정보</h4>
									<table id="return_list_detil_tb">
										<tr>
											<td>원결제 방법</td>
											<td colspan="3">${vo.pb_payno}</td>
										</tr>
										<tr>
											<td>환불 요청정보</td>
											<td><input type="text" value=""></td>
											<td>환불 완료 정보</td>
											<td>현금</td>
										</tr>
										<tr>
											<td>반품 신청액</td>
											<td>6,300원</td>
											<td>실 반품액</td>
											<td></td>
										</tr>
										<tr>
											<td>반송비 차감액</td>
											<td>2,000원</td>
											<td>환불 예정액</td>
											<td>4,300원</td>
										</tr>
									</table>
									<h4>회송 정보</h4>
									<table id="return_list_detil_tb">
										<tr>
											<td>회송 방법</td>
											<td>${vo.rd_option}</td>
											<td>방문예상일</td>
											<td>2012-05-22</td>
										</tr>
										<tr>
											<td>고객명</td>
											<td>${vo.rd_name}</td>
											<td>주소</td>
											<td><input name="rd_zipcode" type="text"
												value="${vo.rd_zipcode }"> <input name="rd_addr1"
												type="text" value="${vo.rd_addr1 }"> <input
												name="rd_addr2" type="text" value="${vo.rd_addr2 }">
												<span class="addbtn"><button
														class="btn bgGray button_s" type="button"
														onclick="openZipSearch();">검색</button></span></td>
										</tr>
										<tr>
											<td>전화번호</td>
											<td><input type="text" value="${vo.rd_tel }"></td>
											<td>요청사항</td>
											<td>${vo.rd_req }</td>
										</tr>
									</table>
									</form>
								</article>

								<!--//btn-->



								<div class="btn">
									<div class="btnLeft">
										<a class="btns" href="index.do"><strong>목록</strong></a>
									</div>
									<div class="btnRight">
										<button class="btns" style="cursor: pointer;" onclick="document.getElementById('frm').submit()"><strong>수정</strong></button>
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