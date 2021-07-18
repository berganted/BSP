package order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class OrderServiceimpl implements OrderService {
	@Autowired
	OrderDao dao ;

	@Override
	public List<OrderVo> selectAll(OrderVo vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(OrderVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(OrderVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(OrderVo vo) {
		// TODO Auto-generated method stub
		return 0;
	} 

}
