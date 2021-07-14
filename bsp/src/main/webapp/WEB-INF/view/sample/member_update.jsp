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
    <script type="text/javascript" src="//cdn.poesis.kr/post/popup.min.js" charset="UTF-8"></script>
    <script src="/js/main.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/reset.css">
</head>

  
<body>
    <div id="header"></div> 
    <div class="wrap">
        <div class="mem_leftmenu_1" id="side"> </div>
        
        <div class="mem_content">
            <div class="head">
                <h1>정보수정</h1>
            </div>          
            <div class="con1">
                <form action="" method="POST">
                    <div class="con2">
                        <div>
                            <span class="up_spanlable">아이디</span>
                            
                            <span class="up_spancon"><input type="text" value="로그인된 아이디" readonly></span>
                        </div>
                        <div>
                            <span class="up_spanlable">기존비밀번호</span>
                            <span class="up_spancon"><input type="password"></span>
                        </div>
                        
                        <div>
                            <span class="up_spanlable_2">이메일</span>
                            <span class="up_spancon_t"><input type="email" id="email"  style="width: 20%;">@<input type="email" id="emailv"  value="naver.com" style="width: 20%;">   
                                <select style="width: 30%;">
                                <option value="naver.com">naver.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="daum.net">daum.net</option>                      
                                <option value="">직접입력</option>                      
                            </select></span>                  
                        </div>
                        <div>
                            <span class="up_spanlable_2">전화번호</span>
                            <span class="up_spancon_1"><input type="number" value="79791450"></span>
                        </div>
                        <div class="adddiv">
                            <span class="up_spanlable_ad">우편번호</label></span>
                            <span class="up_spancon_ad"><input type="text" size="4" class="postcodify_postcode6_1" /> -
                            <label></label><input type="text" size="4" class="postcodify_postcode6_2" /> </span>
                            <span class="addbtn"><button id="search_button">검색</button></span> 
                        </div>
                        <div class="adddiv">                           
                                <span class="up_spanlable_ad"><label>도로명주소</label></span>
                                <span class="up_spancon"><input type="text" class="postcodify_address" /></span>
                        </div>
                        <div class="adddiv">
                            <span class="up_spanlable_ad"><label>상세주소</label></span>
                            <span class="up_spancon"><input type="text" class="postcodify_details" /></span>
                        </div>
                        <div>
                            <span class="up_spanlable">성별</span>                    
                            <span class="up_spancon_gender">
                                <input type="radio" name="gender" class="gender"   checked>남
                                <input type="radio" name="gender" class="gender">여
                            </span>
                        </div>
                    </div>
                    <div class="con2">
                        <input class="up_submitbtn" type="submit" value=" 수정" ><br><br>
                        <input class="up_submitbtn" type="reset" value="취소" >
                    </div>
                </form>
            </div>
                 
        </div>
    </dvi>
</div>
<div id="footer"></div>
    
<script type="text/javascript">
    $("#search_button").postcodifyPopUp();
</script>

</body>
</html>