package admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.UserVo;

@Service // bean에 등록
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDao dao; // 페이지 메소드를 사용 할 수 있게됨
	
	@Override
	public List<AdminVo> selectAll(AdminVo vo) {
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
	public int insert(AdminVo vo) {
		return dao.insert(vo);
	}

	@Override
	public int delete(AdminVo vo) {
		return dao.delete(vo);
	}

	@Override
	public AdminVo login(AdminVo vo) {
		 return dao.login(vo);
	}

}
