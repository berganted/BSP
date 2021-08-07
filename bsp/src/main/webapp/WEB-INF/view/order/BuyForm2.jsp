<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>구매</title>
    <link rel='stylesheet' href='/bsp/css/yesol.css'/> <!-- 예솔 css -->
    <link rel="stylesheet" href="/bsp/css/base.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>  <!--주소 script -->
    <script src="/bsp/js/main.js"></script><!--여기에 헤더 div에 넣을수있는 스크립트있음-->
    <script src="/bsp/js/yesol.js"></script>  <!-- 예솔 js -->
    <!-- ↓빼면 안되용 ㅠㅠ -->
    <script> 
    $(function(){
    	$('input[name=dvryOpt]').change(function(){
    		console.log($(this).val())
        	if($(this).val()==1){
        		$('#pb_zipcode').val($('#uz').val());
        		$('#pb_addr1').val($('#ua').val());
        		$('#pb_addr2').val($('#ua2').val());
        		$('#pb_resname').val($('#urn').val());  
        		$('#pb_restel').val($('#utel').val());
        	}else if($(this).val()==2){
        		$('#pb_zipcode').val($('#lz').val());
        		$('#pb_addr1').val($('#la').val());
        		$('#pb_addr2').val($('#la2').val());
        		$('#pb_resname').val($('#lrn').val());  
        		$('#pb_restel').val($('#ltel').val());
        	}
        	else if($(this).val()==4){
        		$('#pb_zipcode').val('');
        		$('#pb_addr1').val('');
        		$('#pb_addr2').val('');
        		$('#pb_resname').val('');
        		$('#pb_restel').val('');
        		}
        	})
    	calc();
    	$('#savedmoney').change(function(){
    		console.log( $('#po').val() )
    		console.log($('#savedmoney').val())
    		if($('#savedmoney').val() > $('#po').val() ){
    			alert('보유포인트를 초과할수 없습니다.')
    			$('#savedmoney').val('0')
    			return false
    		}else if($('#savedmoney').val() < 100){
    			alert('100포인트 이상부터 사용할수있습니다.')
    			$('#savedmoney').val('0')
    			return false
    		}
    		calc();
    		var a = $('#total').text()-$('#savedmoney').val();
    		$('#total').text(a)
    		$('#total1').val(a)
    	})
    })
    function calc() {
    	var sum=0;
    	var psum=0;
    	$('.b_price').each(function(){
    		var idx = $(this).index('.b_price');
    		sum += parseInt(this.innerText)*Number($(".pop_out").eq(idx).val());
    		psum += Number($(".point").eq(idx).text());
    		console.log(psum)
    	});
    	$(".totalPrice").text(sum);
    	$("#total").text(sum);
    	$("#total1").val(sum);
    	$("#totPoint").val(psum);
    }
  
    function fnCalCount(type, ths){
        var $input = $(ths).parents("td").find(".pop_out"); //부모부분인 td의 자식 name pop_out [수량입력값]
        var tCount = Number($input.val()); //입력값 숫자타입으로 변환
    	calc();
        var tEqCount = Number($(ths).parents("tr").find("td.bseq_ea").html()); 
                        //입력된 수량보다 +/-가 초과되지 않도록

        if(type=='p'){
            if(tCount < tEqCount){
            	$input.val(Number(tCount)+1);
            	calc();//재고보다 작을경우 +1
            }
        }else{
             if(tCount >0){
            	 $input.val(Number(tCount)-1);    //0보다 클 경우 -1
            	 calc();
				}
            }
        }
    
   
    $(function(){
    	
    
    })
    //삭제 버튼 클릭시 행 삭제
    function deleteRow(ths){
        var ths = $(ths);
        var trCnt = $(".buy_info tr").length;
 
        if(trCnt>2){
        ths.parents("tr").remove();
        }else{
            alert('1개이상 선택해주세요!');
            return false;
        }
    }
    function pointall() {
		$('#savedmoney').val($('#po').val());
		calc();
		var a = $('#total').text()-$('#savedmoney').val();
		$('#total').text(a)
		$('#total1').val(a)
    }
    function openZipSearch() {
        new daum.Postcode({
             oncomplete: function (data) {
                $('[name=pb_zipcode]').val(data.zonecode); // 우편번호 (5자리)
                $('[name=pb_addr1]').val(data.address);
                $('[name=pb_addr2]').val(data.buildingName);
                }
            }).open();
        }
    </script>
   
