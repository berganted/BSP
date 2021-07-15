package book;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insert(BookVo vo) {
		return sqlSession.insert("book.insert",vo);
	}
}
