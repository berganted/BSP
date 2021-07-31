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



<title>Document</title>
<style>

/* 페이징처리 */
.pagenate {width:100%; clear:both;}
.pagenate {text-align:center; margin:20px auto 0;}
.pagenate li {display:inline-block;}
.pagenate li:first-child { margin-left:0px; }
.pagenate li a{display:inline-block; text-decoration:none; padding:0; width:30px; height:30px; line-height:30px; border:1px solid #c7c8cc; box-sizing:border-box; margin-left:-1px; vertical-align:middle;}
.pagenate li a:hover{background:#f6f6f6; font-weight:bold; text-decoration:none !important;}
.pagenate li a.board { text-indent:-9999em; margin-left:4px; }
.pagenate li a.board.first {background:#f3f3f3 url('/img/ico_first.png') no-repeat center center;}
.pagenate li a.board.prev {margin-right:30px; background:#efefef url('/img/ico_prev.png') no-repeat center center;}
.pagenate li a.board.next {margin-left:30px; background:#efefef url('/img/ico_next.png') no-repeat center center;}
.pagenate li a.board.last {background:#f3f3f3 url('/img/ico_last.png') no-repeat center center;}
.pagenate li a.current {color:#fff; background-color:#221f1f; font-weight:bold;  border:1px solid #221f1f;}


.button_m {
	font-size: 14px;
	text-decoration: none !important;
	white-space: nowrap;
	display: inline-block;
	vertical-align: baseline;
	position: relative;
	cursor: pointer;
	padding: 4px 20px;
	min-width: 64px;
	border: 2px solid #221f1f;
	color: #fff !important;
	margin: 0 2px;
	text-align: center;
	font-weight: bold;
	border-radius: 5px;
	background-color: #221f1f;
}

.button_s {
	font-size: 12px;
	text-decoration: none !important;
	white-space: nowrap;
	display: inline-block;
	vertical-align: baseline;
	position: relative;
	cursor: pointer;
	padding: 2px 10px;
	min-width: 20px;
	border: 2px solid #221f1f;
	color: #fff !important;
	margin: 0 2px;
	text-align: center;
	font-weight: bold;
	border-radius: 5px;
	background-color: #221f1f;
}

.star-input {
	margin: auto;
}

.star-input>.input, .star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	display: inline-block;
	vertical-align: middle;
	background: url('/bsp/img/grade_img.png') no-repeat;
}

.star-input {
	display: inline-block;
	white-space: nowrap;
	width: 225px;
	height: 40px;
	padding: 25px;
	line-height: 30px;
}

.star-input>.input {
	display: inline-block;
	width: 150px;
	background-size: 150px;
	height: 28px;
	white-space: nowrap;
	overflow: hidden;
	position: relative;
}

.star-input>.input>input {
	position: absolute;
	width: 1px;
	height: 1px;
	opacity: 0;
}

star-input>.input.focus {
	outline: 1px dotted #ddd;
}

.star-input>.input>label {
	width: 30px;
	height: 0;
	padding: 28px 0 0 0;
	overflow: hidden;
	float: left;
	cursor: pointer;
	position: absolute;
	top: 0;
	left: 0;
}

.star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	background-size: 150px;
	background-position: 0 bottom;
}

.star-input>.input>label:hover ~label {
	background-image: none;
}

.star-input>.input>label[for="p1"] {
	width: 30px;
	z-index: 5;
}

.star-input>.input>label[for="p2"] {
	width: 60px;
	z-index: 4;
}

.star-input>.input>label[for="p3"] {
	width: 90px;
	z-index: 3;
}

.star-input>.input>label[for="p4"] {
	width: 120px;
	z-index: 2;
}

.star-input>.input>label[for="p5"] {
	width: 150px;
	z-index: 1;
}

.star-input>output {
	display: inline-block;
	width: 60px;
	font-size: 18px;
	text-align: right;
	vertical-align: middle;
}
</style>
<script type="text/javascript">
  $(function(){
	  
	  
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
						<img src="/bsp/img/${vo.b_imgmain }" alt="${vo.b_title }"
							, title="${vo.b_title }" style="width: 250px; height: 310px;">

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
								class="detail_grade">★★★★★9.6</span> &nbsp; <span
								class="detail_review"><a href="#">회원리뷰(86건)</a></span> &nbsp;| <span
								class="detail_sales">판매지수 174,628</span>
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
							<div class="number">
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
						고민입니다』는 걱정 많은 ‘나’를 위한 동물들의 일대일 조언을 담고 있다. 인간의 관점에서 벗어나 동물의 관점에서
						문제를 바라보니 해법은 의외로 단순했다. 10대부터 50대 이상 남녀노소의 다양한 걱정거리를 조사하고 가장 인기 있는
						47가지 고민을 꼽으니 다음과 같다. 모아놓은 돈이 없어서, 늙어서 외롭게 지낼까봐, 머리카락이 빠져서, 권태기
						때문에, 출퇴근이 힘들어서, 회사를 옮기고 싶어서, 시험을 망쳐서, 그냥 학교 가기 싫어서, 초조하고 불안해서 등등.
						갖가지 고민을 상담해줄 동물 선생은 ‘고래, 다람쥐, 미어캣, 사자, 원숭이, 침팬지, 카피바라, 코끼리, 호랑이,
						해달’ 등 다양하다. <br> <br> 동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라
						만세 무궁화 삼천리 화려 강산 대한 사람 대한으로 길이 보전하세 남산 위에 저 소나무 철갑을 두른 듯 바람 서리
						불변함은 우리 기상일세 무궁화 삼천리 화려 강산 대한 사람 대한으로 길이 보전하세 가을 하늘 공활한데 높고 구름 없이
						밝은 달은 우리 가슴 일편단심일세 무궁화 삼천리 화려 강산 대한 사람 대한으로 길이 보전하세 이 기상과 이 맘으로
						충성을 다하여 괴로우나 즐거우나 나라 사랑하세 무궁화 삼천리 화려 강산 대한 사람 대한으로 길이 보전하세 <br>
						<br> 가을 하늘 공활한데 높고 구름 없이 밝은 달은 우리 가슴 일편단심일세 무궁화 삼천리 화려 강산 대한
						사람 대한으로 길이 보전하세 이 기상과 이 맘으로 충성을 다하여 괴로우나 즐거우나 나라 사랑하세 무궁화 삼천리 화려
						강산 대한 사람 대한으로 길이 보전하세
					</p>
				</div>
			</div>
			<div class="detail_section">
				<div class="bookAuthor" style="font-size: 25px;">
					<b>저자</b>
				</div>
				<p class="bookintro1" style="font-size: 17px;">
					${vo.b_introauthor } <br> 저자 : 고바야시 유리코 <br> 1980년 일본 효고
					현 출생. 와세다대학 졸업. 방송 제작사에서 야생동물 다큐멘터리를 만들다가 출판사 에디터가 되었다. 현재는 프리랜서
					에디터로 자연, 생물, 산악 분야의 책과 잡지를 주로 만들고 있다. 언제나 ‘지금’을 살아가는 동물들의 다양한 삶의
					방식을 통해 인간의 47가지 고민에 대한 조언을 이 책에 담았다. <br> <br> 역자 : 이용택
					한국외국어대학 일본어과 졸업. 출판사에서 출판 기획, 편집 업무를 담당했다. 옮긴 책으로는 『무심코 당신을
					부르다가』『후회 없는 죽음을 위해 꼭 알아야 할 것들』 『행복해질 용기』 외 다수가 있다. <br> <br>
					그림 : 오바타 사키 1986년 일본 야마나시 현 출생. 구와사와디자인연구소 종합디자인과 졸업. 디자이너로 일하다가 독립
					후 일러스트레이터가 되었다. 이 책에서는 동물들의 다양한 특징과 흥미로운 이야기를 작가만의 심플하고 개성 있는 스타일로
					표현했다. <br> <br> 감수 : 이마이즈미 다다아키 1944년 일본 도쿄 출생. 도쿄해양대학
					졸업. 국립과학박물관에서 포유류의 분류학과 생태학을 공부했다. 우에노동물원의 동물 해설사이자 시즈오카 현의 ‘고양이
					박물관’ 관장이다. 이 책에서는 동물 생태에 대한 조언과 함께 고민 상담에 도움을 주었다.
				</p>
			</div>


			<div class="detail_section">
				<div class="bookIndex" style="font-size: 25px;">
					<b>목차</b>
				</div>
				<div>
					<p class="bookintro1" style="font-size: 17px;">
						${vo.b_index } <br> 1. 「먹고 기도하고 사랑하라」와 치유의 와인<br> 2.
						「미드나잇 인 파리」, 헤밍웨이와 달리가 마시던 와인<br> 3. 「어느 멋진 순간」과 전설의 와인 '코앙
						페르두'<br> 4. 「악마는 프라다를 입는다」와 뉴요커의 와인<br> 5. 「줄리&줄리아」, 뵈프
						부르기뇽에는 부르고뉴 와인을!<br> 6. 「아이리시맨」과 빵에 찍어 먹는 키안티 와인<br> 7.
						「완벽한 타인」, 곰탕에 레드 와인 어때요<br> 8. 「내 아내의 모든 것」, 정인과 성기가 나눠 마시던
						와인<br> 9. 「위대한 개츠비」와 알코올 중독 피츠제럴드<br> 10. 「비포 선라이즈」와 잊지
						못할 하룻밤의 와인<br> <br> <br> 11. 「셜록 홈즈」와 샤토 마고 1858<br>
						12. 「뉴욕, 아이 러브 유」와 샴페인 '뵈브 클리코'<br> 13. 「킹스맨: 시크릿 에이전트」, 해리와
						발렌타인의 와인 승부<br> 14. 「남극의 셰프」와 모토의 생일날 마시는 와인<br> 15.
						「아이언맨 3」, 토니 스타크가 셀러에 쟁여둔 와인<br> 16. 「사이드웨이」와 샤토 슈발 블랑 1961<br>
						17. 「뉴욕의 가을」과 석양빛 로제 와인<br> 18. 「대부」의 독주, 그라파<br> 19.
						「마리 앙투아네트」와 와인 잔에 얽힌 비밀<br>
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
						<span class="star-input"> <span class="input"> <input
								type="radio" name="star-input" value="1" id="p1"> <label
								for="p1">1</label> <input type="radio" name="star-input"
								value="2" id="p2"> <label for="p2">2</label> <input
								type="radio" name="star-input" value="3" id="p3"> <label
								for="p3">3</label> <input type="radio" name="star-input"
								value="4" id="p4"> <label for="p4">4</label> <input
								type="radio" name="star-input" value="5" id="p5"> <label
								for="p5">5</label>
						</span> <output for="star-input">
								<b id="r_grade">0</b>점
							</output>
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
								<td><textarea name="r_content" id="content" placeholder="리뷰를 입력해주세요 :)"
										style="width: 100%; height: 80px"></textarea></td>
								<td>
									<div class="btnSet" style="text-align: right;">
										<a class="btn" href="javascript:goReview();">저장 </a>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					
					<script>
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
				</div>
				<div id="reviewArea"></div>
			</div>
		</div>
			<aside class="mypage_ad">
		<div class="mypage_ad_name">
			<p>최근본상품</p>
		</div>
		<div class="img_area">
			<img src="/bsp/img/${vo.b_imgmain }" width="70px" height="100px">
		</div>
		<div style="text-align: center;">책이름</div>
	</aside>
	</div>
	<%@ include file="/WEB-INF/view/include/footer.jsp"%>

	</div>
	</div>
	
	</div>

	</div>
</body>