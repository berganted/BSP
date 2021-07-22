package book;

import java.util.List;


public interface BookService {
	List<BookVo> selectAll(BookVo vo);
	
	
	List<BookVo> selectAllBasic(BookVo vo);
	List<BookVo> selectAlladmin(BookVo vo);
	List<BookVo> selectAll1(BookVo vo);
	List<BookVo> selectAll2(BookVo vo);
	List<BookVo> selectAll3(BookVo vo);
	List<BookVo> selectctgnamed(BookVo vo);
	BookVo deatil(BookVo vo);
	int insert(BookVo vo);
	BookVo edit(BookVo vo);
	int update(BookVo vo);
	int delete(BookVo vo);
	BookVo selectCtgno2(BookVo vo);
	int bookimg(BookVo vo);
	int bookimgad(BookVo vo);
	List<BookVo> adselect(BookVo vo);
	BookVo detailAD(BookVo vo);
	int adupdate(BookVo vo);

}
