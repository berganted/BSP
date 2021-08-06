package returning;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class ReturningDao {
	@Autowired
	SqlSessionTemplate sessionTemplate;
	
	public List<ReturningVo> selectAll(ReturningVo vo){
		return sessionTemplate.selectList("returnig.selectAll",vo);
	}

	/* 주문 → 반품신청서 */
	public ReturningVo  selectPopupRt(ReturningVo vo){
		return sessionTemplate.selectOne("returnig.selectPopupRt",vo);
	}
	/* 교환 → 반품신청서 */
	public ReturningVo selectPopupRp(ReturningVo vo){
		return sessionTemplate.selectOne("returnig.selectPopupRp",vo);
	}
	public int count(ReturningVo vo) {
		return sessionTemplate.selectOne("returnig.count",vo);
	}
	public ReturningVo detail1(ReturningVo vo) {
		return sessionTemplate.selectOne("returnig.detail1",vo);
	}
	public List<ReturningVo> detail2(ReturningVo vo) {
		return sessionTemplate.selectList("returnig.detail2",vo);
	}
	public int insertRt(ReturningVo vo) {
		return sessionTemplate.insert("returnig.insertRt",vo);
	}
	public int insertRd(ReturningVo vo) {
		return sessionTemplate.insert("returnig.insertRd",vo);
	}
	public void updatePs(int no) {
		 sessionTemplate.update("returnig.updatePs",no);
	}
	public void updatePi(int no) {
		sessionTemplate.update("returnig.updatePi",no);
	}
	public void updatePb(int no) {
		sessionTemplate.update("returnig.updatePb",no);
	}
	public int delete(ReturningVo vo) {
		return sessionTemplate.delete("returnig.delete", vo);

	}
	public List<ReturningVo> selectop(ReturningVo vo) {
		return sessionTemplate.selectList("returnig.selectop",vo);
	}
	public int updatepsno(ReturningVo vo) {
		return sessionTemplate.update("returnig.updatepsno",vo);
	}
	public void updateiopsno(ReturningVo vo) {
		sessionTemplate.update("returnig.updateiopsno",vo);
	}
}
