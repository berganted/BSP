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
    <script src="/js/main.js"></script>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/reset.css">
</head>


<body>
    
    <div id="header"></div> 
    <div class="wrap">
        <div class="mem_leftmenu_1" id="side"> </div>
        
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
        <div id="footer"></div>
    </div>    
            
    
        
        
        
            
</body>
</html>