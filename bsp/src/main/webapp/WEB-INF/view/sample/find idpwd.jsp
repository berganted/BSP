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
<script src="js/main2.js"></script>

<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/reset.css">


<body>
    <div id="header"></div>
    <div class="wrap">
        
        <div class="mem_content2">
            <div class="find_iddiv">
                <div style="text-align: center;"><input type="radio" name="howtofind_id" class="radio_id" checked> 아이디찾기</div>
                <div class="find_id">
                    
                    <div class="find_name1">
                    <span class="find_labale">이름</span> <span class="find_content"><input type="text"></span>               
                    </div>
                    <div class="find_name">
                        <span class="find_labale">이메일 주소</span> <span class="find_content"><input type="text"> &nbsp; <button  onclick="location.href=''">인증번호받기</button></span> 
                        <br><span class="find_labale">인증번호 </span> <span class="find_content"><input type="text"></span>              
                    </div>
                    <div class="find_next">
                        <button class=".find_nextbtn" onclick="location.href=''">다음</button>
                        </div>
                    </div>
                
            </div>
            <div class="find_pwddiv">
                <div style="text-align: center; "><input type="radio" name="howtofind_id" class="radio_pwd"> 비밀번호 찾기</div>
                <div class="find_pwd" >
                    <div style="text-align: right;">
                        <span class="find_info">01. 아이디 입력>02. 본인 확인>03. 비밀번호 재설정</span>
                    </div>
                    <div class="find_name"> 
                        <span class="find_labale">아이디</span> <span class="find_content"><input type="text"></span>    
                    </div>
                    <div class="find_next">
                        <button class=".find_nextbtn"  onclick="location.href=''">다음</button>
                        </div>
                    </div>
                
                </div>
        </div>
    </div>
    
    
    
</body>
<div id="footer"></div>
</html>