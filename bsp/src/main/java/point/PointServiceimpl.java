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
		return dao.selectAll(vo);
	}

	@Override
	public int insert(PointVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(PointVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(PointVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	
}
