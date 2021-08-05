<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>버튼작동스크립트</title>

<script>
$(function(){
	$(".abc").each(function(){
		var idx = $(this).index('.abc');
		console.log($(this).val().length)
		if($(this).val().length>30){
			$('.blah').eq(idx).attr('src',$(this).val())
		}
	})
	$('.btn2').click(function(){
		$('#frm').attr('action','/bsp/order/buy.do')
		console.log($(this).parent().parent().find("#numberUpDown").val())

		if($('#m_no').val()==0){
  		  alert('로그인이 필요합니다.')
  		 location.href="/bsp/user/login.do?url=<%=request.getAttribute("javax.servlet.forward.request_uri")%>?<%=request.getQueryString()==null?"":java.net.URLEncoder.encode(request.getQueryString())%>"
  		  return false
		}
		$(this).next().attr("name","b_no");
		$(this).parent().parent().find("#numberUpDown").attr("name","io_amount");
		$('#frm').submit();
	})
	$('.btn1').click(function(){
		$('#frm').attr('action','/bsp/cart/insert.do')
		if($('#m_no').val()==0){
  		  alert('로그인이 필요합니다.')
  		 location.href="/bsp/user/login.do?url=<%=request.getAttribute("javax.servlet.forward.request_uri")%>?<%=request.getQueryString()==null?"":java.net.URLEncoder.encode(request.getQueryString())%>"
  		  return false
		}
		$(this).next().attr("name","b_no");
		console.log($(this).next().val())
		$(this).next().next().attr("name","b_price");
		$(this).next().next().next().attr("name","m_no");
		$(this).parent().parent().find("#numberUpDown").attr("name","io_amount");
		console.log($(this).parent().parent().find("#numberUpDown").val())
		$('#frm').submit();
	})
})
</script>
</head>
<body>

</body>
</html>