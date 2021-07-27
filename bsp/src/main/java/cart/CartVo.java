package cart;

public class CartVo {
	private int cart_no;
	private int cart_cnt;
	private int cart_price;
	
	private int m_no;
	
	private int b_no;
	private String b_title;
	private int b_stock;
	private int b_price;
	private int b_point;
	private int b_imgno;
	private String b_imgmain;
	private int io_amount;
	
	
	
	public int getIo_amount() {
		return io_amount;
	}
	public void setIo_amount(int io_amount) {
		this.io_amount = io_amount;
	}
	public int getB_imgno() {
		return b_imgno;
	}
	public void setB_imgno(int b_imgno) {
		this.b_imgno = b_imgno;
	}
	public String getB_imgmain() {
		return b_imgmain;
	}
	public void setB_imgmain(String b_imgmain) {
		this.b_imgmain = b_imgmain;
	}
	public int getCart_no() {
		return cart_no;
	}
	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
	}
	public int getCart_cnt() {
		return cart_cnt;
	}
	public void setCart_cnt(int cart_cnt) {
		this.cart_cnt = cart_cnt;
	}
	public int getCart_price() {
		return cart_price;
	}
	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
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
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public int getB_stock() {
		return b_stock;
	}
	public void setB_stock(int b_stock) {
		this.b_stock = b_stock;
	}
	public int getB_price() {
		return b_price;
	}
	public void setB_price(int b_price) {
		this.b_price = b_price;
	}
	public int getB_point() {
		return b_point;
	}
	public void setB_point(int b_point) {
		this.b_point = b_point;
	}
}
