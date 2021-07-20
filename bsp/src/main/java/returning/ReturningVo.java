package returning;

public class ReturningVo {
	private int returing_no; //반품번호
	private int returning_reason_no; //반품사유코드
	private int b_no; //상품번호
	private int m_no; //회원번호
	private int ps_no; //처리상태코드
	private int rd_no; //반품회송번호
	private String return_category; //반품.교환 구분 코드
	
	
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getReturn_category() {
		return return_category;
	}
	public void setReturn_category(String return_category) {
		this.return_category = return_category;
	}
	public String getRd_name() {
		return rd_name;
	}
	public void setRd_name(String rd_name) {
		this.rd_name = rd_name;
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
	private String rd_name; //회송보내는 사람
	private String rd_zipcode; //회송주소1
	private String rd_addr1; //회송주소2(기본)
	private String rd_addr2; //회송주소3(상세)
	private String rd_tel; //회송연락처
	private String rd_req; //회송 요청사항
	private int refund_no; 
	private int returning_amount;
	
	
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
	
}
