<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
      <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>반품 신청서</title>
    <link rel='stylesheet' href='/bsp/css/yesol.css'/> <!-- 예솔 css -->
    <link rel="stylesheet" href="/bsp/css/base.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="/bsp/js/main.js"></script><!--여기에 헤더 div에 넣을수있는 스크립트있음-->
    <script src="/bsp/js/yesol.js"></script><!-- 예솔 스크립트 -->
    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>  <!--주소 script -->
    <script type="text/javascript" src="//cdn.poesis.kr/post/popup.min.js" charset="UTF-8"></script>
<script>
function openZipSearchRT() {
    new daum.Postcode({
       oncomplete: function (data) {
          $('[name=rd_zipcode]').val(data.zonecode); // 우편번호 (5자리)
           $('[name=rd_addr1]').val(data.address);
           $('[name=rd_addr2]').val(data.buildingName);
           }
       }).open();
}
</script>
</head>
<body >
	<jsp:include page="../include/header.jsp"></jsp:include>
    <div class="wrap">
    <jsp:include page="../include/side2.jsp"></jsp:include>
     <div class="mem_content" style="text-align: center;">
     <h1>반품 신청서</h1>
        <form action="insert.do" method="POST">
            <div id="article">
            <h4>반품 구분</h4>
               
                       <div class="retrn_radio">
                            <input type="radio" name="returning_category" id="returning_category"  value="return" checked>반품
                       </div>
                       <div class="pwrap">
                            <p>
                            * 반품 : 상품이 마음에 들지 않거나 잘못 구입한 경우
                              다른 상품으로의 교환은 불가합니다.<br> [반품] 후 새로 주문*결제 해주십시오.<br>
                            * 기타 문의 : 이 외에는 게시판>>반품/교환>>반품 혹은 교환을 이용해 주십시오.<br>
                           </p>
                        </div><br>
                
                <hr>
                <div class="hwrap"><h4>반품예정상품</h4></div>
                <table id="retrn_product" class="retrn_tb"  style="width: 80%"> <!-- 주소랑 같은 기능 -->
                        <tr>
                            <td>주문번호</td>
                            <td>출고번호</td>
                            <td>주문상품</td>
                            <td>수령인</td>
                            <td>주문일</td>
                            <td>조회</td>
                       	</tr>
                         	<c:forEach var="vo" items="${returnList}">
          			    <tr>
                			<td><input type="text" name="pb_no" value="${vo.pb_no}" style="border:0 solid black; text-align: center; font: 16px"></td>
                			<td><input type="text" name="io_no" value="${vo.io_no}" style="border:0 solid black; text-align: center; font: 16px"></td>
               			    <td><input type="text" name="b_title" value="${vo.b_title}" style="border:0 solid black; text-align: center; font: 16px"></td>
               			    <td><input type="text" name="pb_resname" value="${vo.pb_resname }" style="border:0 solid black; text-align: center; font: 16px"></td>
                			<td><input type="text" name="pb_orderdate" value="${vo.pb_orderdate}" style="border:0 solid black; text-align: center; font: 16px"></td>
                			<td><a href="Order list(details).html"><input class="button_s" type="button" value="상세조회"></a>
                			 	<input type="hidden" name="b_no" value="${vo.b_no}" >
            			 		<input type="hidden" name="io_amount" value="${vo.io_amount}" >
            			 		<input type="hidden" name="ps_no" value="${vo.ps_no}" >
            			 		<input type="hidden" name="m_no" value="${vo.m_no}" >
                			</td>
            			 	
            			 </tr>
                		</c:forEach>
                		 
                </table><br>
              			<p>			
                    * 반품 조치가 필요한 상품과 수량을 체크해주십시오.<br>
                 </p>
                </div>
                <hr>
                 <div class="hwrap"><h4>사유선택</h4></div>
                    <table id="retrn_reason" class="retrn_tb">
                        <tr>
                         	<td class="retrn_reason_option_tb" style="border: none;" >
                            	<input type="radio" name="returning_reason_no" id="returning_reason_no" value="1" onclick="showTextarea(this.value,'etc_view');"> 단순변심 
                            	<input type="radio" name="returning_reason_no" id="returning_reason_no" value="2" onclick="showTextarea(this.value,'etc_view');"> 상품불량 
                            	<input type="radio" name="returning_reason_no" id="returning_reason_no" value="3" onclick="showTextarea(this.value,'etc_view');"> 기타
                        	 </td>
                        </tr>
                        <tr>
                        	 <td id="etc_view" style="display:none; border: none;">
                           	 <textarea id="reason_etc_view"  name="return_reason_detail"  rows="5" cols="50">사유를 입력해주세요!</textarea><br>
                       	 	</td>
                       	 </tr>
                        
                    </table>
                      <div class="pwrap">
                        <p>
                        * 단순변심 : 구입상품이 마음에 들지 않을 경우나 잘못 구입한 경우<br>
                        * 이 외의 사유인 경우에는 게시판>>반품/교환>>반품 코너로 신고해주십시오.<br>
                        </p>
                        </div><br>
               <hr>
                 	<div class="hwrap"><h4>회송방법 선택</h4></div>
                    <table id="retrn_delivery" class="retrn_tb">
                    <tr>
                    <td style="border: none;">
                        <input type="radio" name="rd_option" id="rd_option" value="cj">지정택배사<br>
                        <input type="radio" name="rd_option" id="rd_option" value="discretion ">고객임의발송<br>
                     </td>
                    </tr>
                    </table>
                    <div class="pwrap">
                        <p>
                        * 알라딘지정택배사 : 반송비는 2,000원이며, 상품도착 후 환불시 차감됩니다.<br>
                        (반품신청 접수->2-3일내 방문 회수->3-4일내 환불 예상)<br>
                    
                        * 고객임의발송 : 원하는 택배사 편으로 요금 선불 후 발송<br>
                        (단, 수취인부담 도착 시 반송비 전액 차감 후 환불)<br>
                        </p>
                        </div><br>
                <hr>
                	<div class="hwrap"><h4>회송정보 입력</h4></div>
                        <table id="retrn_info" class="retrn_tb" >
                            <tr>
                                <td id="retrn_info_tag">이름</td>
                                <td id="retrn_info_val"><input type="text" name="rd_name" style="width:173px;" ></td>
                            </tr>
                    
                            <tr class="adddiv" >
                                <td id="retrn_info_tag"><label>우편번호</label></td>
                                <td id="retrn_info_val">
                                    <input type="text"  name="rd_zipcode" maxlength="5" style="width:173px; " > 
                                    <button class="button_s" type="button" onclick="openZipSearchRT()">검색</button>
                                    </td>
                                
                            </tr>
                                <tr class="adddiv">                           
                                    <td id="retrn_info_tag"><label>도로명주소</label></td>
                                    <td id="retrn_info_val"><input type="text" name="rd_addr1" style="width:250px; " /></td>
                            </tr>
                            <tr class="adddiv">
                                    <td id="retrn_info_tag"><label>상세주소</label></td>
                                    <td id="retrn_info_val"><input type="text" name="rd_addr2" style="width:250px; "/></td>
                            </tr>
                            <tr>
                                    <td id="retrn_info_tag">* 휴대폰번호</td>
                                    <td id="retrn_info_val"><input type="number" value="79791450" name="rd_tel" ></td>
                            </tr>
                            
                            <tr>
                                    <td id="retrn_info_tag">회송당부메세지<br> [선택]</td>
                                    <td id="retrn_info_val_msg"><textarea cols="50" rows="10" name="rd_req"> </textarea> <td>
                            </tr>                         
                    </table>
                    <div class="pwrap"><p>
                        * 부재시 반품 또는 맞교환 상품을 맡길 장소나 방문 택배기사님께 남길 말씀을 적어주세요.<br>
                        * 부재시 위탁 장소는 '문 앞', '계단 앞' 등 분실 위험이 있는 장소는 피해주세요.
                         (분실시 고객 귀책)<br>
                    </p></div><br>
                    
                <hr>
                
	                <div class="hwrap"><h4>환불정보 입력</h4></div>
	                    <table id="retrn_account" class="retrn_tb">
	                        <tr>
	                            <td style="text-align: center;"> 
	                            <input type="radio" name="refund_info" value="현금">현금
	                            <input type="radio" name="refund_info" value="카드">신용카드 또는 기타결제 승인취소<br>
	                            <div class="pwrap"><p>
	                            * 주문 환불은 결제한 수단과 동일한 수단으로 환불을 원칙으로 합니다.<br>
	                            * 결제한 수단으로 환불이 불가한 일부 상황에서는 예치금 및 환전캐시등의 결제 타입에 상응하는 부가결제 수단으로 환불합니다.<br>
	                            * 취소로 빈번한 환불, 또는 주문대비 환불액이 큰 경우 내부 방침상, 최종구매액 재결제 요청 후 승인취소로 환불됩니다.<br>
	                            * 신용카드 거래의 경우 취소 후 카드사 반영에 3-4일 소요될 수 있습니다.<br>
	                            </p></div>
	                        </tr>
	                    </table><br>
                <hr>
                    <div class="retrn_submit" style="padding: 20px">
                        <input class="button_m" type="submit" value="완료" >
                        <input class="button_m" type="reset" value="취소" >
                </div>
                 </form>
            </div>
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
 <jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>