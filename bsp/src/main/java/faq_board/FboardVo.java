package faq_board;

import java.sql.Timestamp;

import util.CommonVo;

public class FboardVo extends CommonVo {
	
	private int faq_no;
	private String faq_cate;
	private String faq_title;
	private String faq_content;
	
	private String a_id;
	
	public  FboardVo() {
		
		this.pageRow = 5;
		this.reqPage = 1;
		this.pageRange = 5;
		this.orderby ="q_regdate";
		this.direct = "DESC";
	}
	
	public int getFaq_no() {
		return faq_no;
	}
	
	public void setFaq_no(int faq_no) {
		this.faq_no = faq_no;
	}
	
	public String getFaq_cate() {
		return faq_cate;
	}

	public void setFaq_cate(String faq_cate) {
		this.faq_cate = faq_cate;
	}

	public String getFaq_title() {
		return faq_title;
	}
	public void setFaq_title(String faq_title) {
		this.faq_title = faq_title;
	}
	public String getFaq_content() {
		return faq_content;
	}
	public void setFaq_content(String faq_content) {
		this.faq_content = faq_content;
	}
	public String getA_id() {
		return a_id;
	}
	public void setA_id(String a_id) {
		this.a_id = a_id;
	}



	
	private String isDel;
	private String name;
	private int comment_count;
	
	private int q_gno;				// 그룹번호
	private int q_ono;				// 순서
	private int q_nested;			// 들여쓰기
	
	public int getQ_gno() {
		return q_gno;
	}
	public void setQ_gno(int q_gno) {
		this.q_gno = q_gno;
	}
	public int getQ_ono() {
		return q_ono;
	}
	public void setQ_ono(int q_ono) {
		this.q_ono = q_ono;
	}
	public int getQ_nested() {
		return q_nested;
	}
	public void setQ_nested(int q_nested) {
		this.q_nested = q_nested;
	}
	public int getComment_count() {
		return comment_count;
	}
	public void setComment_count(int comment_count) {
		this.comment_count = comment_count;
	}
	public String getIsDel() {
		return isDel;
	}
	public void setIsDel(String isDel) {
		this.isDel = isDel;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
