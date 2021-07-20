package board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDao dao;
	
	@Override
	public List<BoardVo> selectAll(BoardVo vo) {
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
	public BoardVo detail(BoardVo vo) {
		dao.updateReadcount(vo);
		return dao.detail(vo);
	}

	@Override
	public int insert(BoardVo vo) { 
		if (dao.insert(vo) > 0) { // insert 하고나면 키가 gno에 담기고, 1을 리턴
			dao.q_gno(vo.getQ_no());
			return 1; // alert
		} else {
			return 0; 
		}
	}
	
	@Override
	public int insertReply(BoardVo vo) {
		dao.onoUpdate(vo);
		vo.setQ_ono(vo.getQ_ono()+1);
		vo.setQ_nested(vo.getQ_nested()+1);
		return dao.insertReply(vo);
	}

	@Override
	public BoardVo edit(BoardVo vo) {
		return dao.detail(vo);
	}
	
	@Override
	public int update(BoardVo vo) {
		if ("1".equals(vo.getIsDel())) {
			dao.delFilename(vo);
		}
		return dao.update(vo);
	}
	
	@Override
	public int delete(BoardVo vo) {
		return dao.delete(vo);
	}
}
