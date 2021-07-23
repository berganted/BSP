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
	public List<ReturningVo> selectPopupRt(ReturningVo vo){
		return sessionTemplate.selectList("returnig.selectPopupRt",vo);
	}
	public List<ReturningVo> selectPopupRp(ReturningVo vo){
		return sessionTemplate.selectList("returnig.selectPopupRp",vo);
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
	public int delete(ReturningVo vo) {
		return sessionTemplate.delete("returnig.delete", vo);

	}
}
