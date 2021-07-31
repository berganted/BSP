<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="/bsp/js/main.js"></script>
    <link rel="stylesheet" href="/bsp/css/base.css">
    <link rel="stylesheet" href="/bsp/css/reset.css">
</head>


<body>
    
    <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="wrap">
    <jsp:include page="../include/side2.jsp"></jsp:include>
        
        <div class="mem_content">
            <div class="mypage3_1"><h2>나의 주문 목록</h2></div>
                <div>
                    <table class="mypage_table">
                        <tr>                        
                            <th>주문일&nbsp;</th> 
                            <th>주문번호&nbsp;</th> 
                            <th>수령인&nbsp;</th>
                            <th>주문상품&nbsp;</th>
                            <th>조회&nbsp;</th>
                            <th colspan="2">비고</th>
                    </tr>
                    <tr>                    
                        <td>2021-06-30</td>
                        <td><a href="">001-A</a></td>
                        <td>전나나</td>
                        <td>자바의 정석</td>
                        <td><input type="button" value="상세조회"></td>
                        <td><input type="button" value="배송추적"></td>
                        <td><input type="button" value="증빙서류조회"></td>
                    </tr>            
                    <tr>                  
                        <td>2021-06-30</td>
                        <td><a href="">001-A</a></td>
                        <td>박도윤</td>
                        <td>만수야 사랑해</td>
                        <td><input type="button" value="상세조회"></td>
                        <td><input type="button" value="배송추적"></td>
                        <td><input type="button" value="증빙서류조회"></td>
                    </tr>                    
                    <tr>                       
                            <td>2021-06-30</td>
                            <td><a href="">001-A</a></td>
                            <td>양은솔</td>
                            <td>양옹야오애옹</td>
                            <td><input type="button" value="상세조회"></td>
                            <td><input type="button" value="배송추적"></td>
                            <td><input type="button" value="증빙서류조회"></td>
                    </tr>
                </table>
                </div>
            </div>
           <jsp:include page="../include/quick.jsp"></jsp:include>
        </div>
           <jsp:include page="../include/footer.jsp"></jsp:include>

      
            
    
        
        
        
            
</body>
</html>