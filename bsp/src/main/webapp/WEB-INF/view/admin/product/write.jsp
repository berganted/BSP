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
								<form method="post" name="frm" id="frm" action="insert.do"
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
												<td rowspan="4"><img id="blah" src="#" alt="your image"
													style="width: 200px; height: 250px" /> <input type="file"
													id="filename_tmp" name="filename_tmp" class="w00"
													title="첨부파일을 업로드 해주세요." /></td>
												<th scope="row"><label for="">도서번호</label></th>
												<td colspan=""><input type="text" id="title" readonly="readonly"
													name="" class="w100"    /></td>
												<th scope="row"><label for="">책제목</label></th>
												<td colspan=""><input type="text" id="title"
													name="b_title" class="w100"    /></td>
												<th scope="row"><label for="">입고일</label></th>
												<td colspan=""><input type="date" id="title"
													name="" class="w100"    /></td>
											</tr>
											<tr>
												<th scope="row"><label for="">저자</label></th>
												<td colspan=""><input type="text" id="title"
													name="b_author" class="w100"    /></td>
												<th scope="row"><label for="">출판사</label></th>
												<td colspan=""><input type="text" id="title"
													name="b_publisher" class="w100"    /></td>
												<th scope="row"><label for="">페이지수</label></th>
												<td colspan=""><input type="number" id=""
													name="b_pages" class="w100" /></td>

											</tr>
											<tr>
												<th scope="row"><label for="">ISBN코드</label></th>
												<td colspan=""><input type="text" id="title"
													name="b_isbn" class="w100"    /></td>
												<th scope="row"><label for="">재고</label></th>
												<td colspan=""><input type="text" id="title"
													name="b_stock" class="w100"    /></td>
												<th scope="row"><label for="">등록일</label></th>
												<td colspan=""><input type="text" id="title"
													name="" class="w100"    /></td>
											</tr>

											<tr>
												<th scope="row"><label for="">가격</label></th>
												<td colspan=""><input type="text" id="price"
													name="b_price" class="w100"    /></td>
												<th scope="row"><label for="">조회수</label></th>
												<td colspan=""><input type="text" id="title"
													name="" class="w100" value="0"   /></td>
												<th scope="row"><label for="">적립금</label></th>
												<td colspan=""><input type="text" id="b_point"
													name="b_point" class="w100"    /></td>


											</tr>
											<tr>
												<th scope="row"><label for="">카테고리</label></th>
												<td colspan=""><select name="b_ctgno1" id="ctg1"
													style="width: 90%">
														<option value="1">국내도서</option>
														<option value="2">외국도서</option>
												</select></td>

												<th scope="row"><label for="">카테고리2</label></th>
												<td colspan=""><select name="b_ctgno2" id="ctg2"
													style="width: 90%">
														<option value="1">소설</option>
														<option value="2">시</option>
												</select></td>
												<th></th>
												<td><input type="text" id="b_ctgno1" name="b_ctgno1" value="1"></td>
												<th></th>
												<td><input type="text" id="b_ctgno2" name="b_ctgno2" value="1"></td>
											</tr>
											<tr>
												<th scope="row" rowspan="4"><label for="">도서내용</label></th>
												<td rowspan="4"><textarea rows="" cols=""
														style="width: 100%; height: 250px" name="b_content"></textarea></td>
												<th scope="row"><label for="">작가 소개</label></th>
												<td rowspan="4"><textarea rows="" cols=""
														style="width: 100%; height: 250px" name="b_introauthor"></textarea></td>
												<th scope="row"><label for="">책 소개</label></th>
												<td rowspan="4"><textarea rows="" cols=""
														style="width: 100%; height: 250px" name="b_introbook"></textarea></td>
												<th></th>
												<td></td>

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