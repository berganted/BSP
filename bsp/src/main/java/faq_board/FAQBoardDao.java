package faq_board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class FAQBoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<FAQBoardVo> selectAll(FAQBoardVo vo) {
		return sqlSession.selectList("faq_board.selectAll", vo);
	}
	
	public int count(FAQBoardVo vo) {
		return sqlSession.selectOne("faq_board.count", vo);
	}
	
	public int insert(FAQBoardVo vo) {
		return sqlSession.insert("faq_board.insert", vo);
	}
	
	public int update(FAQBoardVo vo) {
		return sqlSession.update("faq_board.update", vo);
	}
	
	public int delete(FAQBoardVo vo) {
		return sqlSession.delete("faq_board.delete", vo);
	}
}
