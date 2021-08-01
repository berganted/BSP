package faq_board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class FAQBoardServiceImpl implements FAQBoardService {

	@Autowired
	FAQBoardDao dao;
	
	@Override
	public List<FAQBoardVo> selectAll(FAQBoardVo vo) {
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
	public int insert(FAQBoardVo vo) { 
		return dao.insert(vo);
	}
	
//	@Override
//	public FAQBoardVo edit(FAQBoardVo vo) {
//		return dao.detail(vo);
//	}
	
	@Override
	public int update(FAQBoardVo vo) {
		return dao.update(vo);
	}
	
	@Override
	public int delete(FAQBoardVo vo) {
		return dao.delete(vo);
	}
}
