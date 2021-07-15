package board;

import java.sql.Timestamp;

import util.CommonVo;

public class BoardVo extends CommonVo {
	
	private int Q_No;
	private int Q_Cate_no;
	private int M_NO;
	private String Q_Title;
	private String Q_Content;
	private Timestamp Q_RegDate;
	private int Q_ReadCount;
	private String Q_Filename_org;	// 사용자가첨부한 원본파일명
	private String Q_Filename_real;	// 서버에 저장된 실제파일명
	
	private String isDel;
	private String name;
	
	public int getQ_No() {
		return Q_No;
	}

	public void setQ_No(int q_No) {
		Q_No = q_No;
	}

	public int getQ_Cate_no() {
		return Q_Cate_no;
	}

	public void setQ_Cate_no(int q_Cate_no) {
		Q_Cate_no = q_Cate_no;
	}

	public int getM_NO() {
		return M_NO;
	}

	public void setM_NO(int m_NO) {
		M_NO = m_NO;
	}

	public String getQ_Title() {
		return Q_Title;
	}

	public void setQ_Title(String q_Title) {
		Q_Title = q_Title;
	}

	public String getQ_Content() {
		return Q_Content;
	}

	public void setQ_Content(String q_Content) {
		Q_Content = q_Content;
	}

	public Timestamp getQ_RegDate() {
		return Q_RegDate;
	}

	public void setQ_RegDate(Timestamp q_RegDate) {
		Q_RegDate = q_RegDate;
	}

	public int getQ_ReadCount() {
		return Q_ReadCount;
	}

	public void setQ_ReadCount(int q_ReadCount) {
		Q_ReadCount = q_ReadCount;
	}

	public String getQ_Filename_org() {
		return Q_Filename_org;
	}

	public void setQ_Filename_org(String q_Filename_org) {
		Q_Filename_org = q_Filename_org;
	}

	public String getQ_Filename_real() {
		return Q_Filename_real;
	}

	public void setQ_Filename_real(String q_Filename_real) {
		Q_Filename_real = q_Filename_real;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIsDel() {
		return isDel;
	}

	public void setIsDel(String isDel) {
		this.isDel = isDel;
	}

	

	

	
	
	
}
