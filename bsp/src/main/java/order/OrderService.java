package order;

import java.util.List;

public interface OrderService {
	List<OrderVo> selectAll(OrderVo vo);

	int insert(OrderVo vo);

	int update(OrderVo vo);

	int delete(OrderVo vo);


}
