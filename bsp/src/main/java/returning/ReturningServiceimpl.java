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
	public ReturningVo selectPopupRt(ReturningVo vo) {
		return dao.selectPopupRt(vo);
	} 
	@Override
	public ReturningVo selectPopupRp(ReturningVo vo) {
		return dao.selectPopupRp(vo);
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
		return dao.insertRd(vo);
	}
	@Override
	public int delete(ReturningVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int insertRt(ReturningVo vo) {
		return dao.insertRt(vo);
	}
	@Override
	public void updatePs(int no) {
		dao.updatePs(no);
	}




}
