package user;

import java.sql.Timestamp;
import java.util.Date;

import util.CommonVo;

public class UserVo extends CommonVo {
	

	private int M_NO;
	private String M_Name;
	private String M_ID;
	private String M_PWD;
	private String M_Email;
	private String M_Email_d;

	private String M_Tel;
	private String M_Zipcord;
	private String M_Addr1;
	private String M_Addr2;
	private String gender;
	private Timestamp M_Regdate;
	private String M_Delflag;
	private Date M_Deldate;
	private int M_Point;
	public int getM_NO() {
		return M_NO;
	}
	public void setM_NO(int m_NO) {
		M_NO = m_NO;
	}
	public String getM_Name() {
		return M_Name;
	}
	public void setM_Name(String m_Name) {
		M_Name = m_Name;
	}
	public String getM_ID() {
		return M_ID;
	}
	public void setM_ID(String m_ID) {
		M_ID = m_ID;
	}
	public String getM_PWD() {
		return M_PWD;
	}
	public void setM_PWD(String m_PWD) {
		M_PWD = m_PWD;
	}
	public String getM_Email() {
		return M_Email;
	}
	public void setM_Email(String m_Email) {
		M_Email = m_Email;
	}
	public String getM_Email_d() {
		return M_Email_d;
	}
	public void setM_Email_d(String m_Email_d) {
		M_Email_d = m_Email_d;
	}
	public String getM_Tel() {
		return M_Tel;
	}
	public void setM_Tel(String m_Tel) {
		M_Tel = m_Tel;
	}
	
	public String getM_Zipcord() {
		return M_Zipcord;
	}
	public void setM_Zipcord(String m_Zipcord) {
		M_Zipcord = m_Zipcord;
	}
	public String getM_Addr1() {
		return M_Addr1;
	}
	public void setM_Addr1(String m_Addr1) {
		M_Addr1 = m_Addr1;
	}
	public String getM_Addr2() {
		return M_Addr2;
	}
	public void setM_Addr2(String m_Addr2) {
		M_Addr2 = m_Addr2;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Timestamp getM_Regdate() {
		return M_Regdate;
	}
	public void setM_Regdate(Timestamp m_Regdate) {
		M_Regdate = m_Regdate;
	}
	public String getM_Delflag() {
		return M_Delflag;
	}
	public void setM_Delflag(String m_Delflag) {
		M_Delflag = m_Delflag;
	}
	public Date getM_Deldate() {
		return M_Deldate;
	}
	public void setM_Deldate(Date m_Deldate) {
		M_Deldate = m_Deldate;
	}
	public int getM_Point() {
		return M_Point;
	}
	public void setM_Point(int m_Point) {
		M_Point = m_Point;
	}
	
	
	
	
	
}
