package review;

import java.sql.Timestamp;

import util.CommonVo;

public class ReviewVo extends CommonVo {
	
	private int r_no;
	private int m_no;
	private int b_no;
	private String r_content;
	private int r_grade;
	private Timestamp r_regdate;
	private String name; // vo에 있는 alias
	
	public ReviewVo() {
		this.pageRow = 5;
		this.reqPage = 1;
		this.pageRange = 5;
		this.orderby ="r_regdate";
		this.direct = "DESC";
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}


	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}

	public int getR_grade() {
		return r_grade;
	}

	public void setR_grade(int r_grade) {
		this.r_grade = r_grade;
	}

	public Timestamp getR_regdate() {
		return r_regdate;
	}

	public void setR_regdate(Timestamp r_regdate) {
		this.r_regdate = r_regdate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
}
