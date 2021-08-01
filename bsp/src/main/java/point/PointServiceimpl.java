package point;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class PointServiceimpl implements PointService {
	@Autowired
	PointDao dao ;

	@Override
	public List<PointVo> selectAll(PointVo vo) {
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
	public int update(PointVo vo) {
		return dao.update(vo);
	}

	
	@Override
	public int insertUse(PointVo vo) {
		return dao.insertUse(vo);
	}

	@Override
	public int insertA(PointVo vo) {
		return dao.insertA(vo);
	}

	@Override
	public int updateUse(PointVo vo) {
		return dao.updateUse(vo);
	}

	
}
