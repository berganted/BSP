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
    <script src="/bsp//js/main.js"></script>
    <link rel="stylesheet" href="/bsp/css/base.css">
    <link rel="stylesheet" href="/bsp/css/reset.css">
   
    <jsp:include page="../include/header.jsp"></jsp:include>
</head>
<body>
    
    <div class="wrap">
       <jsp:include page="../include/side2.jsp"></jsp:include>
    <div class="mem_content">
        <div class="mypage3_1"><h2>나의 적립금</h2></div>
        <table class="point_table">
            <tr>           
                <th>적립일</th> 
                <th>내용</th> 
                <th>지급</th>
                <th>사용</th>          
            </tr>
            <c:if test="${empty plist }">
                            <tr>
                                <td class="first" colspan="5">보유한 포인트가 없습니다.</td>
                            </tr>
                        </c:if>                        
		<c:forEach var="vo" items="${plist}">
            <tr>    
                <td>${vo.p_regdate }</td>       
                <td>${vo.p_content }</td>
                <td>${vo.p_usage}</td>
                <td>${vo.p_used }</td>
            </tr>   
       </c:forEach>
            
    </table>
    <div class="point_sum"> 
    <table class="point_total">
        <tr>    
            <td><h2>사용가능한 적립금</h2></td>                  
            <td ><h2>${vo.m_point}</h2></td>
        </tr>   
    </table>
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