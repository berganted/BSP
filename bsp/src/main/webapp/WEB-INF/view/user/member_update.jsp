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

  
<body>
    <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="wrap">
        <jsp:include page="../include/side2.jsp"></jsp:include>
        
        <div class="mem_content">
            <div class="head">
                <h1>정보수정</h1>
            </div>          
            <div class="con1">
                <form action="update.do" method="POST">
                <input type="hidden" name="m_no" value="${userInfo.m_no }">
                    <div class="con2">
                        <div>
                            <span class="up_spanlable">아이디</span>
                            
                            <span class="up_spancon"><input type="text" value="${userInfo.m_id }" readonly></span>
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
                    <div class="con2">
                        <input class="up_submitbtn" type="submit" value=" 수정" ><br><br>
                        <input class="up_submitbtn" type="reset" value="취소" >
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