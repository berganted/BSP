<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="//cdn.poesis.kr/post/popup.min.js" charset="UTF-8"></script>
    <script src="/bsp/js/main.js"></script>
    <link rel="stylesheet" href="/bsp/css/style.css">
    <link rel="stylesheet" href="/bsp/css/base.css">
    <link rel="stylesheet" href="/bsp/css/reset.css">
</head>
<script type="text/javascript">
function goSave() {
	var con = true;
		
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
		}

		
	}
</script>
  
<body>
    <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="wrap">
        <jsp:include page="../include/side2.jsp"></jsp:include>
        
        <div class="mem_content">
            <div class="head">
                <h1>정보수정</h1>
            </div>          
            <div class="con1">
                <form action="update.do" method="POST" onsubmit="return goSave();">
                <input type="hidden" name="m_no" value="${userInfo.m_no }">
                    <div class="con2">
                        <div>
                            <span class="up_spanlable">아이디</span>
                            
                            <span class="up_spancon"><input type="text" id="m_id" value="${userInfo.m_id }" readonly></span>
                        </div>
                         <div>
                            <span class="up_spanlable">새 비밀번호</span>
                            <span class="up_spancon"><input type="password" id="pwd" name="m_pwd"></span>
                        </div>
                        <div>
                            <span class="up_spanlable">비밀번호 확인</span>
                            <span class="up_spancon"><input type="password" id="pwd_cheak"></span>
                        </div>
                        
                        <div>
                            <span class="up_spanlable_2">이메일</span>
                            <span class="up_spancon_t"><input type="text" id="email" name="m_email" value="${userInfo.m_email }" style="width: 20%;">@
                            <input type="text" id="emailv" name="m_email_d" value="naver.com" style="width: 20%;">   
                                <select style="width: 30%;">
                                <option value="naver.com">naver.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="daum.net">daum.net</option>                      
                                <option value="">직접입력</option>                      
                            </select></span>                  
                        </div>
                        <div>
                            <span class="up_spanlable_2">전화번호</span>
                            <span class="up_spancon_1"><input type="number" name="m_tel" value="${userInfo.m_tel }"></span>
                        </div>
                        <div class="adddiv">
							<span class="up_spanlable_ad"><label>우편번호</label></span> <span
								class="up_spancon_ad"><input type="text" size="4" value="${userInfo.m_zipcode }"
								name="m_zipcode" class="postcodify_postcode6_1" /> </span> <span
								class="addbtn"><button class="btn bgGray button_s"
									type="button" onclick="openZipSearch();">검색</button></span>
						</div>
						<div class="adddiv">
							<span class="up_spanlable_ad"><label>도로명주소</label></span> <span
								class="up_spancon"><input type="text" name="m_addr1" value="${userInfo.m_addr1 }"
								class="postcodify_address" /></span>
						</div>
						<div class="adddiv">
							<span class="up_spanlable_ad"><label>상세주소</label></span> <span
								class="up_spancon"><input type="text" name="m_addr2" value="${userInfo.m_addr2 }"
								class="postcodify_details" /></span>
						</div>
                        <div>
                            <span class="up_spanlable">성별</span>                    
                            <span class="up_spancon_gender">
                            <c:if test="${userInfo.gender == 'm'}">
                                남성
                            </c:if>
                            <c:if test="${userInfo.gender == 'w'}">
                                여성
                            </c:if>
                            </span>
                        </div>
                    </div>
                    <div style="margin-left: 35%; margin-top: 30px">
                        <input class="btn up_submitbtn " type="submit" value=" 수정" onclick="" ><br><br>
                        <input class="btn up_submitbtn " type="reset" value="취소" >
                    </div>
                </form>
            </div>
                 
        </div>
	</div>
<jsp:include page="../include/footer.jsp"></jsp:include>
    
<script type="text/javascript">
    $("#search_button").postcodifyPopUp();
</script>

</body>
</html>