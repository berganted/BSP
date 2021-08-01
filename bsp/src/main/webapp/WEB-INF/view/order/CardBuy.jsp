<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<title></title>
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
	    	name: '�ֹ���:�����׽�Ʈ',
	    	//����â���� ������ �̸�
	    	amount: 1000,
	    	//����
	    	buyer_email: 'iamport@siot.do',
	    	buyer_name: '�������̸�',
	    	buyer_tel: '010-1234-5678',
	    	buyer_addr: '����Ư���� ������ �Ｚ��',
	    	buyer_postcode: '123-456',
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
<p>
<button id="check_module" type="button">���� ����Ʈ ���� ��� �׽�Ʈ �غ���</button>
</p>
</body>
</html>