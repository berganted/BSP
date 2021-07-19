package point;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class PointDao {
	@Autowired
	SqlSessionTemplate sessionTemplate;
	
	public List<PointVo> selectAll(PointVo vo){
		return sessionTemplate.selectList("point.selectAll",vo);
	}
	public int count(PointVo vo) {
		return sessionTemplate.selectOne("point.count",vo);
	}
	public PointVo detail(PointVo vo) {
		return sessionTemplate.selectOne("point.detail",vo);
	}
	public int insert(PointVo vo) {
		return sessionTemplate.insert("point.insert",vo);
	}
	public int update(PointVo vo) {
		return sessionTemplate.update("point.update",vo);
	}
	public int delete(PointVo vo) {
		return sessionTemplate.delete("point.delete", vo);

	}
}
