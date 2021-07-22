package book;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<BookVo> selectAll(BookVo vo) {
		return sqlSession.selectList("book.selectAll", vo);
	}
	
	public List<BookVo> selectAllBasic(BookVo vo) {
		return sqlSession.selectList("book.selectAllBasic", vo);
	}
	
	
	
	
	
	public List<BookVo> selectAll1(BookVo vo) {
		return sqlSession.selectList("book.selectAll1", vo);
	}
	public List<BookVo> selectAll2(BookVo vo) {
		return sqlSession.selectList("book.selectAll2", vo);
	}
	public List<BookVo> selectAll3(BookVo vo) {
		return sqlSession.selectList("book.selectAll3", vo);
	}
	
	public List<BookVo> selectctgnamed(BookVo vo) {
		return sqlSession.selectList("book.selectctgnamed", vo);
	}
	
	
	public int count(BookVo vo) {
		return sqlSession.selectOne("book.count", vo);
	}
	
	public BookVo detail(BookVo vo) {
		return sqlSession.selectOne("book.detail", vo);
	}
	
	public int insert(BookVo vo) {
		return sqlSession.insert("book.insert", vo);
	}
	
	public int update(BookVo vo) {
		return sqlSession.update("book.update", vo);
	}
	
	public int delete(BookVo vo) {
		return sqlSession.delete("book.delete", vo);
	}
	
	public BookVo selectCtgno2(BookVo vo) {
		return sqlSession.selectOne("book.selectCtgno2", vo);
	}
}
