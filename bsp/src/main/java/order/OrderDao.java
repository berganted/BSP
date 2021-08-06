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
	public OrderVo detail1(OrderVo vo) {
		return sessionTemplate.selectOne("order.detail1",vo);
	}
	public List<OrderVo> detail2(OrderVo vo) {
		return sessionTemplate.selectList("order.detail2",vo);
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
	public List<OrderVo> selectAdmin(OrderVo vo){
		return sessionTemplate.selectList("order.selectAdmin",vo);
	}
	public List<OrderVo> selectAdmindelist(OrderVo vo){
		return sessionTemplate.selectList("order.selectAdmindelist",vo);
	}
	public OrderVo selectoneAdmin(OrderVo vo) {
		return sessionTemplate.selectOne("order.selectoneAdmin",vo);
	}
	public int countAdmin(OrderVo vo) {
		return sessionTemplate.selectOne("order.countAdmin",vo);
	}
	public int insertIo(OrderVo vo) {
		return sessionTemplate.insert("order.insertIo",vo);
	}
	public OrderVo selectPay(OrderVo vo) {
		return sessionTemplate.selectOne("order.selectPay",vo);
	}
	public void updatePb(int no) {
		 sessionTemplate.update("order.updatePb",no);
	}
	public void updatePi(int no) {
		 sessionTemplate.update("order.updatePi",no);
	}
	public OrderVo lastaddr(OrderVo vo) {
		return sessionTemplate.selectOne("order.lastaddr",vo);
	}
	
	public List<OrderVo> wantReturning(OrderVo vo) {
		return sessionTemplate.selectList("order.wantReturning",vo);
	}
}
