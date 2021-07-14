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
    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
    <script src="/bsp/js/main.js"></script>
    <script src="/bsp/js/yesol.js"></script>
    <link rel="stylesheet" href="/bsp/css/base.css">
    <link rel="stylesheet" href="/bsp/css/reset.css">
 
    
</head>
<script>
    $(function(){
        $('.up_spancon_t > select').change(function(){
        var msg = $(this).val();
        $('#emailv').val(msg);
        if(msg ==""){
            $('#emailv').show();
        }else{
            $('#emailv').hide();
        }
        })   
    })
</script>
<body>
    <jsp:include page="../include/header.jsp"></jsp:include>

    <div class="wrap">
        
        <div class="mem_content2">
            <div class="head">
                <h1>회원가입</h1>
            </div>
            <div style="text-align: center;">
                <div class="reg_info">
                    약관 내용 블라블라블라
                </div>
                <input type="radio" name="agree">동의
                <input type="radio" name="agree" checked>비동의
            </div>
            <div style="text-align: center;">
                <div class="reg_info" >
                    약관 내용 블라블라블라
                </div>
                <input type="radio" name="agree2">동의
                <input type="radio" name="agree2" checked>비동의
            </div>
            <div>
                <form action="insert.do" method="POST">
                    <div class="con2">
                        <div>
                            <span class="up_spanlable">아이디</span>
                            
                            <span class="up_spancon"><input type="text" name="M_ID"></span>
                        </div>
                        <div>
                            <span class="up_spanlable">비밀번호</span>
                            <span class="up_spancon"><input type="password" name="M_PWD"></span>
                        </div>
                        <div>
                            <span class="up_spanlable">비밀번호 확인</span>
                            <span class="up_spancon"><input type="password"name="pwd_cheak"></span>
                        </div>
                        <div>
                            <span class="up_spanlable">이름</span>
                            
                            <span class="up_spancon"><input type="text" name="M_Name"></span>
                        </div>
                        <div>
                            <span class="up_spanlable_2">전화번호</span>
                            <span class="up_spancon_1"><input type="number" name="M_Tel"></span>
                        </div>
                        <div>
                            <span class="up_spanlable_2">이메일</span>
                            <span class="up_spancon_t"><input type="text" name="M_Email" id="email"  style="width: 20%;">@<input type="text" name="M_Email_d" id="emailv"  value="naver.com" style="width: 20%;">   
                                <select style="width: 30%;">
                                <option value="naver.com">naver.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="daum.net">daum.net</option>                      
                                <option value="">직접입력</option>                      
                            </select></span>                  
                        </div>
                        <div class="adddiv">
                            <span class="up_spanlable_ad">우편번호</label></span>
                            <span class="up_spancon_ad"><input type="text" size="4" name="add_1" class="postcodify_postcode6_1" /> </span>
                                <span class="addbtn"><button class="button_s" type="button" onclick="openZipSearch()">검색</button></span> 
                            </div>
                            <div class="adddiv">                           
                                <span class="up_spanlable_ad"><label>도로명주소</label></span>
                                <span class="up_spancon"><input type="text" name="add_2" class="postcodify_address" /></span>
                            </div>
                            <div class="adddiv">
                                <span class="up_spanlable_ad"><label>상세주소</label></span>
                                <span class="up_spancon"><input type="text"name="add_3" class="postcodify_details" /></span>
                            </div>
                            <div>
                                <span class="up_spanlable">성별</span>                    
                                <span class="up_spancon_gender">
                                    <input type="radio" name="gender" class="gender" value="m"   checked>남
                                    <input type="radio" name="gender" class="gender" value="w" >여
                                </span>
                            </div>                                     
                        
                        <div class="reg_submit">
                            <input class="reg_submitbtn" type="submit" value=" 가입" ><br><br>
                            <input class="reg_submitbtn" type="reset" value="취소" >
                        </div>
                    </form>
                </div>
                       
            </div>
        
    
    </div>    
</div>
    <jsp:include page="../include/footer.jsp"></jsp:include>

   
    
</body>
</html>