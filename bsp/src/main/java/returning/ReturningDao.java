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
	public int count(ReturningVo vo) {
		return sessionTemplate.selectOne("returnig.count",vo);
	}
	public ReturningVo detail(ReturningVo vo) {
		return sessionTemplate.selectOne("returnig.detail",vo);
	}
	public int insert(ReturningVo vo) {
		return sessionTemplate.insert("returnig.insert",vo);
	}
	public int update(ReturningVo vo) {
		return sessionTemplate.update("returnig.update",vo);
	}
	public int delete(ReturningVo vo) {
		return sessionTemplate.delete("returnig.delete", vo);

	}
}
