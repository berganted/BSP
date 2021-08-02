package order;

import java.util.List;

public interface OrderService {
	List<OrderVo> selectAll(OrderVo vo);
	
	List<OrderVo> selectPopup(OrderVo vo);

	OrderVo detail1(OrderVo vo);
	
	List<OrderVo> detail2(OrderVo vo);
	
	int insert(OrderVo vo);
	
	int insertIo(OrderVo vo);

	int update(OrderVo vo);

	int delete(OrderVo vo);
	
	OrderVo selectPay(OrderVo vo);
	
	void updatePb(int no);
	
	void updatePi(int no);
//ADMIN
	List<OrderVo> selectAdmin(OrderVo vo);
	List<OrderVo> selectAdmindelist(OrderVo vo);
	OrderVo selectoneAdmin(OrderVo vo);

}
