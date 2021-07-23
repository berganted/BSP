package returning;

import java.sql.Timestamp;

import util.CommonVo;

public class ReturningVo extends CommonVo{
	private int returning_no; //반품번호
	private int returning_reason_no; //반품사유코드
	private String return_reason_detail;
	private int b_no; //상품번호
	private int m_no; //회원번호
	private int ps_no; //처리상태코드
	private String returning_category; //반품.교환 구분 코드
	private int pb_no;  //주문번호
	private String pb_resname; //주문시 받는 사람
	private String pb_zipcode; //주문시 받는 주소1
	private String pb_addr1; //주문시 받는 주소2
	private String pb_addr2;//주문시 받는 주소3
	private String pb_restel; //주문시 받는 번호
	private String pb_req;	// 주문시 요청사항
	private int pb_totalprice; //총 가격
	private Timestamp pb_orderdate; //주문 날짜
	private int io_no; //출고번호
	private int io_amount; //출고수량 
	private Timestamp io_date; //출고날짜(배송이후)
	private String ps_title; //처리상태
	private String b_title; //상품명
	private int[] checkOne;
	
	//----------------------------------------
	private int rd_no; //반품회송번호
	private String rd_name;
	private String rd_zipcode; 	//회송시 받는 주소1
	private String rd_addr1; 	//회송시 받는 주소2
	private String rd_addr2;	//회송시 받는 주소3
	private String rd_tel; 		//회송시 받는 번호
	private String rd_req; 		// 회송시 요청사항
	private String rd_option; 	//회송시 택배 옵션: 지정/임의발송
	private int refund_no;
	private int returning_amount;
	private Timestamp returning_regdate;  //반품주문일
	private int pb_payno; //주문시 결제방법
	private int b_price;
	
	private int[] io_nos; //반품신청서 넘어갈때 사용할 배열
	
	public int[] getIo_nos() {
		return io_nos;
	}

	public void setIo_nos(int[] io_nos) {
		this.io_nos = io_nos;
	}

	public  ReturningVo() {

		this.pageRow = 10;
		this.reqPage = 1;
		this.pageRange = 10;
		this.orderby ="returning_regdate";
		this.direct = "DESC";
	}
	
	public int[] getCheckOne() {
		return checkOne;
	}
	public void setCheckOne(int[] checkOne) {
		this.checkOne = checkOne;
	}
	
	public int getB_price() {
		return b_price;
	}
	public void setB_price(int b_price) {
		this.b_price = b_price;
	}
	public int getPb_payno() {
		return pb_payno;
	}
	public void setPb_payno(int pb_payno) {
		this.pb_payno = pb_payno;
	}
	public Timestamp getReturning_regdate() {
		return returning_regdate;
	}
	public void setReturning_regdate(Timestamp returning_regdate) {
		this.returning_regdate = returning_regdate;
	}
	public int getRefund_no() {
		return refund_no;
	}
	public void setRefund_no(int refund_no) {
		this.refund_no = refund_no;
	}
	public int getReturning_amount() {
		return returning_amount;
	}
	public void setReturning_amount(int returning_amount) {
		this.returning_amount = returning_amount;
	}
	public String getRd_name() {
		return rd_name;
	}
	public void setRd_name(String rd_name) {
		this.rd_name = rd_name;
	}
	public String getPb_zipcode() {
		return pb_zipcode;
	}
	public void setPb_zipcode(String pb_zipcode) {
		this.pb_zipcode = pb_zipcode;
	}
	public String getRd_zipcode() {
		return rd_zipcode;
	}
	public void setRd_zipcode(String rd_zipcode) {
		this.rd_zipcode = rd_zipcode;
	}
	public String getRd_addr1() {
		return rd_addr1;
	}
	public void setRd_addr1(String rd_addr1) {
		this.rd_addr1 = rd_addr1;
	}
	public String getRd_addr2() {
		return rd_addr2;
	}
	public void setRd_addr2(String rd_addr2) {
		this.rd_addr2 = rd_addr2;
	}
	public String getRd_tel() {
		return rd_tel;
	}
	public void setRd_tel(String rd_tel) {
		this.rd_tel = rd_tel;
	}
	public String getRd_req() {
		return rd_req;
	}
	public void setRd_req(String rd_req) {
		this.rd_req = rd_req;
	}
	public String getRd_option() {
		return rd_option;
	}
	public void setRd_option(String rd_option) {
		this.rd_option = rd_option;
	}
	public int getReturning_no() {
		return returning_no;
	}
	public void setReturning_no(int returning_no) {
		this.returning_no = returning_no;
	}
	public int getReturning_reason_no() {
		return returning_reason_no;
	}
	public void setReturning_reason_no(int returning_reason_no) {
		this.returning_reason_no = returning_reason_no;
	}
	public String getReturn_reason_detail() {
		return return_reason_detail;
	}
	public void setReturn_reason_detail(String return_reason_detail) {
		this.return_reason_detail = return_reason_detail;
	}
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public int getPs_no() {
		return ps_no;
	}
	public void setPs_no(int ps_no) {
		this.ps_no = ps_no;
	}
	public int getRd_no() {
		return rd_no;
	}
	public void setRd_no(int rd_no) {
		this.rd_no = rd_no;
	}
	public String getReturning_category() {
		return returning_category;
	}
	public void setReturning_category(String returning_category) {
		this.returning_category = returning_category;
	}
	public int getPb_no() {
		return pb_no;
	}
	public void setPb_no(int pb_no) {
		this.pb_no = pb_no;
	}
	public String getPb_resname() {
		return pb_resname;
	}
	public void setPb_resname(String pb_resname) {
		this.pb_resname = pb_resname;
	}
	public String getPb_addr1() {
		return pb_addr1;
	}
	public void setPb_addr1(String pb_addr1) {
		this.pb_addr1 = pb_addr1;
	}
	public String getPb_addr2() {
		return pb_addr2;
	}
	public void setPb_addr2(String pb_addr2) {
		this.pb_addr2 = pb_addr2;
	}
	public String getPb_restel() {
		return pb_restel;
	}
	public void setPb_restel(String pb_restel) {
		this.pb_restel = pb_restel;
	}
	public String getPb_req() {
		return pb_req;
	}
	public void setPb_req(String pb_req) {
		this.pb_req = pb_req;
	}
	public int getPb_totalprice() {
		return pb_totalprice;
	}
	public void setPb_totalprice(int pb_totalprice) {
		this.pb_totalprice = pb_totalprice;
	}
	public Timestamp getPb_orderdate() {
		return pb_orderdate;
	}
	public void setPb_orderdate(Timestamp pb_orderdate) {
		this.pb_orderdate = pb_orderdate;
	}
	public int getIo_no() {
		return io_no;
	}
	public void setIo_no(int io_no) {
		this.io_no = io_no;
	}
	public int getIo_amount() {
		return io_amount;
	}
	public void setIo_amount(int io_amount) {
		this.io_amount = io_amount;
	}
	public Timestamp getIo_date() {
		return io_date;
	}
	public void setIo_date(Timestamp io_date) {
		this.io_date = io_date;
	}
	public String getPs_title() {
		return ps_title;
	}
	public void setPs_title(String ps_title) {
		this.ps_title = ps_title;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}

}
