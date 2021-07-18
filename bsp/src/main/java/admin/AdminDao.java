package admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import user.UserVo;

@Repository
public class AdminDao {
	@Autowired
	SqlSessionTemplate sessionTemplate;
	
	
	public List<AdminVo> selectAll(AdminVo vo) {
		return sessionTemplate.selectList("admin.selectAll", vo);
	}
	
	public int count(AdminVo vo) {
		return sessionTemplate.selectOne("admin.count", vo);
	}
	public int insert(AdminVo vo) {
		return sessionTemplate.insert("admin.insert", vo);
	}
	public int delete(AdminVo vo) {
		return sessionTemplate.delete("admin.delete", vo);
	}
	public AdminVo login(AdminVo vo) {
		return sessionTemplate.selectOne("admin.login",vo);
	}
}
