package book;

import java.util.List;

import order.OrderVo;


public interface BookService {
	List<BookVo> selectAll(BookVo vo);
	
	
	BookVo isOrder(BookVo vo);
	BookVo isReview(BookVo vo);
	List<BookVo> selectAllBasic(BookVo vo);
	List<BookVo> solbestBook(BookVo vo);
	List<BookVo> solnewBook(BookVo vo);
	List<BookVo> selectAlladmin(BookVo vo);
	List<BookVo> selectAll1(BookVo vo);
	List<BookVo> selectAll2(BookVo vo);
	List<BookVo> selectAll3(BookVo vo);
	List<BookVo> selectAll4(BookVo vo);
	List<BookVo> selectAll5(BookVo vo);
	List<BookVo> selectAll6(BookVo vo);
	List<BookVo> selectAll7(BookVo vo);
	List<BookVo> selectctgnamed(BookVo vo);
	List<BookVo> popular_search(BookVo vo);
	List<BookVo> newBook(BookVo vo);
	BookVo deatil(BookVo vo);
	int insert(BookVo vo);
	BookVo edit(BookVo vo);
	int update(BookVo vo);
	int delete(BookVo vo);
	int deletead(BookVo vo);
	BookVo selectCtgno2(BookVo vo);
	int bookimg(BookVo vo);
	int bookimgad(BookVo vo);
	List<BookVo> adselect(BookVo vo);
	BookVo detailAD(BookVo vo);
	int adupdate(BookVo vo);
	List<BookVo> ctg(BookVo vo);
	int popular(BookVo vo);

}
