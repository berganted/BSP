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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(ReturningVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(ReturningVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(ReturningVo vo) {
		// TODO Auto-generated method stub
		return 0;
	} 

}
