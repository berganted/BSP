package util;

import java.sql.Timestamp;

public class CommonVo {
	protected int pageRow;
	private int strIdx;
	protected int reqPage;
	private int totCount;
	private int totPage;
	private int endPage;
	private int strPage;
	protected int pageRange;
	private String stype;
	private String sval;;
	protected String orderby; // 정렬 컬럼
	protected String direct; //오름차순 내림차순
	private String filename_org;
	private String filename_real;
	private String isDel;
	
	
	private int p_no;
	private int m_no;
	private Timestamp p_regdate;
	private String p_state;
	private int p_usage;
	private String p_content;
	
	
	public CommonVo() {
		this.pageRow = 5;
		this.reqPage = 1;
		this.pageRange = 5;
		this.orderby = "regdate";
		this.direct = "DESC";
	}
	
	public String getIsDel() {
		return isDel;
	}
	public int getP_no() {
		return p_no;
	}
	
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	
	public int getM_no() {
		return m_no;
	}
	
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	
	public Timestamp getP_regdate() {
		return p_regdate;
	}
	
	public void setP_regdate(Timestamp p_regdate) {
		this.p_regdate = p_regdate;
	}
	
	public String getP_state() {
		return p_state;
	}
	
	public void setP_state(String p_state) {
		this.p_state = p_state;
	}
	
	public int getP_usage() {
		return p_usage;
	}
	
	public void setP_usage(int p_usage) {
		this.p_usage = p_usage;
	}
	
	public String getP_content() {
		return p_content;
	}
	
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}

	public void setIsDel(String isDel) {
		this.isDel = isDel;
	}

	public String getFilename_org() {
		return filename_org;
	}

	public void setFilename_org(String filename_org) {
		this.filename_org = filename_org;
	}

	public String getFilename_real() {
		return filename_real;
	}

	public void setFilename_real(String filename_real) {
		this.filename_real = filename_real;
	}

	public String getOrderby() {
		return orderby;
	}

	public void setOrderby(String orderby) {
		if(!"".equals(orderby))this.orderby = orderby;
	}

	public String getDirect() {
		return direct;
	}

	public void setDirect(String direct) {
		if(!"".equals(direct)) this.direct = direct;
	}

	public String getStype() {
		return stype;
	}

	public void setStype(String stype) {
		this.stype = stype;
	}

	public String getSval() {
		return sval;
	}

	public void setSval(String sval) {
		this.sval = sval;
	}

	public int getPageRange() {
		return pageRange;
	}
	public void setPageRange(int pageRange) {
		this.pageRange = pageRange;
	}
	public int getStrPage() {
		return strPage;
	}
	public void setStrPage(int strPage) {
		this.strPage = strPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getTotCount() {
		return totCount;
	}
	public void setTotCount(int totCount) {
		this.totCount = totCount;
	}
	public int getTotPage() {
		return totPage;
	}
	public void setTotPage(int totPage) {
		this.totPage = totPage;
	}
	public int getReqPage() {
		return reqPage;
	}
	public void setReqPage(int reqPage) {
		this.reqPage = reqPage;
	}
	public int getPageRow() {
		return pageRow;
	}
	public void setPageRow(int pageRow) {
		this.pageRow = pageRow;
	}
	public int getStrIdx() {
//		return strIdx;
		return (getReqPage()-1)*getPageRow();
	}
	public void setStrIdx(int strIdx) {
		this.strIdx = strIdx;
	}
	

}
