<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/bsp/js/main.js"></script>
<link rel="stylesheet" href="/bsp/css/style.css">
<link rel="stylesheet" href="/bsp/css/reset.css">
<link rel="stylesheet" href="/bsp/css/base.css">
<style>
        
</style>

<body>
    <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="wrap">
       
        <div class="mem_content2">      
            <div class="head">
                <h1> 로그인 </h1>
            </div>        
            <div class="log_form">                                    
                <form action="" method="POST">    
                    <div style="height: 24px;"></div>
                    <div class="log_input">
                        <span class="log_label">아이디</span> 
                        <span class="log_content"><input type="text"  class="log_input_span"></span>
                    </div>
                    <div class="log_input">
                        <span class="log_label">비밀번호</span> 
                        <span class="log_content"><input type="password" class="log_input_span"></span>
                    </div>
                    <div class="log_input">
                        <button class="log_btn">로그인</button>
                    </div>
                    <div style="text-align: right;">
                        <a href="find idpwd.html" class="find">아이디/비밀번호 찾기</a>
                        <a href="reg.html" class="find">회원가입</a>            
                    </div>
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>