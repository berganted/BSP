package point;

import java.util.List;

public interface PointService {
	List<PointVo> selectAll(PointVo vo);

	int insertUse(PointVo vo);
	int insertA(PointVo vo);
	int update(PointVo vo);
	int updateUse(PointVo vo);


}
