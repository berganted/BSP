package review;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<ReviewVo> selectAll(ReviewVo vo) {
		return sqlSession.selectList("review.selectAll", vo);
	}
	
	public int count(ReviewVo vo) {
		return sqlSession.selectOne("review.count", vo);
	}
	public int insert(ReviewVo vo) {
		return sqlSession.insert("review.insert", vo);
	}
	
	/*
	 * public int delete(ReviewVo vo) { return sqlSession.delete("review.delete",
	 * vo); }
	 */
}
