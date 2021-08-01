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
    <script src="/bsp//js/main.js"></script>
</head>
<link rel="stylesheet" href="/bsp/css/base.css">
<link rel="stylesheet" href="/bsp/css/index.css">


<body>
    <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="wrap">
        <jsp:include page="../include/side2.jsp"></jsp:include>
        <div class="mem_content">
            <div class="head">
                <h1>비밀번호 수정</h1>
            </div>          
            <div>
                <form action="" method="POST">
                    <div style="text-align: center;">
                        <div>
                            <span class="up_spanlable">아이디</span>
                            
                            <span class="up_spancon"><input type="text" name="m_id" value="${userInfo.m_id }" readonly></span>
                        </div>
                        <div>
                            <span class="up_spanlable">기존비밀번호</span>
                            <span class="up_spancon"><input type="password" name="m_pwd"></span>
                        </div>
                        <div>
                            <span class="up_spanlable">새 비밀번호</span>
                            <span class="up_spancon"><input type="password" name="m_pwd"></span>
                        </div>
                        <div>
                            <span class="up_spanlable">비밀번호 확인</span>
                            <span class="up_spancon"><input type="password"></span>
                        </div>
                        
                        
                    </div>
                    <div class="up_submit">
                        <input class="up_submitbtn" type="submit" value=" 수정" ><br><br>
                        <input class="up_submitbtn" type="reset" value="취소" >
                    </div>
                </form>
            </div>
               
        </div>
        
    </div>
   <jsp:include page="../include/footer.jsp"></jsp:include>

</body>
<script type="text/javascript">
    $("#search_button").postcodifyPopUp();
</script>
</html>