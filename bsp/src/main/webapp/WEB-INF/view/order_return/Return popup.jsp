<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="js/yesol.js"></script>
    <link rel='stylesheet' href='css/yesol.css'/> <!-- 예솔 css -->
</head>

<body id="retrn_popup_form">
    <h1>나의 주문 내역</h1>
    <article id="article">
        <form action="" method="POST" name="return_info_submittb">
        <div style="text-align: right; padding-right: 10px; padding-bottom: 10px;">
            <span>
                <select name="정렬" style="height: 25px; border: 2px solid #221f1f ;">
                    <option value="b_title" selected> 상품 명</option>
                    <option value="order_no">주문번호</option>
                    <option value="order_date">주문일</option>
                    <option value="order_price">가격</option>
                </select>
                <input  type="text" name="검색" style="height: 20px; border: 2px solid #221f1f ;">
                <input class="button_m" type="submit" value="검색">
            </span>
        </div>
        <table id="retrn_popup">
            <tr>
                <td><input type="checkbox" name="select_all"></td>
                <td>주문일</td>
                <td>주문번호</td>
                <td>수령인</td>
                <td>주문상품</td>
                <td>조회</td>
                
            </tr>

            <tr>
                <td><input type="checkbox" name="select"></td>
                <td>2021-06-30</td>
                <td><a href="">001-A</a></td>
                <td>전나나</td>
                <td>자바의 정석&nbsp;총 33권</td>
                <td><a href="Order list(details).html"><input class="button_s" type="button" value="상세조회"></a></td>
              
            </tr>
        </table>
        <p></p>
        <div class="retrn_submit" style="text-align: center;">
            <input type="text" id=cInput value="나중에 없어질 창"><br>
            <input class="button_m" type="submit" value="선택" onclick="window.close(), info_submit()" >
            <input class="button_m" type="button" value="취소" onclick="window.close()"  >
       </div>
    </form>
    </article>
</body>

</html>