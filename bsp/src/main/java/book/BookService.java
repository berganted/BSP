package book;

import java.util.List;


public interface BookService {
	List<BookVo> selectAll(BookVo vo);
	List<BookVo> selectAll2(BookVo vo);
	BookVo deatil(BookVo vo);
	int insert(BookVo vo);
	BookVo edit(BookVo vo);
	int update(BookVo vo);
	int delete(BookVo vo);
}
