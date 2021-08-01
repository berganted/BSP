<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="//cdn.poesis.kr/post/popup.min.js"
	charset="UTF-8"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script src="/bsp/js/yesol.js"></script>
<script src="/bsp/js/main2.js"></script>
<link rel="stylesheet" href="/bsp/css/base.css">
<link rel="stylesheet" href="/bsp/css/index.css">


</head>
<script>
    $(function(){
    	 var idRegExp = /^[a-zA-z0-9]{4,12}$/; //아이디 유효성 검사
        $('.up_spancon_t > select').change(function(){
        var msg = $(this).val();
        $('#emailv').val(msg);
        if(msg ==""){
            $('#emailv').show();
        }else{
            $('#emailv').hide();
        }
        })  
        $('#duplBtn').click(function(){
		if($('#id').val().trim()==""){
			alert('아이디를입력해주세요');
			$('#id').focus();
		}else{
			$.ajax({
				url: '<%=request.getContextPath()%>/user/isDuplicateld.do' ,
				data: {id:$('#id').val() } ,
				success :  function(res){
						if(res.trim()== 'true' ){
							alert('중복된 아이디 입니다. 다른 아이디를 입력해 주세요');
							$('#id').val('');
							$('#id').focus();
						}else {
							alert('사용 가능한 아이디입니다.');
						}
				}
			});
		}
	});
        $('#duplBtn2').click(function(){
    		console.log(1)
    		if ($('#email').val().trim() == '') {
    			alert('이메일을 입력해주세요');
    			$('#email').focus();
    		}else{
    			$.ajax({
    				url: '<%=request.getContextPath()%>/user/isDuplicateemail.do',
    					data : {
    						m_email : $('#email').val(),
    						m_email_d:$('#emailv').val()
    					},
    					async : false,
    					success : function(res) {
    						if (res.trim() == 'true') {
    							alert('중복된 이메일 입니다. 다른 이메일을 입력해 주세요');
    							$('#email').val('');
    							$('#email').focus();
    							con = false;
    							} else {
    								alert('사용 가능한 이메일입니다.');
    							}
    						}
    					});
    		} 
    	});
    })
    function goSave() {
	var con = true;
		if($('#id').val().trim()==''){
			alert('아이디를입력해주세요');
			$('#id').focus();
			return;
		}else{
		$.ajax({
			url: '<%=request.getContextPath()%>/user/isDuplicateld.do',
				data : {
					id : $('#id').val()
				},
				async : false,
				success : function(res) {
					if (res.trim() == 'true') {
						alert('중복된 아이디 입니다. 다른 아이디를 입력해 주세요');
						$('#id').val('');
						$('#id').focus();
						con = false;
					} else {
						if (!/^[a-zA-z0-9]{4,12}$/.test($('#id').val())) {
							alert("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
							$('#id').val("");
							$('#id').focus();
							con = false;
						} else {
							
						}
					}
				}
			});
		}
		if(!$('input:radio[id=agree1]').is(':checked')){
			alert('동의해주세요')
			return false;
		}
		if(!$('input:radio[id=agree2]').is(':checked')){
			alert('동의해라')
			return false;
		}

		if (!/^[a-zA-z0-9]{4,12}$/.test($('#pwd').val())) {
			alert("비밀번호는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
			$('#pwd').val("");
			$('#pwd').focus();
			return false;
		}
		if ($('#pwd').val().trim() == '') {
			alert('비밀번호를입력해주세요');
			$('#pwd').focus();
			return false;
		}
		if ($('#pwd_cheak').val().trim() == '') {
			alert('비밀번호확인을입력해주세요');
			$('#pwd_cheak').focus();
			return false;
		}
		if ($('#pwd').val() != $('#pwd_cheak').val()) {
			alert('비밀번호가 일치하지 않습니다.');
			$('#pwd_cheak').focus();
			return false;
		}
		if ($('#M_Name').val().trim() == '') {
			alert('이름을 입력해주세요');
			$('#M_Name').focus();
			return false;
		}
		if ($('#email').val().trim() == '') {
			alert('이메일을 입력해주세요');
			$('#email').focus();
			return false;
		}else{
			$.ajax({
				url: '<%=request.getContextPath()%>/user/isDuplicateemail.do',
					data : {
						m_email : $('#email').val(),
						m_email_d:$('#emailv').val()
					},
					async : false,
					success : function(res) {
						if (res.trim() == 'true') {
							alert('중복된 이메일 입니다. 다른 이메일을 입력해 주세요');
							$('#email').val('');
							$('#email').focus();
							con = false;
							} else {
								alert('사용 가능한 이메일입니다.');
					}
				}
			});
		} 
		if (con == false)
			return;
		if (confirm('가입하시겠습니까??')) {
			//$("#frm").submit();
			$.ajax({
				url : 'insert.do',
				data : $('#frm').serialize(),
				success : function(res) {
					if (res.trim() == 'true') {
						alert('정상적으로 가입되었습니다.');
						location.href = '/bsp/index.do';
					} else {
						alert('등록실패');
					}
				}
			})
		}
	}
</script>

<body>
	<jsp:include page="../include/header.jsp"></jsp:include>

	<div class="wrap">

		<div class="mem_content2">
			<div class="head">
				<h1>회원가입</h1>
			</div>
			<div style="text-align: center;">
				<div class="reg_info">약관 내용 블라블라블라</div>
				<input type="radio" id="agree1" name="agree" value="1">동의 
				<input type="radio" name="agree" value="2" checked>비동의
			</div>
			<div style="text-align: center;">
				<div class="reg_info">약관 내용 블라블라블라</div>
				<input type="radio" id="agree2" name="agree2" value="1">동의 
				<input type="radio" name="agree2" value="2" checked>비동의
			</div>
			<div>
				<form id="frm" action="insert.do" method="POST">
					<div class="con2">
						<div>
							<span class="up_spanlable">아이디</span> <span class="up_spancon"
								style="width: 240px"><input type="text" name="m_id"
								id="id"></span> <span><a href="javascript:;"
								id="duplBtn" class="btn bgGray"
								style="height: 32px; line-height: 32px">중복확인</a></span>
						</div>
						<div>
							<span class="up_spanlable">비밀번호</span> <span class="up_spancon"><input
								type="password" name="m_pwd" id="pwd"></span>
						</div>
						<div>
							<span class="up_spanlable">비밀번호 확인</span> <span
								class="up_spancon"><input type="password"
								name="pwd_cheak" id="pwd_cheak"></span>
						</div>
						<div>
							<span class="up_spanlable">이름</span> <span class="up_spancon"><input
								type="text" name="m_name" id="M_Name"></span>
						</div>
						<div>
							<span class="up_spanlable_2">전화번호</span> <span
								class="up_spancon_1"><input type="number" name="m_tel"></span>
						</div>
						<div>
							<span class="up_spanlable_2">이메일</span> <span
								class="up_spancon_t"><input type="text" name="m_email"
								id="email" style="width: 20%;">@<input type="text"
								name="m_email_d" id="emailv" value="naver.com"
								style="width: 20%;"> <select style="width: 30%;">
									<option value="naver.com">naver.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="daum.net">daum.net</option>
									<option value="">직접입력</option>
							</select><a href="javascript:;"
								id="duplBtn2" class="btn bgGray"
								style="height: 32px; line-height: 32px">중복확인</a></span>
						</div>

						<div class="adddiv">
							<span class="up_spanlable_ad"><label>우편번호</label></span> <span
								class="up_spancon_ad"><input type="text" size="4"
								name="m_zipcode" class="postcodify_postcode6_1" /> </span> <span
								class="addbtn"><button class="btn bgGray button_s"
									type="button" onclick="openZipSearch();">검색</button></span>
						</div>
						<div class="adddiv">
							<span class="up_spanlable_ad"><label>도로명주소</label></span> <span
								class="up_spancon"><input type="text" name="m_addr1"
								class="postcodify_address" /></span>
						</div>
						<div class="adddiv">
							<span class="up_spanlable_ad"><label>상세주소</label></span> <span
								class="up_spancon"><input type="text" name="m_addr2"
								class="postcodify_details" /></span>
						</div>
						<div>
							<span class="up_spanlable">성별</span> <span
								class="up_spancon_gender"> <input type="radio"
								name="gender" class="gender" value="m" checked>남 <input
								type="radio" name="gender" class="gender" value="w">여
							</span>
						</div>

						<div class="reg_submit">
							<input class="btn reg_submitbtn" type="button" value=" 가입"
								onclick="goSave();"><br>
							<br> <input class="btn reg_submitbtn" type="reset"
								value="취소">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>