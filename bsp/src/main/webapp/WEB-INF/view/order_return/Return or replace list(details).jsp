<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>반품/교환 상세</title>
    <link rel='stylesheet' href='css/yesol.css'/> <!-- 예솔 css -->
    <link rel='stylesheet' href='css/base.css'/> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="js/main.js"></script><!--여기에 헤더 div에 넣을수있는 스크립트있음-->
</head>
<body>
    <header id="header"></header>
   <div class="wrap">

    <div class="mem_leftmenu_1" id="side"></div>

    <div class="mem_content">
        <h1>교환/반품 내역조회</h1>
       <article id="article">
           <table id="return_list_detil_tb">
            <p></p>
               <tr>
                   <td>접수일</td>
                   <td>구분</td>
                   <td>반품시한</td>
                   <td>원주문번호</td>
                   <td>상품명/수량</td>
                   <td>회송방법</td>
                   <td>환불방법</td>
                   <td>처리상태</td>
                   <td>조회/변경/취소</td>
               </tr>
               <tr>
                   <td>2012-05-18</td>
                   <td>반품*환불(or 교환)</td>
                   <td>2021-06-01</td>
                   <td>000-A11</td>
                   <td>인터넷 수능</td>
                   <td>알라딘 지정택배사</td>
                   <td>현금</td>
                   <td>환불완료</td>
                   <td><a href="Return or replace list(details).html"><input  class="button_s" type="button" value="상세조회"></a></td>
               </tr>
           </table>

           <h4>처리 예상일</h4>
           <table id="return_list_detil_tb">
            <tr>
                <td>접수 일</td>
                <td>반품 시한</td>
                <td>방문 예상일</td>
                <td>회수 완료일</td>
                <td>환불 완료일</td>
            </tr>
            <tr>
                <td>2012-05-18</td>
                <td>2012-06-01</td>
                <td>2012-05-22</td>
                <td>2012-05-23</td>
                <td>2012-07-26</td>
            </tr>
           </table>

           <h4>상품정보</h4>
           <table id="return_list_detil_tb">
            <tr>
                <td>상품명</td>
                <td>구입 가격</td>
                <td>반품 완료 수량</td>
                <td>신청 수량</td>
            </tr>
            <tr>
                <td>ebs 인터넷 수능 사탐 n제 한국근현대사 480제</td>
                <td>6,300원</td>
                <td>1</td>
                <td>1</td>
            </tr>
           </table>

           <h4>환불정보</h4>
           <table id="return_list_detil_tb">
            <tr>
                <td>원결제 방법</td>
                <td colspan="3">온라인 송금</td>
            </tr>
            <tr>
                <td>환불 요청정보</td>
                <td>현금 신한/110-4235-66998/전나나</td>
                <td>환불 완료 정보</td>
                <td>현금</td>
            </tr>
            <tr>
                <td>반품 신청액</td>
                <td>6,300원</td>
                <td>실 반품액</td>
                <td> </td>
            </tr>
            <tr>
                <td>반송비 차감액</td>
                <td>2,000원</td>
                <td>환불 예정액</td>
                <td>4,300원 </td>
            </tr>
           </table>
           <h4>회송 정보</h4>
           <table id="return_list_detil_tb">
            <tr>
                <td>회송 방법</td>
                <td>알라딘지정택배사</td>
                <td>방문예상일</td>
                <td>2012-05-22</td>
            </tr>
            <tr>
                <td>고객명</td>
                <td>전나나</td>
                <td>주소</td>
                <td> 제주특별자치도 제주시 특별자치도, 오라로 41 KR </td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td>031-123-7777</td>
                <td>휴대번호</td>
                <td>010-789-4561 </td>
            </tr>
           </table>
       </article>
       <input class="button_m" type="button" value="반품 내역 목록" onclick="location.href='Return or replace list.html';">
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
</body>
</html>