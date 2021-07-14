<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>구매</title>
    <link rel='stylesheet' href='css/yesol.css'/> <!-- 예솔 css -->
    <link rel="stylesheet" href="css/base.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>  <!--주소 script -->
    <script src="js/main.js"></script><!--여기에 헤더 div에 넣을수있는 스크립트있음-->
    <script src="js/yesol.js"></script>  <!-- 예솔 js -->
    <!-- ↓빼면 안되용 ㅠㅠ -->
    <script> 
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
    </script>
   
</head>

<body>
    <header id="header"> </header>
   <div class="wrap">
        <div class="mem_leftmenu_1" id="side"> </div>

        <div class="mem_content">
            <form action="Buy success.html" method="POST">
                <h1>주/문/과/정</h1>
                <div id="article">
           
                    <table id="buy_tb" class="buy_info">
                     <h4>주문 상품 정보</h4>
                        <tr>
                            <td>이미지</td>
                            <td>상품명</td>
                            <td id="price">가격</td>
                            <td id="stock">재고</td>
                            <td id="bseq_ea">수량</td>
                            <td id="del">삭제</td>
                        </tr>
                        <tr>
                            <td><input type="image" name="bookimage"></td>
                            <td>미드나잇 라이브러리</td>
                            <td id="price">14,220원/790원</td>
                            <td class="bseq_ea">500</td>  <!--  출력할 필요는 없음 -->
                            <td id="ant">
                             <button  class="button_s" type="button" onclick="fnCalCount('m', this);">-</button>
                             <input   type="text" name="pop_out" value="1" readonly="readonly" style="width: 50px; text-align: center;">
                             <button class="button_s"type ="button" onclick="fnCalCount('p',this);">+</button>  
                             </td>
                            <td id="del"><input class="button_s" type="button" value="X" onclick="deleteRow(this);"></td>
                        </tr>
                        <tr>
                            <td><input type="image" name="bookimage"></td>
                            <td>집으로 돌아가는 길</td>
                            <td id="price">15,300원/8500원</td>
                            <td class="bseq_ea">5</td>  <!--  출력할 필요는 없음 -->
                            <td id="ant">
                             <button class="button_s" type="button" onclick="fnCalCount('m', this);">-</button>
                             <input  type="text" name="pop_out" value="1" readonly="readonly" style="width: 50px; text-align: center;">
                             <button  class="button_s" type ="button" onclick="fnCalCount('p',this);">+</button> 
                             </td>
                            <td id="del"><input class="button_s" type="button" value="X" onclick="deleteRow(this);"></td>
                        </tr>
                        <tr>
                            <td><input type="image" name="bookimage"></td>
                            <td>북쪽으로 가는길 - 노르웨이의 빛을 담다</td>
                            <td id="price">17,100원/950원</td>
                            <td class="bseq_ea">13</td>  <!--  출력할 필요는 없음 -->
                            <td id="ant">
                             <button class="button_s" type="button" onclick="fnCalCount('m', this);">-</button> 
                             <input type="text" name="pop_out" value="1"readonly="readonly" style="width: 50px; text-align: center;">
                             <button class="button_s" type ="button" onclick="fnCalCount('p',this);">+</button>
                             </td>
                            <td id="del"><input class="button_s" type="button" value="X" onclick="deleteRow(this);"></td>
                        </tr>
                    </table>
                    <h4>배송 방법 선택</h4>
                    <table id="buy_tb" >
                        <tr>
                            <td>배송방법</td>
                            <td >
                               <input type="radio" name="delivery" value="cj">택배 <br>
                               <input type="radio" name="delivery" value="post">우체국 택배 <br>
                               <input type="radio" name="delivery" value="conv">편의점 방문 픽업 <br>
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
                             <input type="radio" name="dvryOpt" value="3">배송주소록에서 선택
                             <input type="radio" name="dvryOpt" value="4">새주소 입력
                         </td>
                     </tr>
                     <tr>
                        <td>* 주문인</td>
                        <td>
                            <input type="text" name="name" value="전나나 " checked><br>
                            휴대폰 번호: 010-**34-5648
                        </td>
                     </tr>
                     <tr>
                        <td>* 받으시는 분</td>
                        <td>
                            <input type="text" name="name" value="전나나 " checked ><br>
                        </td>
                     </tr>
                     <tr>
                        <td>* 주소</td>
                        <td>
                             <input type="text"  name="add_1" maxlength="5" style="width:173px; " > 
                             <button class="button_s" type="button" onclick="openZipSearch()">검색</button>&nbsp;우편번호<br>
                             <input type="text" name="add_2" style="width:250px; " />기본주소<br>
                             <input type="text" name="add_3" style="width:250px; "/>상세주소
                        </td>
                     </tr>
                     <tr>
                        <td>* 휴대전화번호</td>
                        <td>
                            <input type="text" name="phone numbers1" style="width: 100px;" > -
                            <input type="text" name="phone numbers2" style="width: 100px;" > -
                            <input type="text" name="phone numbers3" style="width: 100px;"> 
                           
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
                    <table  id="buy_now" style="text-align: center;">
                        <h4>적립금 사용</h4>
                           <tr>
                               <td>적립금</td>
                               <td>보유액: 20,000원 ▷ 
                                   <input type="text" name="savedmoney" >
                                   <input class="button_s" type="button" name="전액" value="전액"> 
                               </td>
                           </tr>
                         
                       </table>
            
                       <h4>결제 내역 확인</h4>
                       <table id="buy_tb" style="text-align: center;">
                        <tr >
                            <td colspan="2">
                                <span>주문 상품 금액 정보</span>
                                <span>총 3권(장), 46,620원</span>
                        </tr>
                        <tr>
                            <td>
                                <span>상품 주문 총액</span>
                                <span>46,620원</span><br>
                                <span>결제 총액</span>
                                <span>0원</span><br>
                            </td>
                            <td>
                                <span>적립금</span>
                                <span>3000원</span><br>
                                <span>배송료</span>
                                <span>0원</span><br>
                            </td>
                        </tr>
                        <tr >
                            <td colspan="2">
                                <span>남은 결제 금액</span>
                                <span> 46,620원</span>
                            </td>
                        </tr>
                        
                       </table>
                       <h4>결제 수단 선택</h4>
                       <table id="buy_tb" style="text-align: center;">
                           <tr>
                               <td>  
                                <input type="radio" name="paymentOption" value="accountN">무통장입금
                                <input type="radio" name="paymentOption"value="creditcard">실시간 계좌이체 
                                <input type="radio" name="paymentOption"value="accountY">신용카드 
                                  
                            </td>
                           </tr>
                       </table>
                       <h4>소득 공제 신청</h4>
                       <table id="buy_tb" style="text-align: center;">
                           <tr>
                               <td>  
                                <input type="radio" name="tax" value="Y"> 소득공제 신청
                                <input type="radio" name="tax" value="N">소득공제 신청안함 <br>
                                주문 접수 후 소득공제 신청 여부는 변경할 수 없으니 지금 신청해주세요.<br>
                                현금성 포인트 사용액 중 소득공제 대상은 현금영수증 발급 과정에서 자동으로 국세청에 반영됩니다.
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
        <aside id="quick"></aside>

    </div>
    
    <div id="footer"></div>
</body>
</html>