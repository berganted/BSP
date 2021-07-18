<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문내역</title>
    
    <link rel='stylesheet' href='css/base.css'/> <!-- 예솔 css -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="js/main.js"></script><!--여기에 헤더 div에 넣을수있는 스크립트있음-->
</head>
<body>
    <header id="header"> </header>
   <div class="wrap">

    <div class="mem_leftmenu_1" id="side"></div>

    <div class="mem_content">
        <h1>전체 주문 내역</h1>
        <article id="article">
                <div style="text-align: right; padding-right: 10px; padding-bottom: 10px;">
                    <span>
                        <select name="list" style="height: 30px; border: 2px solid #221f1f;" >
                            <option value="b_title" selected> 상품 명</option>
                            <option value="order_no">주문번호</option>
                            <option value="order_date">주문일</option>
                            <option value="order_price">가격</option>
                        </select>
                        <input type="text" name="검색" style="height: 30px; border: 2px solid #221f1f;">
                        <input class="button_m" type="submit" value="검색">
                    </span>
                </div>
            <table id="order_tb">
                <tr>
                    <td>주문일</td> 
                    <td>주문번호</td> 
                    <td>수령인</td>
                    <td>주문상품</td>
                    <td>조회</td>
                    <td colspan="3">배송</td>
                </tr>

                <tr>
                    <td>2021-06-30</td>
                    <td><a href="Order list(details).html">001-A</a></td>
                    <td>전나나</td>
                    <td>자바의 정석&nbsp;총 33권</td>
                    <td><a href="Order list(details).html"><input class="button_s" type="button" value="상세조회"></a></td>
                    <td><input class="button_s" type="button" value="배송추적"></td>
                </tr>
    
       
                <tr>
                    <td>2021-06-30</td>
                    <td><a href="">001-A</a></td>
                    <td>박도윤</td>
                    <td>만수야 사랑해&nbsp;총 1권</td>
                    <td><input class="button_s" type="button" value="상세조회"></td>
                    <td><input class="button_s" type="button" value="배송추적"></td>
                </tr>
            
                 <tr>
                    <td>2021-06-30</td>
                    <td><a href="">001-A</a></td>
                    <td>양은솔</td>
                    <td>양옹야오애옹&nbsp;총 5권</td>
                    <td><input class="button_s" type="button" value="상세조회"></td>
                    <td><input class="button_s" type="button" value="배송추적"></td>
                 </tr>
        </table>
        </article>
    </div>

    <aside id="quick"></aside>

    
</div> 
<div id="footer"></div>
</body>
</html>