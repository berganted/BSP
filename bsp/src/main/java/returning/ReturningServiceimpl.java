package returning;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import common.SendMail;

@Service
public class ReturningServiceimpl implements ReturningService {
	@Autowired
	ReturningDao dao ;

	@Override
	public List<ReturningVo> selectAll(ReturningVo vo) {
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
	public List<ReturningVo> selectPopup(ReturningVo vo) {
		return dao.selectPopup(vo);
	} 
	
	@Override
	public ReturningVo detail1(ReturningVo vo) {
		return dao.detail1(vo);
	}
	@Override
	public List<ReturningVo> detail2(ReturningVo vo) {
		return dao.detail2(vo);
	}

	@Override
	public int insertRd(ReturningVo vo) {
		if(dao.insertRd(vo)>0) {
			dao.insertRt(vo);
			dao.updatePs(vo.getReturning_no());
			return 1;
		}else {
			return 0;
		}
	}
	@Override
	public int delete(ReturningVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}




}
