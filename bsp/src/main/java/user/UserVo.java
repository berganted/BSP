package user;

import java.sql.Timestamp;

import util.CommonVo;

public class UserVo extends CommonVo {
	

	private int m_no;
	private String m_name;
	private String m_id;
	private String m_pwd;
	private String m_email;
	private String m_email_d;
	private String m_tel;
	private String m_zipcode;
	private String m_addr1;
	private String m_addr2;
	private String gender;
	private Timestamp m_regdate;
	private String m_delflag;
	private String m_deldate;
	private int m_point;
	private int m_del;
	private String whydel;
	
	public UserVo() {
		this.pageRow = 5;
		this.reqPage = 1;
		this.pageRange = 5;

		this.orderby ="m_regdate";
		this.direct = "DESC";
	}
	
	public String getOrderby() {
		return orderby;
	}
	public void setOrderby(String orderby) {
		this.orderby = orderby;
	}
	public String getDirect() {
		return direct;
	}
	public void setDirect(String direct) {
		this.direct = direct;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pwd() {
		return m_pwd;
	}
	public void setM_pwd(String m_pwd) {
		this.m_pwd = m_pwd;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_email_d() {
		return m_email_d;
	}
	public void setM_email_d(String m_email_d) {
		this.m_email_d = m_email_d;
	}
	public String getM_tel() {
		return m_tel;
	}
	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}
	public String getM_addr1() {
		return m_addr1;
	}
	public void setM_addr1(String m_addr1) {
		this.m_addr1 = m_addr1;
	}
	public String getM_addr2() {
		return m_addr2;
	}
	public void setM_addr2(String m_addr2) {
		this.m_addr2 = m_addr2;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Timestamp getM_regdate() {
		return m_regdate;
	}
	public void setM_regdate(Timestamp m_regdate) {
		this.m_regdate = m_regdate;
	}
	public String getM_delflag() {
		return m_delflag;
	}
	public void setM_delflag(String m_delflag) {
		this.m_delflag = m_delflag;
	}
	public String getM_deldate() {
		return m_deldate;
	}
	public void setM_deldate(String m_deldate) {
		this.m_deldate = m_deldate;
	}
	public int getM_point() {
		return m_point;
	}
	public void setM_point(int m_point) {
		this.m_point = m_point;
	}
	public String getM_zipcode() {
		return m_zipcode;
	}
	public void setM_zipcode(String m_zipcode) {
		this.m_zipcode = m_zipcode;
	}
	public int getM_del() {
		return m_del;
	}
	public void setM_del(int m_del) {
		this.m_del = m_del;
	}
	public String getWhydel() {
		return whydel;
	}
	public void setWhydel(String whydel) {
		this.whydel = whydel;
	}
	
}
