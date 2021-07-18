<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문상세</title>
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
        <h1>주문 상세 조회</h1>
        <article id="article">
            <h4>기본/배송정보</h4>
            <table id="order_list_tb">
                <tr>
                    <td>주문번호</td>
                    <td>001-A</td>
                    <td>배송방법</td>
                    <td>택배</td>
                </tr>
                <tr>
                    <td>주문접수일</td>
                    <td>2020년 06월 14일 일 12시 40분 </td>
                    <td>결제일(입금 확인일)</td>
                    <td>2020년 06월 14일 일 12시 40분 </td>
                </tr>
                <tr>
                    <td>상태</td>
                    <td colspan="3">출고완료/집하(2020-06-14)<br>
                    운송장 : 35998978565, cj대한통운</td>
                </tr>
                <tr>
                    <td>주문하신분</td>
                    <td>전나나</td>
                    <td>받으시는분</td>
                    <td>전나나</td>
                </tr>
                <tr>
                    <td>배송주소</td>
                    <td colspan="3">
                        경기도 고양시 장항동 771-1 KR
                    </td>
                </tr>
                <tr>
                    <td>전화번호</td>
                    <td></td>
                    <td>휴대번호</td>
                    <td>010-1234-5678</td>
                </tr>
                <tr>
                    <td>배송메세지</td>
                    <td colspan="3">
                       배송 전 연락 부탁드립니다
                    </td>
                </tr>
                    <tr>
                        <td>거래명세서</td>
                        <td colspan="3">
                            받지않음
                        </td>
                    </tr>
                
            </table>
        </article>

        <article id="article">
            <h4>주문 상품 정보</h4>
            <table id="order_list_tb">
                <tr> 
                    <td>이미지</td>
                    <td>상품명</td>
                    <td>주문수량</td>
                    <td>가격</td>
                </tr>
                <tr>
                    <td><input type="image" name="b_image"></td>
                    <td>자바의 정석 
                        남궁성지음
                        <a href=""><input class="button_s" type="button" value="리뷰 쓰기"></a>
                    </td>
                    <td>1/1</td>
                    <td>가격: 31000원<br>
                        마일리지:1500원(5%)</td>
                </tr>
            </table>
        </article>

        <article id="article">
            <h4>결제 정보</h4>
            <table id="order_list_tb">
                <tr>
                    <td>총 주문 금액</td>
                    <td>31,000원(상품가격 31,000원+배송비 0원)</td>
                </tr>
                <tr>
                    <td>적립금 결제</td>
                    <td>적립금 3000원</td>
                </tr>
                <tr>
                    <td>실 결제 금액</td>
                    <td>28,000원</td>
                </tr>
                <tr>
                    <td>결제방법</td>
                    <td>카드결제(신한)</td>
                </tr>
            </table>
        </article>
        <input class="button_m" type="button" value="주문 내역 목록" onclick="location.href='Order list.html';">
    </div>

    <aside id="quick"></aside>

    
</div> 
<footer id="footer"></footer>
</body>
</html>