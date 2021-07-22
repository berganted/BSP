package book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	BookDao dao;
	@Override
	public List<BookVo> selectAll(BookVo vo) {
		int totCount = dao.count(vo); // 총갯수
		// 총페이지수
		int totPage = totCount / vo.getPageRow();
		if (totCount % vo.getPageRow() > 0) totPage++;
		// 시작페이지
		int strPage = (vo.getReqPage()-1)/vo.getPageRange()
						*vo.getPageRange()+1;
		int endPage = strPage+vo.getPageRange()-1;
		if (endPage > totPage) endPage = totPage;
		
		vo.setStrPage(strPage);
		vo.setEndPage(endPage);
		vo.setTotCount(totCount);
		vo.setTotPage(totPage);
		System.out.println(vo);
		return dao.selectAll(vo);
	}



	@Override
	public int insert(BookVo vo) {
		return dao.insert(vo);
	}

	
	@Override
	public BookVo edit(BookVo vo) {
		return dao.detail(vo);
	}
	
	@Override
	public int update(BookVo vo) {
		return dao.update(vo);
	}
	
	@Override
	public int delete(BookVo vo) {
		return dao.delete(vo);
	}

	@Override
	public BookVo deatil(BookVo vo) {
		return  dao.detail(vo);
	}

	
	
	
	
	@Override
	public List<BookVo> selectAll1(BookVo vo) {
		return dao.selectAll1(vo);
	}

	@Override
	public List<BookVo> selectAll2(BookVo vo) {
		return dao.selectAll2(vo);
	}
	@Override
	public List<BookVo> selectAll3(BookVo vo) {
		return dao.selectAll3(vo);
	}



	@Override
	public List<BookVo> selectAlladmin(BookVo vo) {
		int totCount = dao.count(vo); // 총갯수
		// 총페이지수
		int totPage = totCount / vo.getPageRow();
		if (totCount % vo.getPageRow() > 0) totPage++;
		// 시작페이지
		int strPage = (vo.getReqPage()-1)/vo.getPageRange()
						*vo.getPageRange()+1;
		int endPage = strPage+vo.getPageRange()-1;
		if (endPage > totPage) endPage = totPage;
		
		vo.setStrPage(strPage);
		vo.setEndPage(endPage);
		vo.setTotCount(totCount);
		vo.setTotPage(totPage);
		System.out.println(vo);
		return dao.selectAlladmin(vo);
	}



	@Override
	public int bookimg(BookVo vo) {
		return dao.bookimg(vo);
	}



	@Override
	public BookVo ctg2name(BookVo vo) {
		return dao.ctg2name(vo);
	}



	@Override
	public List<BookVo> adselect(BookVo vo) {
		int totCount = dao.count(vo); // 총갯수
		// 총페이지수
		int totPage = totCount / vo.getPageRow();
		if (totCount % vo.getPageRow() > 0) totPage++;
		// 시작페이지
		int strPage = (vo.getReqPage()-1)/vo.getPageRange()
						*vo.getPageRange()+1;
		int endPage = strPage+vo.getPageRange()-1;
		if (endPage > totPage) endPage = totPage;
		
		vo.setStrPage(strPage);
		vo.setEndPage(endPage);
		vo.setTotCount(totCount);
		vo.setTotPage(totPage);
		System.out.println(vo);
		return dao.adselect(vo);
	}



	@Override
	public int bookimgad(BookVo vo) {
		return dao.bookimgad(vo);
	}



	@Override
	public BookVo detailAD(BookVo vo) {
		return dao.detailAD(vo);
	}
	@Override
	public int adupdate(BookVo vo) {
		return dao.adupdate(vo);
	}
}
