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
    <script src="/bsp/js/main.js"></script>
	<link rel="stylesheet" href="/bsp/css/index.css">	
    <link rel="stylesheet" href="/bsp/css/base.css">
</head>
<script>
    function del() {
    	if (confirm ('탈퇴하시겠습니까?')) {
			$.ajax({
				url:"delete.do",
				data: {
					m_no : $("#m_no").val(),
					m_del : $('#m_del').val(),
					whydel : $('#whydel').val()
				},
				success : function(res) {
					if(res.trim() == 'true'){
						alert('탈퇴되었습니다.');
						location.href = '/bsp/index.do';
					} else{
						alert('비밀번호를 확인해주세요')
					}
				}
			})
	    }
	}
</script>

<body>
    <jsp:include page="../include/header.jsp"></jsp:include>
    
    <div class="wrap">
            
        <div class="mem_content">
            <div class="remove_head">
                <h1>회원탈퇴</h1>
                
            </div>
            <div class="remove_con">
                <p style="text-align: center; font-size: 20px">회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</p>

				<p>사용하고 계신 아이디("${userInfo.m_id }")는 탈퇴할 경우 재사용 및 복구가 불가능합니다.
					탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가하오니 신중하게 선택하시기 바랍니다.</p>
				<p>탈퇴 후에도 게시판형 서비스에 등록한 게시물은 그대로 남아 있습니다.
					게시글 및 댓글은 탈퇴 시 자동 삭제되지 않고 그대로 남아 있습니다.
					삭제를 원하는 게시글이 있다면 반드시 탈퇴 전 비공개 처리하거나 삭제하시기 바랍니다.
					탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, 게시글을 임의로 삭제해드릴 수 없습니다.
					</p>
            </div>
            <form action="" id="frm">
            <div class="remove_content">
             		<input type="hidden" id="m_no" name=m_no value="${userInfo.m_no }">
                    <div>
                        <span class="remove_title"><label>아이디</label></span>
                        <span class="remove_contents"><input type="text" value="${userInfo.m_id }" readonly></span>
                    </div>
                    <div>
                        <span class="remove_title"><label>이름</label></span>
                        <span class="remove_contents"><input type="text" value="${userInfo.m_name }" readonly></span>
                    </div>
                    <div>
                        <span class="remove_title"><label>비밀번호</label></span>
                        <span class="remove_contents"><input type="password" name="m_pwd" id="m_pwd"></span>
                    </div>
                    <div style="text-align: center;" >
                        <span class="remove_title_1"><label>탈퇴사유</label></span><br>
                        <span class="del_whyspan"><select class="del_why" id="m_del" name = "m_del" form="frm">
                            <option id="1" value="1" >책이 부족하다 </option>
                            <option id="2" value="2">사이트가 맘에 안든다</option>
                            <option id="3" value="3">친절하지 못하다</option>
                            <option id="4" value="4">그냥</option>
                            <option id="5" value="5">직접입력</option>
                        </select>
                            <textarea class="hidden" name="whydel" id="whydel"></textarea></span>
                    </div>
                <div class="remove_btn">
                    <input class="btn" type="button" value="탈퇴" onclick="del();">
                    <input class="btn" type="reset"> 
                    <input class="btn" type="button" value="돌아가기">  
                </div>
            </div>
            </form>
        </div>
    </div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
     
</body>
</html>