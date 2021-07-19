<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>장바구니</title>
    <link rel='stylesheet' href='/bsp/css/yesol.css'/> <!-- 예솔 css -->
    <link rel="stylesheet" href="/bsp/css/base.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="/bsp/js/main.js"></script><!--여기에 헤더 div에 넣을수있는 스크립트있음-->
    <script src="/bsp/js/yesol.js"></script> <!-- 예솔 스크립트 -->
    <!-- ↓빼면 안되용 ㅠㅠ -->
    <script>
    //**삭제 버튼 클릭시 행 삭제
    function deleteRow(ths){
    var ths = $(ths);
    var trCnt = $(".cart_con tr").length;
 
    if(trCnt>0){        //구매폼과 달리 전체 삭제 가능!
    ths.parents("tr").remove();
    }else{
        return false;
        }
    }
    </script>

</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>
    <header id="header"> </header>
   <div class="wrap">
	<jsp:include page="../include/side2.jsp"></jsp:include>
    <div class="mem_content">
        <h1>장바구니</h1>
       
            <div id="article">
             <div id="cart_option" style="text-align: right; padding: 0px 20px 5px;">
                <span id="cart">
                    <input class="button_m" type="button" name="buy_select" value="선택주문">
                    <input class="button_m" type="button" name="buy_del" value="선택삭제" onclick="Delete()">
                    <select name="정렬" style="height: 30px; border: 2px solid #221f1f ;">
                        <option value="recent" selected>최근 담은 순</option>
                        <option value="h_prc">고가 순</option>
                        <option value="l_prc">저가 순</option>
                        <option value="publish">출간일 순</option>
                    </select>
                    </span>
            </div>
            
            <table id="cart_tb" class="cart_con" style="border: 1px solid rgb(206, 205, 205);">
                <tr>
                    <td><input type="checkbox" value="select" id="all_select" onclick="selctAll();" name="checkAll"></td>
                    <td colspan="2">상품</td> 
                    <td>가격</td>
                    <td>재고</td> 
                    <td>수량</td>
                    <td>삭제</td>
            </tr>
            <tr data-tr_value="1">
                <td><input type="checkbox" value="select"  name="checkOne"></td>
                <td><input type="image" name="bookimage"></td> 
                <td><a href=""> 미드나잇 라이브러리<br> *내일수령가능</a></td> 
                <td>정가:15,800원<br>
                    마일리지:790원(5%)
                </td>
                <td class="bseq_ea">500</td>  <!--  출력할 필요는 없음 -->
                <td id="ant">
                 <button class="button_s" type="button" onclick="fnCalCount('m', this);">-</button>
                 <input type="text" name="pop_out" value="1" readonly="readonly" style="width: 50px; text-align: center;">
                 <button class="button_s" type ="button" onclick="fnCalCount('p',this);">+</button> 
                 </td>
                <td><input class="button_s" type="button" name="del" value="삭제" onclick="deleteRow(this);"><br>
                   
            </tr>
            <tr data-tr_value="2">
                <td><input type="checkbox" value="select"  name="checkOne"></td>
                <td><input type="image" name="bookimage"></td> 
                <td><a href=""> 완전한 행복<br> #북파우치 증정</a></td> 
                <td>정가:15,800원<br>
                    마일리지:790원(5%)
                </td>
                <td class="bseq_ea">14</td>  <!--  출력할 필요는 없음 -->
                <td id="ant">
                    <button class="button_s" type="button" onclick="fnCalCount('m', this);">-</button>
                    <input type="text" name="pop_out" value="1" readonly="readonly" style="width: 50px; text-align: center;">
                    <button  class="button_s" type ="button" onclick="fnCalCount('p',this);">+</button>
                 </td>
                <td><input class="button_s" type="button" name="del" value="삭제" onclick="deleteRow(this);"><br>
                    
            </tr>
            <tr data-tr_value="3">
                <td><input type="checkbox" value="select"  name="checkOne"></td>
                <td><input type="image" name="bookimage"></td> 
                <td><a href=""> 소크라테스 익스프레스<br> *접시 증정</a></td> 
                <td>정가:18,000원<br>
                    마일리지:900원(5%)
                </td>
                <td class="bseq_ea">3</td>  <!--  출력할 필요는 없음 -->
                <td id="ant">
                    <button class="button_s" type="button" onclick="fnCalCount('m', this);">-</button>
                    <input type="text" name="pop_out" value="1" readonly="readonly" style="width: 50px; text-align: center;">
                    <button class="button_s" type ="button" onclick="fnCalCount('p',this);">+</button>
                 </td>
                <td><input class="button_s" type="button" name="del" value="삭제" onclick="deleteRow(this);"><br>
                    
            </tr>
            <tr data-tr_value="4">
                <td><input type="checkbox" value="select"  name="checkOne"></td>
                <td><input type="image" name="bookimage"></td> 
                <td><a href=""> 부의 시나리오<br> *마우스패드 증정</a></td> 
                <td>정가:18,000원<br>
                    마일리지:900원(5%)
                </td>
                <td class="bseq_ea">27</td>  <!--  출력할 필요는 없음 -->
                <td id="ant">
                    <button class="button_s" type="button" onclick="fnCalCount('m', this);">-</button>
                    <input type="text" name="pop_out" value="1" readonly="readonly" style="width: 50px; text-align: center;">
                    <button class="button_s" type ="button" onclick="fnCalCount('p',this);">+</button>
                 </td>
                <td><input class="button_s" type="button" name="del" value="삭제" onclick="deleteRow(this);"><br>
                    
            </tr>
        </table>
       
        <table id="cart_tb" class="cart_s">
            <tr>
                <td>총 상품 가격&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>46,620원&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>멤버십 마일리지&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>0원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <br>
            <tr>
                <td>배송비&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>0원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>총 주문 상품수&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>3종 3권&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <hr>
            <tr>
                <td>총 결제 예상 금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>46,620원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>총 적립 예상 마일리지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>2,590점&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
        </table>
           <hr>
            <div id="cart_select" style="text-align: right; padding: 10px 25px;">
                <span>
                    <input class="button_m" class="button" type="button" name="buy_select" value="선택한 상품 주문하기">
                    <input class="button_m" class="button" type="button" name="buy_all" value="전체 상품 주문하기">
                </span>
            </div>
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
<footer id="footer"></footer>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>
