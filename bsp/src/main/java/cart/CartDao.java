package cart;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDao {
	@Autowired
	SqlSessionTemplate sessionTemplate;

	public List<CartVo> selectAll(CartVo vo){
		return sessionTemplate.selectList("order.selectAll",vo);
	}
	public int count(CartVo vo) {
		return sessionTemplate.selectOne("order.count",vo);
	}
	public int insert(CartVo vo) {
		return sessionTemplate.insert("order.insert",vo);
	}
	public int update(CartVo vo) {
		return sessionTemplate.update("order.update",vo);
	}
	public int delete(CartVo vo) {
		return sessionTemplate.delete("order.delete", vo);

	}
}
