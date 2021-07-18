package order;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDao {
	@Autowired
	SqlSessionTemplate sessionTemplate;
	
	public List<OrderVo> selectAll(OrderVo vo){
		return sessionTemplate.selectList("order.selectAll",vo);
	}
	public List<OrderVo> selectPopup(OrderVo vo){
		return sessionTemplate.selectList("order.selectPopup",vo);
	}
	public int count(OrderVo vo) {
		return sessionTemplate.selectOne("order.count",vo);
	}
	public OrderVo detail(OrderVo vo) {
		return sessionTemplate.selectOne("order.detail",vo);
	}
	public int insert(OrderVo vo) {
		return sessionTemplate.insert("order.insert",vo);
	}
	public int update(OrderVo vo) {
		return sessionTemplate.update("order.update",vo);
	}
	public int delete(OrderVo vo) {
		return sessionTemplate.delete("order.delete", vo);

	}
}
