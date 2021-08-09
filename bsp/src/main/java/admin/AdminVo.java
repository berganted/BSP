package admin;

import util.CommonVo;

public class AdminVo extends CommonVo {
	private String a_id;
	private String a_pwd;
	private String a_name;
	private int empower;
	
	public AdminVo() {
		this.pageRow = 10;
		this.reqPage = 1;
		this.pageRange = 10;
		this.orderby ="b_regdate";
		this.direct = "DESC";
	}
	
	public int getEmpower() {
		return empower;
	}

	public void setEmpower(int empower) {
		this.empower = empower;
	}

	public String getA_name() {
		return a_name;
	}
	public void setA_name(String a_name) {
		this.a_name = a_name;
	}
	public String getA_id() {
		return a_id;
	}
	public void setA_id(String a_id) {
		this.a_id = a_id;
	}
	public String getA_pwd() {
		return a_pwd;
	}
	public void setA_pwd(String a_pwd) {
		this.a_pwd = a_pwd;
	}
	

}
