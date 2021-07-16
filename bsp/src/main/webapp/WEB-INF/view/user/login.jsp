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
$(function(){
		var cookie_user_id = getLogin();
		if(cookie_user_id != "") {
			$("#m_Id").val(cookie_user_id);
			$("#reg1").attr("checked", true);
		};
	// 아이디 저장 체크시
		$("#reg1").on("click", function(){
				var _this = this;
				var isRemember;
			if($(_this).is(":checked")) {
				isRemember = confirm("이 PC에 로그인 정보를 저장하시겠습니까? PC방등의 공공장소에서는 개인정보가 유출될 수 있으니 주의해주십시오.");
				if(!isRemember) $(_this).attr("checked", false);
		}
	});
	// 로그인 버튼 클릭시
		$("#btn_login").on("click", function(){
			
			if($("#reg1").is(":checked")){ // 저장 체크시
				saveLogin($("#id").val());
			}else{ // 체크 해제시는 공백
				saveLogin("");
				}
			});
		});
	/**
	* saveLogin
	* 로그인 정보 저장
	* @param id
	*/
	function saveLogin(id) {
		if(id != "") {
	// userid 쿠키에 id 값을 7일간 저장
			setSave("userid", id, 7);
		}else{
	// userid 쿠키 삭제
			setSave("userid", id, -1);
		}
	}
	/**
	* setSave
	* Cookie에 user_id를 저장
	* @param name
	* @param value
	* @param expiredays
	*/
	function setSave(name, value, expiredays) {
		var today = new Date();
		today.setDate( today.getDate() + expiredays );
		document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + today.toGMTString() + ";"
	}
	/**
	* getLogin
	* 쿠키값을 가져온다.
	* @returns {String}
	*/
	function getLogin() {
	// userid 쿠키에서 id 값을 가져온다.
		var cook = document.cookie + ";";
		var idx = cook.indexOf("userid", 0);
		var val = "";
		if(idx != -1) {
			cook = cook.substring(idx, cook.length);
			begin = cook.indexOf("=", 0) + 1;
			end = cook.indexOf(";", begin);
			val = unescape(cook.substring(begin, end));
		}
	return val;
	}
</script>
<body>
    <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="wrap">
       
        <div class="mem_content">      
            <div class="head">
                <h1> 로그인 </h1>
            </div>        
            <div class="log_form">                                    
                <form action="login.do" method="POST" onsubmit="return loginCheck();">    
                    <div style="height: 24px;"></div>
                    <div class="log_input">
                        <span class="log_label">아이디</span> 
                        <span class="log_content"><input type="text" name="m_id" id="m_id" class="log_input_span"></span>
                    </div>
                    <div class="log_input">
                        <span class="log_label">비밀번호</span> 
                        <span class="log_content"><input type="password" name="m_pwd" id="m_pwd" class="log_input_span"></span>
                    <li><label><input type="checkbox" name="reg1" id="reg1" > 아이디저장</label></lia>
                    </div>
                    <div class="log_input">
                        <input type="submit" class="btn" value="로그인" style="width: 279px">
                    </div>
                     <div class="log_input">
                        <a href="findidpwd.do" class="btn" >아이디/비밀번호 찾기</a>
                        <a href="reg.do" class="btn" >회원가입</a>            
                    </div>
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>