<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="/bsp/css/base.css">
<link rel="stylesheet" href="/bsp/css/reset.css">
<link rel="stylesheet" href="/bsp/css/big.css">
<link rel="stylesheet" href="/bsp/css/index.css">
<script src="/bsp/js/main.js"></script>
<script src="/bsp/js/big.js"></script>
<script src="js/jquery-1.11.3.min.js"></script>
<script src="/bsp/js/star.js"></script>
<title>도서상세페이지</title>

<script type="text/javascript">
$(function(){
	var abc=$("#abc").val()
	console.log(abc.length)
	if($("#abc").val().length>30){
		$('#blah').attr('src',abc)
	}
})

  function gosave() {
	  $('#frm').attr('action','/bsp/cart/insert.do')
	  if($('#m_no').val()==0){
		  alert('로그인하세요')
		  return false
	  }
	  $('#frm').submit();
	  }
  
  function goorder() {
	  $('#frm').attr('action','/bsp/order/buy.do')
	   if($('#m_no').val()==0){
		  alert('로그인이 필요합니다.')
		  location.href="/bsp/user/login.do"
		  return false
	   }
	  $('#frm').submit();
	
}
  
	function goReview() {
		<c:if test="${!empty userInfo}">
		if ($("#content").val().trim()==''){
			alert('내용을 입력해 주세요');
		} else {
			if (confirm('리뷰를 등록하시겠습니까?')) {
				$.ajax({
        			url:'/bsp/review/insert.do',
        			data:{
            				r_content:$("#content").val(),
            				r_no:${vo.r_no},
            				m_no:${userInfo.m_no},
            				b_no:${vo.b_no},
            				r_grade:$("#r_grade").text()
        			},
        			success:function(res) {
        				if (res.trim()=='true') {
        					alert('리뷰가 등록되었습니다.');
        					$("#content").val("");
        					getComment();
        				} else {
        					alert('리뷰 등록 실패');
        				}
        			}
        		});
			}
		}
		</c:if>
		<c:if test="${empty userInfo}">
			alert('리뷰는 로그인 후 등록 가능합니다.');
		</c:if>
	}
	 $(function(){
		 starRating();
		 getComment(1);
	    });
	function getComment(reqPage) {
		$.ajax({
			url:'/bsp/review/list.do',
			data:{
				b_no:${vo.b_no}, 
				reqPage:reqPage
			}, 
			success:function(res) {
				$("#reviewArea").html(res);
			}
		})
	}
	function commentDel(no) {
		if (confirm('댓글을 삭제하시겠습니까?')) {
    		$.ajax({
    			url:'/bsp/review/delete.do',
    			data:{
    				r_no:no
    			},
    			success:function(res) {
    				if (res.trim()=='true') {
        				alert('댓글이 삭제되었습니다.');
        				getComment(1);
    				} else {
    					alert('댓글 삭제 오류');
    				}
    			}
    		});
		}
	}
  </script>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="wrap">
		<jsp:include page="../include/sideCategory.jsp"></jsp:include>
		<div class="mem_content">
			<div class="detail_wrap">
				<div class="img_section">
					<div class="detail_bookImg">
						<img src="/bsp/img/${vo.b_imgmain }" id="blah" alt="${vo.b_title }"
							, title="${vo.b_title }" style="width: 250px; height: 310px;">
						<input type="hidden" name=abc id="abc" value="${vo.b_imgmain }"/>
					</div>
				</div>
				<form id='frm' action="/bsp/cart/insert.do" method="get">
				
					<div class="detail_bookInfo">
						<div class="bookInfo_section">

							<input type="hidden" name="b_no" value="${vo.b_no }"> 
							<input	type="hidden" id="m_no" name="m_no" value="${userInfo.m_no }">
							<input type="hidden" name="b_price" value="${vo.b_price }">
							<input type="hidden" name="b_title" value="${vo.b_title }">
							<input type="hidden" id="b_author" name="b_author"value="${vo.b_author }"> 
							<input type="hidden"name="b_publisher" value="${vo.b_publisher }"> 
							<span class="detail_bookTilte" style="font-weight: 600; font-size: 25px;">${vo.b_title} </span> <br> 
							<span class="detail_bookAuthor">${vo.b_author }</span>
							&nbsp;| <span class="detail_bookPub">${vo.b_publisher }</span>
							&nbsp;| <span class="detail_bookDate"><fmt:formatDate
									value="${vo.b_intodate}" pattern="yyyy년 MM월 dd일" /></span><br> <span
								class="detail_grade"><fmt:formatNumber  value="${vo.avg }"  pattern="0.0"/>/5</span> &nbsp; <span
								class="detail_review"><a href="#">회원리뷰(${vo.rcnt }건)</a></span> &nbsp;| <span
								class="detail_sales">판매지수 ${vo.tot} </span>
							<hr>
						</div>
						<div class="bookInfo_bottom">
							<div class="info_Price">
								<span class="sellPrice"
									style="font-size: 18px; font-weight: 600;">판매가</span>
								&nbsp;&nbsp; <span class="sellPrice1"
									style="color: rgb(231, 60, 60); font-size: 20px; font-weight: 600;">${vo.b_price }원</span>
								<br> <span class="deliverInfo" style="font-size: 18px;">
									
									*배송비 : 무료</span>

							</div>
						</div>
					</div>
					<div class="detail_bookPay">
						<div class="detail_payWrap3">
							<span class="ing" style="font-size: 15px;"> &emsp;&emsp;
								판매중</span> <br>
							<div class="number" style="margin-left: 1px;">
								<button class="button_s" type="button" id="decreaseQuantity">-</button>
								<input type="number" id="numberUpDown" name="io_amount"
									style="width: 50px; text-align: center;" value="1">
								<button class="button_s" type="button" id="increaseQuantity">+</button>
							</div>
						</div>
						<div class="detail_payWrap1">
							<input type="button" class="btn1" value="카트에 넣기"
								style="margin-left: 20px;" onclick="gosave();">
						</div>
						<div class="detail_payWrap2">
							<input type="button" class="btn2" value="바로구매"
								style="margin-left: 20px;" onclick="goorder()">
						</div>
					</div>
				</form>
			</div>
			
			
			

			<div class="detail_section">
				<div class="bookintro">
					<b>책소개</b>
				</div>
				<div>
					<p class="bookintro1">
						
						${vo.b_introbook } <br> 동물들 대신 쓴 독특한 콘셉트의 에세이 『정말 별게 다

					</p>
				</div>
			</div>
			<div class="detail_section">
				<div class="bookAuthor" style="font-size: 25px;">
					<b>저자</b>
				</div>
				<p class="bookintro1" style="font-size: 17px;">
					${vo.b_introauthor } <br> 저자 : 고바야시 유리코 <br> 1980년 일본 효고

				</p>
			</div>


			<div class="detail_section">
				<div class="bookIndex" style="font-size: 25px;">
					<b>목차</b>
				</div>
				<div>
					<p class="bookintro1" style="font-size: 17px;">
						${vo.b_index } <br> 1. 「먹고 기도하고 사랑하라」와 치유의 와인<br> 2.

					</p>
				</div>
			</div>

			<div class="detail_section">
				<div class="bookIndex" style="font-size: 25px; margin-top: 50px">
					<b>리뷰</b>
				</div>
				<div class="bookIndex2"
					style="font-size: 18px; margin-top: -20px; margin-left: 10px; margin-bottom: 30px;">
					매주 10건의 우수리뷰를 선정하여 BSP상품권 3만원을 드립니다</div>
				<br>

				<div class="book_detailReview" style="width: auto; height: 250px;">
					<div style="text-align: center;">
						<h1>리뷰/평점</h1>
					</div>
					<div style="text-align: center;">
						<span class="star-input"> 
						<span class="input"> 
							<input type="radio" name="star-input" value="1" id="p1"> <label for="p1">1</label> 
							<input type="radio" name="star-input" value="2" id="p2"> <label for="p2">2</label> 
							<input type="radio" name="star-input" value="3" id="p3"> <label for="p3">3</label> 
							<input type="radio" name="star-input" value="4" id="p4"> <label for="p4">4</label> 
							<input type="radio" name="star-input" value="5" id="p5"> <label for="p5">5</label>
						</span> 
						<output for="star-input"><b id="r_grade">0</b>점</output>
						</span>
					</div>


					<!-- 돈터치  -->
					<br>
					<!-- 리뷰시작  -->
					<table class="board_write">
						<colgroup>
							<col width="*" />
							<col width="80px" />
						</colgroup>
						<tbody>
							<tr>
								<c:if test="${userInfo == null }"><td><textarea name="r_content" id="content" placeholder="리뷰는 구매후 작성할 수 있습니다:)" readonly
										style="width: 100%; height: 80px"></textarea></td></c:if>
								<c:if test="${isOrder.isorder >0 }"><td><textarea name="r_content" id="content" placeholder="리뷰를 입력해주세요 :)"
										style="width: 100%; height: 80px"></textarea></td></c:if>
								<c:if test="${isOrder.isorder==0}"><td><textarea name="r_content" id="content" placeholder="리뷰는 구매후 작성할 수 있습니다:)" readonly
										style="width: 100%; height: 80px"></textarea></td></c:if>
								<td>
									<div class="btnSet" style="text-align: right;">
										<a class="btn" href="javascript:goReview();">저장 </a>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					
					<script>

                    </script>
				</div>
				<div id="reviewArea"></div>
			</div>
		</div>
	<%@ include file="/WEB-INF/view/include/quick.jsp"%>
	</div>
	<%@ include file="/WEB-INF/view/include/footer.jsp"%>

	

</body>