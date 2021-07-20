package returning;

import java.util.List;

public interface ReturningService {
	List<ReturningVo> selectAll(ReturningVo vo);
	
	List<ReturningVo> selectPopup(ReturningVo vo);

	int insert(ReturningVo vo);

	int update(ReturningVo vo);

	int delete(ReturningVo vo);


}
