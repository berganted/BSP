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
