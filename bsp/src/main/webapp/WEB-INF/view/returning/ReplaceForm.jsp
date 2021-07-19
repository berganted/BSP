<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>교환/추가배송 신청서</title>
    <link rel='stylesheet' href='/bsp/css/yesol.css'/> <!-- 예솔 css -->
    <link rel="stylesheet" href="/bsp/css/base.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="/bsp/js/main.js"></script><!--여기에 헤더 div에 넣을수있는 스크립트있음-->
    <script src="/bsp/js/yesol.js"></script><!-- 예솔 스크립트 -->
    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>  <!--주소 script -->
    <script type="text/javascript" src="//cdn.poesis.kr/post/popup.min.js" charset="UTF-8"></script>

</head>
<body >
<jsp:include page="../include/header.jsp"></jsp:include>
    <header id="header"></header>
    <div class="wrap">
 	<jsp:include page="../include/side2.jsp"></jsp:include>
     <div class="mem_content" style="text-align: center;">
        <form action="" method="POST">
            <h1>교환/추가배송 신청서</h1>
            <div id="article">
                <table id="retrn_type" class="retrn_tb" >
                    <h4>교환/추가배송 구분</h4>
                       <div class="retrn_radio">
                            <input type="radio" name="divide" value="replace" id="replace_divide" onchange="setDisplay()" checked>교환
                             <input type="radio" name="divide" value="add" id="add_divide" onchange="setDisplay()">추가배송 <br>
                
                       </div>
                       <div class="pwrap">
                            <p>
                            * 교환 : 상품불량(파본*훼손) / 주문과 다른 상품 수령<br>
                            * (누락)추가배송 : 주문상품/부록/증정품 등 누락<br>
                            *  기타 문의 : 이 외에는 고객센터>>반품/교환>>반품 혹은 교환을 이용해 주십시오.<br>
                           </p>
                        </div>
                </table>
                <hr>
                <table id="retrn_product" class="retrn_tb" > <!-- 주소랑 같은 기능 -->
                    <div class="hwrap"><h4>반품예정상품 <input class="button_s" type="button" value="주문번호 찾기" onclick="showPopup()"></h4></div>
                    
                        <tr>
                            <td>주문일</td>
                            <td>주문번호</td>
                            <td>수령인</td>
                            <td>주문상품</td>
                            <td>조회</td>
                        </tr>
                        <tr>
                            <td>2021-06-30</td>
                            <td><a href="">001-A</a></td>
                            <td>전나나</td>
                            <td>자바의 정석&nbsp;총 33권</td>
                            <td><a href="Order list(details).html"><input class="button_s" type="button" value="상세조회" style="height: 20px; font-size:10px"></a></td>
                        </tr>
                </table>
                <div class="pwrap"><p><input type="text" id="pInput" value="팝업창 값 받아오는것"><br>
                    * 추가배송/회수 등 조치가 필요한 상품과 수량을 체크해주십시오.<br>
                 </p>
                </div>   
                <hr>
                    <table id="retrn_reason" class="retrn_tb">
                        <div class="hwrap"><h4>사유선택</h4></div>
                       <tr>
                    <div class="replace_reason_option_tb" >
                        <input type="radio" name="reason" value="4" > 파본
                        <input type="radio" name="reason" value="5" > 상태불량 
                        <input type="radio" name="reason" value="6" > 오배송
                    </div>
                    <div class="addDeli_reason_option_tb" style="display:none">
                        <input type="radio" name="reason" value="7" > 상품 누락
                        <input type="radio" name="reason" value="8" > 부록 누락
                    </div><br>
                    <div id="etc_view">
                        <textarea id="reason_etc_view"  name="reason"  rows="5" cols="50">※ 상품의 상세 내용, 상품명 등을 자세히 적어주세요. (50자 미만)</textarea><br>
                    </div>
                </tr>
                <p>
                    ※ 이 외의 사유인 경우에는 게시판>>반품/교환>>교환 코너로 신고해주십시오.
                </p>
                    </table>
                <hr>
                    <table id="retrn_delivery" class="retrn_tb" >
                        <div class="hwrap"><h4>회송방법 선택</h4></div>
                    <tr>
                        <input type="radio" name="returning" value="cj">지정택배사<br>
                        <input type="radio" name="returning" value="discretion ">고객임의발송<br>
                        <div class="pwrap"><p>
                        * 알라딘지정택배사 : 반송비는 2,000원이며, 상품도착 후 환불시 차감됩니다.<br>
                        (반품신청 접수->2-3일내 방문 회수->3-4일내 환불 예상)<br>
                    
                        * 고객임의발송 : 원하는 택배사 편으로 요금 선불 후 발송<br>
                        (단, 수취인부담 도착 시 반송비 전액 차감 후 환불)<br>
                        </p></div>
                    </tr>
                    </table>
                <hr>
                        <table id="retrn_info" class="retrn_tb" >
                            <div class="hwrap"><h4>회송정보 입력</h4></div>
            
                            <tr>
                                <td id="retrn_info_tag">이름</td>
                                <td id="retrn_info_val"><input type="text" name="retrn_name" style="width:173px;" ></td>
                            </tr>
                    
                            <tr class="adddiv" >
                                <td id="retrn_info_tag">우편번호</label></td>
                                <td id="retrn_info_val";>
                                    <input type="text"  name="add_1" maxlength="5" style="width:173px; " > 
                                    <button class="button_s" type="button" onclick="openZipSearch()">검색</button>
                                    </td>
                                
                            </tr>
                                <tr class="adddiv">                           
                                    <td id="retrn_info_tag"><label>도로명주소</label></td>
                                    <td id="retrn_info_val"><input type="text" name="add_2" style="width:250px; " /></td>
                            </tr>
                            <tr class="adddiv">
                                    <td id="retrn_info_tag"><label>상세주소</label></td>
                                    <td id="retrn_info_val"><input type="text" name="add_3" style="width:250px; "/></td>
                            </tr>
                            <tr>
                                    <td id="retrn_info_tag">* 휴대폰번호</td>
                                    <td id="retrn_info_val"><input type="number" value="79791450" name="tel" ></td>
                            </tr>
                            <tr>
                                    <td id="retrn_info_tag">비상연락처</td>
                                    <td id="retrn_info_val"><input type="number" value="79791450" name="subtel" ></td>
                            </tr>
                            
                            <tr>
                                    <td id="retrn_info_tag">회송당부메세지<br> [선택]</td>
                                    <td id="retrn_info_val_msg"><textarea cols="50" rows="10" name="message"> </textarea> <td>
                            </tr>                         
                    </table>
                    <div class="pwrap"><p>
                        * 부재시 반품 또는 맞교환 상품을 맡길 장소나 방문 택배기사님께 남길 말씀을 적어주세요.<br>
                        * 부재시 위탁 장소는 '문 앞', '계단 앞' 등 분실 위험이 있는 장소는 피해주세요.
                         (분실시 고객 귀책)<br>
                    </p></div>
                <hr>
                    <div class="retrn_submit" style="padding: 20px">
                        <input class="button_m" type="submit" value="완료" >
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
 <footer  id="footer"></footer>
  <jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>