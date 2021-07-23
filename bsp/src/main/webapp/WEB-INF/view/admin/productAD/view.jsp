<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp"%>
<script>
	$(function() {
		$("#price").change(function(){
			var p = $(this).val();
			var po = p * 0.05
			$("#b_point").val(po);
		})

		$("#filename_tmp").on('change', function() {
			readURL(this);
		});

		$('#ctg1').change(function() {
			var ctg1 = $('#ctg1 option:selected').val()
			$('#b_ctgno1').val(ctg1);
			console.log($('#b_ctgno1').val());
		});
		$('#ctg2').change(function() {
			var ctg1 = $('#ctg2 option:selected').val()
			$('#b_ctgno2').val(ctg1);
			console.log($('#b_ctgno2').val());
		});
	});
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
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
						<h2>상품 - [등록]</h2>
					</div>
					<!-- //con_tit -->
					<div class="con">
						<!-- 내용 : s -->
						<div id="bbs">
							<div id="bread">
								<form method="post" name="frm" id="frm" action="update.do"
									enctype="multipart/form-data">
									<table width="100%" border="0" cellspacing="0" cellpadding="0"
										summary="관리자 관리 기본내용입니다.">
										<colgroup>
											<col width="10%">
											<col width="15%">
											<col width="10%">
											<col width="15%">
											<col width="10%">
											<col width="15%">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row" rowspan="4"><label for="">책 이미지</label></th>
												<td rowspan="4"><img id="blah" src="/bsp/ad/${vo.ad_img }" alt="your image"
													style="width: 200px; height: 250px" /> <input type="file"
													id="filename_tmp" name="filename_tmp" class="w00"
													title="첨부파일을 업로드 해주세요." /></td>
												<th scope="row"><label for="">도서번호</label></th>
												<td colspan=""><input type="text" id="title" 
													name="b_no" class="w100" value="${vo.b_no }"   /></td>
												<th scope="row"><label for="">광고번호</label></th>
												<td colspan=""><input type="text" id="title"
													name="ad_no" class="w100" value="${vo.ad_no }"   /></td>
												

											</tr>

										</tbody>
									</table>
									<input type="hidden" name="cmd" value="write" />
								</form>
								<div class="btn">
									<div class="btnLeft">
										<a class="btns" href="index.do"><strong>목록</strong></a>
									</div>
									<div class="btnRight">
										<a class="btns" style="cursor: pointer;"onclick="document.getElementById('frm').submit()"><strong>저장</strong></a>
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