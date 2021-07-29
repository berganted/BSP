package cart;

import java.util.List;

public interface CartService {
	
	List<CartVo> selectAll(CartVo vo);
	
	int insert(CartVo vo);

	int update(CartVo vo);

	int delete(CartVo vo);
	
	CartVo selectone(CartVo vo);

}
