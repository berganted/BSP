<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import ="order.OrderVo" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <link rel='stylesheet' href='/bsp/css/yesol.css'/><!-- ���� css -->
<link rel='stylesheet' href='/bsp/css/base.css'/> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="/bsp/js/main.js"></script><!--���⿡ ��� div�� �������ִ� ��ũ��Ʈ����-->
</head>
<script>
$(function(){
	 $("#check_module").click(function () {
	    	var IMP = window.IMP; // ��������
	    	IMP.init('imp82310032');
	    	// 'iamport' ��� �ο����� "������ �ĺ��ڵ�"�� ���
	    	// i'mport ������ ������ -> ������ -> �������ĺ��ڵ�
	    	IMP.request_pay({
	    	pg: 'html5_inicis', // version 1.1.0���� ����.
	    	/*
	    	'kakao':īī������,
	    	html5_inicis':�̴Ͻý�(��ǥ�ذ���)
	    	'nice':���̽�����
	    	'jtnet':����Ƽ��
	    	'uplus':LG���÷���
	    	'danal':�ٳ�
	    	'payco':������
	    	'syrup':�÷�����
	    	'paypal':������
	    	*/
	    	pay_method: 'card',
	    	/*
	    	'samsung':�Ｚ����,
	    	'card':�ſ�ī��,
	    	'trans':�ǽð�������ü,
	    	'vbank':�������,
	    	'phone':�޴����Ҿװ���
	    	*/
	    	merchant_uid: 'merchant_' + new Date().getTime(),
	    	/*
	    	merchant_uid�� ���
	    	https://docs.iamport.kr/implementation/payment
	    	���� url�� ���󰡽ø� ���� �� �ִ� ����� �ֽ��ϴ�.
	    	�����ϼ���.
	    	���߿� ������ �غ��Կ�.
	    	*/
	    	name: $('input[name=b_title]').val(),
	    	//����â���� ������ �̸�
	    	amount: $('input[name=pb_totalprice]').val(),
	    	//����
	    	buyer_email: $('input[name=m_email]').val(),
	    	buyer_name: $('input[name=pb_resname]').val(),
	    	buyer_tel: $('input[name=pb_restel]').val(),
	    	buyer_addr: $('input[name=pb_addr1]').val(),
	    	buyer_postcode:$('input[name=pb_zipcode]').val(),
	    	m_redirect_url: 'https://www.yourdomain.com/payments/complete'
	    	/*
	    	����� ������,
	    	������ ������ �����Ǵ� URL�� ����
	    	(īī������, ������, �ٳ��� ���� �ʿ����. PC�� ���������� callback�Լ��� ����� ������)
	    	*/
	    	}, function (rsp) {
	    	console.log(rsp);
	    	if (rsp.success) {
	    	var msg = '������ �Ϸ�Ǿ����ϴ�.';
	    	msg += '����ID : ' + rsp.imp_uid;
	    	msg += '���� �ŷ�ID : ' + rsp.merchant_uid;
	    	msg += '���� �ݾ� : ' + rsp.paid_amount;
	    	msg += 'ī�� ���ι�ȣ : ' + rsp.apply_num;
	    	location.href="/bsp/order/buySuccess.do?pb_no="+$('#pb_no').val()+"&io_no="+$('#io_no').val();
	    	} else {
	    	var msg = '������ �����Ͽ����ϴ�.';
	    	msg += '�������� : ' + rsp.error_msg;
	    	}
	    	alert(msg);
	    	});
	    	});
});
</script>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>
    <header id="header"> </header>
   <div class="wrap">
	<jsp:include page="../include/side2.jsp"></jsp:include>
    <div class="mem_content">
        <h1>�ֹ� ����</h1>
        <article id="article">
             <table id="order_tb">
                <tr>
                	<td>�ֹ���ȣ</td> 
                    <td>������</td>
                    <td>�ֹ���ǰ</td>
                    <td>�ֹ��ݾ�</td>
                    <td>�ֹ���</td>
                   
                </tr>
                <tr>
                 	<td><input type="text" name="pb_no" id="pb_no" value="${pay.pb_no}" style="border:0 solid black; text-align: center; font: 16px"></td>
                    <td><input type="text" name="pb_resname" value="${pay.pb_resname}" style="border:0 solid black; text-align: center; font: 16px"></td>
                    <td><input type="text" name="b_title" value="${pay.b_title}&nbsp;�� ${pay.count }��" style="border:0 solid black; text-align: center; font: 16px"></td>
                    <td><input type="text" name="pb_totalprice" value="${pay.pb_totalprice}" style="border:0 solid black; text-align: center; font: 16px"></td>
                    <td><input type="text" name="pb_orderdate" value="${pay.pb_orderdate }" style="border:0 solid black; text-align: center; font: 16px">
                     	<input type="hidden" name="m_email" value="${pay.m_email}@${pay.m_email_d}" >
            			<input type="hidden" name="pb_restel" value="${pay.pb_restel}" >
            			<input type="hidden" name="pb_zipcode" value="${pay.pb_zipcode}" >
            			<input type="hidden" name="pb_addr1" value="${pay.pb_addr1}" >
            			<input type="hidden" name="io_no"  id="io_no" value="${pay.io_no}" >
            		</td>
                </tr>
        </table>
        <input type="hidden" name="totalprice" value="${sum}">
          	 <div class="retrn_submit" style="padding: 20px; text-align: center;">
                        <input class="button_m" type="button" id="check_module" value="����" >
                        <input class="button_m" type="button" onclick="location.href='/bsp/order/list.do'" value="���" >
              </div>
        </article>
    </div>
  <aside class="mypage_ad">
			<div class="mypage_ad_name">
				<p>�ֱٺ���ǰ</p>
			</div>
			<div class="img_area">
				<img src="img/book.jpg" width="70px" height="100px">
			</div>
			<div style="text-align: center;">å�̸�</div>
		</aside>
</div> 
<footer id="footer"></footer>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>