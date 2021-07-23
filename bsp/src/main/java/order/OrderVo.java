package order;

import java.sql.Timestamp;

import util.CommonVo;

public class OrderVo extends CommonVo {
	private int pb_no;  //주문번호
	private int ps_no;	//처리상태코드
	private int m_no;	//회원번호
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
	private String pb_delivery;//주문시 배송옵션
	private String b_title; //상품명
	private String b_author; //저자명
	private int b_price; // 도서 가격
	private int pb_payno; //주문시 결제방법
	//어드민에서 사용
	private String m_id;
	private int count;//주문번호안에 출고번호갯수
	private int amount_sum;
	
	public  OrderVo() {
		
		this.pageRow = 10;
		this.reqPage = 1;
		this.pageRange = 10;
		this.orderby ="pb_orderdate";
		this.direct = "DESC";
	}
	
	
	public int getAmount_sum() {
		return amount_sum;
	}


	public void setAmount_sum(int amount_sum) {
		this.amount_sum = amount_sum;
	}


	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getPb_payno() {
		return pb_payno;
	}

	public void setPb_payno(int pb_payno) {
		this.pb_payno = pb_payno;
	}

	public String getB_author() {
		return b_author;
	}
	
	public int getB_price() {
		return b_price;
	}
	
	public void setB_price(int b_price) {
		this.b_price = b_price;
	}
	
	public void setB_author(String b_author) {
		this.b_author = b_author;
	}
	public String getPb_delivery() {
		return pb_delivery;
	}
	public void setPb_delivery(String pb_delivery) {
		this.pb_delivery = pb_delivery;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public int getPb_no() {
		return pb_no;
	}
	public void setPb_no(int pb_no) {
		this.pb_no = pb_no;
	}
	public int getPs_no() {
		return ps_no;
	}
	public void setPs_no(int ps_no) {
		this.ps_no = ps_no;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getPb_resname() {
		return pb_resname;
	}
	public void setPb_resname(String pb_resname) {
		this.pb_resname = pb_resname;
	}
	public String getPb_zipcode() {
		return pb_zipcode;
	}

	public void setPb_zipcode(String pb_zipcode) {
		this.pb_zipcode = pb_zipcode;
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

	
}
