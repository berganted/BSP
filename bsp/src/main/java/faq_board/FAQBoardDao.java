package faq_board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import board.BoardVo;


@Repository
public class FAQBoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<FboardVo> selectAll(FboardVo vo) {
		return sqlSession.selectList("faq_board.selectAll", vo);
	}
	
	public int count(FboardVo vo) {
		return sqlSession.selectOne("faq_board.count", vo);
	}
	
	public FboardVo detail(FboardVo vo) {
		return sqlSession.selectOne("faq_board.detail", vo);
	}
	
	public void updateReadcount(FboardVo vo) {
		sqlSession.update("faq_board.updateReadcount", vo);
	}
	
	public int insert(FboardVo vo) {
		return sqlSession.insert("faq_board.insert", vo);
	}
	
	public int update(FboardVo vo) {
		return sqlSession.update("faq_board.update", vo);
	}
	
	public int delete(FboardVo vo) {
		return sqlSession.delete("faq_board.delete", vo);
	}
}
