package point;

import java.awt.Point;
import java.util.List;

public interface PointService {
	List<PointVo> selectAll(PointVo vo);

	int insert(PointVo vo);

	int update(PointVo vo);

	int delete(PointVo vo);


}
