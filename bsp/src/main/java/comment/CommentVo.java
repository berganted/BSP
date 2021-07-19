package comment;

import java.sql.Timestamp;

import util.CommonVo;

public class CommentVo extends CommonVo {
	
	private int c_no;
	private int q_no;
	private String a_id;
	private String c_content;
	private Timestamp c_regdate;
	private String c_tablename;
	private int m_no;
	private String name; // vo에 있는 alias
	
	public CommentVo() {
		this.pageRow = 5;
		this.reqPage = 1;
		this.pageRange = 5;
		this.orderby ="q_regdate";
		this.direct = "DESC";
	}
	
	public int getC_no() {
		return c_no;
	}
	public void setC_no(int c_no) {
		this.c_no = c_no;
	}
	public int getQ_no() {
		return q_no;
	}
	public void setQ_no(int q_no) {
		this.q_no = q_no;
	}
	public String getA_id() {
		return a_id;
	}
	public void setA_id(String a_id) {
		this.a_id = a_id;
	}
	public String getC_content() {
		return c_content;
	}
	public void setC_content(String c_content) {
		this.c_content = c_content;
	}
	public Timestamp getC_regdate() {
		return c_regdate;
	}
	public void setC_regdate(Timestamp c_regdate) {
		this.c_regdate = c_regdate;
	}
	public String getC_tablename() {
		return c_tablename;
	}
	public void setC_tablename(String c_tablename) {
		this.c_tablename = c_tablename;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
