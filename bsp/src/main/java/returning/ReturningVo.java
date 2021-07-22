package returning;

import java.sql.Timestamp;

public class ReturningVo {
	private int returing_no; //반품번호
	private int returning_reason_no; //반품사유코드
	private int b_no; //상품번호
	private int m_no; //회원번호
	private int ps_no; //처리상태코드
	private int rd_no; //반품회송번호
	private String return_category; //반품.교환 구분 코드
	private int pb_no;  //주문번호
	private String pb_resname; //주문시 받는 사람
	private String pb_zipcord; //주문시 받는 주소1
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
	
	
	public int[] getCheckOne() {
		return checkOne;
	}
	public void setCheckOne(int[] checkOne) {
		this.checkOne = checkOne;
	}
	public int getReturing_no() {
		return returing_no;
	}
	public void setReturing_no(int returing_no) {
		this.returing_no = returing_no;
	}
	public int getReturning_reason_no() {
		return returning_reason_no;
	}
	public void setReturning_reason_no(int returning_reason_no) {
		this.returning_reason_no = returning_reason_no;
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
	public String getReturn_category() {
		return return_category;
	}
	public void setReturn_category(String return_category) {
		this.return_category = return_category;
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
	public String getPb_zipcord() {
		return pb_zipcord;
	}
	public void setPb_zipcord(String pb_zipcord) {
		this.pb_zipcord = pb_zipcord;
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
