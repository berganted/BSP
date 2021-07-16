package comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service // bean에 등록
public class CommentServiceImpl implements CommentService {

	@Autowired
	CommentDao dao; // 페이지 메소드를 사용 할 수 있게됨
	
	@Override
	public List<CommentVo> selectAll(CommentVo vo) {
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
		return dao.selectAll(vo);
	}

	@Override
	public int insert(CommentVo vo) {
		return dao.insert(vo);
	}

	@Override
	public int delete(CommentVo vo) {
		return dao.delete(vo);
	}

}
