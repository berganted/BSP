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
    <script src="js/main.js"></script>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/base.css">
</head>
<script>
    $(function(){
        

    })
</script>

<body>
    <div id="header"></div> 
    
    <div class="wrap">
        <div class="mem_leftmenu_1" id="side">
            
        </div>
        <div class="mem_content">
            <div class="remove_head">
                <h1>회원탈퇴</h1>
                
            </div>
            <div class="remove_con">
                <p>회원탈퇴 설명</p>
            </div>
            <div class="remove_content">
             
                    <div>
                        <span class="remove_title"><label>아이디</label></span>
                        <span class="remove_contents"><input type="text" value="로그인된 아이디" readonly></span>
                    </div>
                    <div>
                        <span class="remove_title"><label>이름</label></span>
                        <span class="remove_contents"><input type="text" value="로그인된 회원이름" readonly></span>
                    </div>
                    <div>
                        <span class="remove_title"><label>비밀번호</label></span>
                        <span class="remove_contents"><input type="password" ></span>
                    </div>
                    <div style="text-align: center;" >
                        <span class="remove_title_1"><label>탈퇴사유</label></span><br>
                        <span class="del_whyspan"><select class="del_why">
                            <option value="why1" >책이 부족하다 </option>
                            <option value="why2">사이트가 맘에 안든다</option>
                            <option value="why3">친절하지 못하다</option>
                            <option value="why4">그냥</option>
                            <option value="mass">직접입력</option>
                        </select>
                            <textarea class="hidden"></textarea></span>
                    </div>
                
                <div class="remove_btn">
                    <input type="button" value="탈퇴">
                    <input type="reset"> 
                    <input type="button" value="돌아가기">  
                </div>
            </div>
        </div>
    </div>
    <div id="footer"></div>
     
</body>
</html>