</head>

<body>
<jsp:include page="../include/header.jsp"></jsp:include>
    <header id="header"> </header>
   <div class="wrap">
		<jsp:include page="../include/side2.jsp"></jsp:include>
        <div class="mem_content">
         <h1>주/문/과/정</h1>
            <form action="insert.do" method="POST" id=frm>
            <input type="hidden" name="m_no" value="${userInfo.m_no }">
                <div id="article">
                 <h4>주문 상품 정보</h4>
                    <table id="buy_tb" class="buy_info">
                        <tr>
                            <th>이미지</th>
                            <th>상품명</th>
                            <th id="price">가격</th>
                            <th id="stock">재고</th>
                            <th id="bseq_ea">수량</th>
                            <th id="del">삭제</th>
                        </tr>
                        <c:forEach var="list" items="${list }">
                        <tr>
                            <td style="text-align: center;"><input type="image" src="/bsp/img/${list.b_imgmain }" name="bookimage" style="width: 100px; height: 150px" ></td>

                            <td>${list.b_title } <input type="hidden" name="b_no" value="${list.b_no }"/>
                            					 <input type="hidden" name=cart_no value="${list.cart_no }"/></td>
                            <td id="price"><span class="b_price">${list.b_price }</span>원/<span class=point>${list.b_point }</span>원</td>
                           <td class="bseq_ea">${list.b_stock }</td>  <!--  출력할 필요는 없음 -->
                            <td id="ant">
                             <button  class="button_s" type="button" onclick="fnCalCount('m', this);">-</button>
                             <input   type="text" class="pop_out"name="io_amount" value="${list.cart_cnt }" readonly="readonly" style="width: 50px; text-align: center;">
                             <button class="button_s"type ="button" onclick="fnCalCount('p',this);">+</button>  
                             </td>
                            <td id="del"><input class="button_s" type="button" value="X" onclick="deleteRow(this);"></td>
                        </tr>
                        </c:forEach>
                        
                    </table>
                    <h4>배송 방법 선택</h4>
                    <table id="buy_tb" >
                        <tr>
                            <td>배송방법</td>
                            <td >
                               <input type="radio" name="pb_delivery" value="cj">택배 <br>
                               <input type="radio" name="pb_delivery" value="post">우체국 택배 <br>
                               <input type="radio" name="pb_delivery" value="conv">편의점 방문 픽업 <br>
                            </td>
                        </tr>
                    </table>
                    <h4>배송 정보 입력 (*필수 입력 항목)</h4>
                    <table id="buy_tb">
                     <tr>
                         <td>배송지 선택</td>
                         <td>
                             <input type="radio" name="dvryOpt" value="1" checked>주문고객 정보와 동일
                             <input type="radio" name="dvryOpt" value="2">최근 배송지 주소
                             <input type="radio" name="dvryOpt" value="4">새주소 입력
                         </td>
                     </tr>
                     <tr>
                        <td>* 주문인</td>
                        <td>
                            <input type="text" name="name" value="${userInfo.m_name } " checked><br>
                            휴대폰 번호: 010-**34-5648
                        </td>
                     </tr>
                     <tr>
                        <td>* 받으시는 분</td>
                        <td>
                             <input type="text" id="pb_resname" name="pb_resname" value="전나나 " checked ><br>
                        </td>
                     </tr>
                     <tr>
                        <td>* 주소</td>
                        <td>
                               <input type="text" id="pb_zipcode" name="pb_zipcode" maxlength="5" style="width:173px; " value="${userInfo.m_zipcode }" > 
                             <button class="button_s" type="button" onclick="openZipSearch()">검색</button>&nbsp;우편번호<br>
                             <input type="text" id="pb_addr1"name="pb_addr1" style="width:250px; " value="${userInfo.m_addr1 }"/>기본주소<br>
                             <input type="text" id="pb_addr2" name="pb_addr2" style="width:250px; "value="${userInfo.m_addr2 }"/>상세주소
                             <input type="hidden" id="uz" value="${userInfo.m_zipcode }" > 
                             <input type="hidden" id="ua" value="${userInfo.m_addr1 }"/>
                             <input type="hidden" id="ua2" value="${userInfo.m_addr2 }"/>
                             <input type="hidden" id="urn" value="${userInfo.m_name }"/>
                             <input type="hidden" id="utel" value="${userInfo.m_tel }"/>
                             <input type="hidden" id="lz" value="${ad.pb_zipcode }" > 
                             <input type="hidden" id="la" value="${ad.pb_addr1 }"/>  
                             <input type="hidden" id="la2" value="${ad.pb_addr2 }"/>
                             <input type="hidden" id="lrn" value="${ad.pb_resname }"/>
                             <input type="hidden" id="ltel" value="${ad.pb_restel }"/>
                        </td>
                     </tr>
                     <tr>
                        <td>* 휴대전화번호</td>
                        <td>
                            <input type="text" id="pb_restel" name="pb_restel" style="width: 310px;" value="${userInfo.m_tel }"> 
                           
                        </td>
                     </tr>
                     <tr>
                        <td>전화번호 </td>
                        <td>
                            <input type="text" name="phone numbers1" style="width: 100px;" > -
                            <input type="text" name="phone numbers2" style="width: 100px;"> -
                            <input type="text" name="phone numbers3" style="width: 100px;"> 
                           
                        </td>
                     </tr>
                    </table>

                </div>
                <hr>
                <div id="article"> 
                  <h4>적립금 사용</h4>
                    <table  id="buy_now" style="text-align: center;">
                           <tr>
                               <th>적립금</th>
                               <td>보유액:<input type="text" readonly="readonly" id="po" name="p_used" value="${userInfo.m_point }">  원 ▷
                                   <input type="text" id="savedmoney"name="p_used" value="0">
                                   <input class="button_s" type="button" name="전액" value="전액" onclick="pointall();"> 
                               </td>
                           </tr>
                       </table>
                       
                       <h4>결제 내역 확인</h4>
                       <table id="buy_tb" style="text-align: center;">
                        <tr >
                            <td colspan="2">
                                <span>주문 상품 금액 정보</span>
                                <span class="totalPrice"></span>원
                        </tr>
                        <tr>
                            <td>
                                <span>상품 주문 총액</span>
                                <span class="totalPrice"></span>원<br>
                                <span>결제 총액</span>
                                <span id="total"></span>원<br>
                            </td>
                            <td>
                                <span>적립금</span>
                                 <input type="text" id=totPoint name="p_usage" readonly="readonly" value=""/><br>
                                <span>배송료</span>
                                <span >0원</span><br>
                            </td>
                        </tr>
                        <tr >
                            <td colspan="2">
                                <span>남은 결제 금액</span>
                                <input type="text"  id="total1" name="pb_totalprice" value="" readonly="readonly">
                            </td>
                        </tr>
                        
                       </table>
                       <h4>결제 수단 선택</h4>
                       <table id="buy_tb" style="text-align: center;">
                           <tr>
                               <td>  
                                  <input type="radio" name="pb_payno" value="0">무통장입금
                                <input type="radio" name="pb_payno"value="1">실시간 계좌이체 
                                <input type="radio" name="pb_payno"value="2">신용카드 
                            </td>
                           </tr>
                       </table>
                       
                            <div class="buy_submit">
                                <input class="button_m" type="submit" value="결제" >
                                <input class="button_m" type="reset" value="취소" >
                            </div>
                </div>    
            </form>
        </div>
   <aside class="mypage_ad">
                <div class="mypage_ad_name"><p>최근본상품</p></div>
                <div class="img_area">
                    <img src="img/book.jpg" width="70px" height="100px">
                </div>
                <div style="text-align: center;">
                    책이름
                </div>
            </aside> 
    </div>
    
    <div id="footer"></div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>