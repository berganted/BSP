<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="/bsp/js/yesol.js"></script>
    <link rel='stylesheet' href='/bsp/css/yesol.css'/> <!-- 예솔 css -->
</head>
<script>
function checkpop() {
	$("input[type=checkbox]").change(function () {
		var arTest = [];
		$("input[name=checkOne]:checked").each(function(){
			arTest.push($(this).val());
		});
		$("#cInput").val(arTest);
	});
} 
</script>
<body id="retrn_popup_form">
    <h1 style="text-align: center">나의 주문 내역</h1>
    <article id="article">
        <form action="return.do" method="post" name="return_info_submittb">
        <div style="text-align: right; padding-right: 10px; padding-bottom: 10px;">
            <span>
                <select name="정렬" style="height: 25px; border: 2px solid #221f1f ;">
                    <option value="b_title" selected>상품명</option>
                    <option value="order_no">주문번호</option>
                    <option value="order_date">주문일</option>
                    <option value="order_price">가격</option>
                </select>
                <input  type="text" name="검색" style="height: 20px; border: 2px solid #221f1f ;">
                <input class="button_m" type="button" value="검색" id="btnr" >
            </span>
        </div>
        <table id="retrn_popup">
            <tr>
                 <td><input type="checkbox" value="select" name="checkAll" ></td>
                <td>주문번호</td>
                <td>상품명</td>
                <td>주문자</td>
                <td>주문날짜</td>
                <td>조회</td>
                
            </tr>

            <c:forEach var="list" items="${popupList}">  
            <tr>
               <td><input type="checkbox" value="${list.io_no}"  name="checkOne" id='checkOne' onclick="checkpop();" ></td>
                <td>${list.pb_no }</td>
                <td><a href="">${list.b_title}</a></td>
                <td>${list.pb_resname }</td>
                <td>${list.pb_orderdate }</td>
                <td><a href="Order list(details).html"><input class="button_s" type="button" value="상세조회"></a></td>
            </tr>
                </c:forEach>
        </table>
        <p></p>
        <div class="retrn_submit" style="text-align: center;">
        <div id="result"></div>
            <input type="text" id=cInput><br>
            <input class="button_m" type="submit" value="선택" onclick="window.close(), info_submit()" >
            <input class="button_m" type="button" value="취소" onclick="window.close()"  >
       </div>
    </form>
    </article>
</body>

</html>