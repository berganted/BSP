package admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<AdminVo> selectAll(AdminVo vo) {
		return sqlSession.selectList("admin.selectAll", vo);
	}
	
	public int count(AdminVo vo) {
		return sqlSession.selectOne("admin.count", vo);
	}
	public int insert(AdminVo vo) {
		return sqlSession.insert("admin.insert", vo);
	}
	public int delete(AdminVo vo) {
		return sqlSession.delete("admin.delete", vo);
	}
}
