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
<script src="/bsp/js/main2.js"></script>

<link rel="stylesheet" href="/bsp/css/base.css">
<link rel="stylesheet" href="/bsp/css/style.css">
<link rel="stylesheet" href="/bsp/css/reset.css">
<script type="text/javascript">
$(function(){
	$('#qwer > select').change(function(){
	    var msg2 = $(this).val();
	    $('#emailv2').val(msg2);
	    if(msg2 ==""){
	        $('#emailv2').show();
	    }else{
	        $('#emailv2').hide();
	    }
	 })
});

function searchId() {
	$.ajax({
		url:'searchId.do',
		method:'post',
		data:{
			m_name:$("#m_name").val(),
			m_email:$("#m_email").val(),
			m_email_d:$('#emailv').val()
		},
		success:function(res){
			if (res.trim()==''){
				$("#msg").text('아이디가 존재하지 않습니다.')
			}else{
				$("#msg").text('아이디는 "'+res.trim()+'"입니다.')
			}
		return false;
		}
	});
	
}
</script>

<body>
    <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="wrap">
        
        <div class="mem_content2">
            <div class="find_iddiv">
                <div style="text-align: center;"><input type="radio" name="howtofind_id" class="radio_id" checked> 아이디찾기</div>
                <div class="find_id">
                    <div class="find_name1">
                    <span class="find_labale">이름</span> <span class="find_content"><input name="m_name" id="m_name" type="text"></span>               
                    </div>
                    <div class="find_name">
                        <span class="find_labale">이메일</span>
                                <span class="up_spancon_t"><input type="text" name="m_email" id="m_email"  style="width: 20%;">@<input type="text" name="m_email_d" id="emailv"  value="naver.com" style="width: 20%;">   
                                <select style="width: 30%;">
                                <option value="naver.com">naver.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="daum.net">daum.net</option>                      
                                <option value="">직접입력</option>                      
                            </select></span>                  
                    <li id='msg'></li>
                    </div>
                    <div class="find_next">
                        <button class="btn" onclick="searchId();">찾기</button>
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
                    <div class="find_name">
                         <span class="up_spanlable_2">이메일</span>
                            <span class="up_spancon_t" id="qwer"><input type="text" name="m_email" id="email2"  style="width: 20%;">@<input type="text" name="m_email_d" id="emailv2"  value="naver.com" style="width: 20%;">   
                                <select style="width: 30%;">
                                <option value="naver.com">naver.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="daum.net">daum.net</option>                      
                                <option value="">직접입력</option>                      
                            </select></span>     
                    </div>
                    <div class="find_next">
                        <button class="btn"  onclick="location.href=''">찾기</button>
                        </div>
                    </div>
            <form action=""></form>
                
                </div>
        </div>
    </div>
    
    
    <jsp:include page="../include/footer.jsp"></jsp:include>
    
</body>

</html>