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
<link rel="stylesheet" href="/bsp/css/base.css">
<link rel="stylesheet" href="/bsp/css/index.css">
<script type="text/javascript">
function loginCheck() {
	if($('#m_id').val().trim() == '' ){
		alert('아이디를 입력해주세요');
		$('#m_id').focus();
		return false;
	};
	if($('#m_pwd').val().trim() == ''){
		alert('비밀번호를 입력해주세요');
		$('#m_pwd').focus();
		return false;
	}
};

</script>
<body>
    <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="wrap">
       
        <div class="mem_content">      
            <div class="head">
                <h1>회원 비밀번호 확인 </h1>
            </div>        
            <div class="log_form">                                    
                <form action=infoidcheak.do method="POST" onsubmit="return loginCheck();">
                	<input type="hidden" name="m_no"value="${userInfo.m_no }"> 
                    <div style="height: 24px;"></div>
                    <div class="log_input">
                        <span class="log_label">아이디</span> 
                        <span class="log_content"><input type="text" name="m_id" id="m_id" class="log_input_span" readonly="readonly" value="${userInfo.m_id }"></span>
                    </div>
                    <div class="log_input">
                        <span class="log_label">비밀번호</span> 
                        <span class="log_content"><input type="password" name="m_pwd" id="m_pwd" class="log_input_span"></span>
                    </div>
                    <div class="log_input">
                        <input type="submit" id="btn_login" class="btn" value="확인하기" style="width: 279px">
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>