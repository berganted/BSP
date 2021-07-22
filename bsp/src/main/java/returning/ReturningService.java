package returning;

import java.util.List;


public interface ReturningService {
	List<ReturningVo> selectAll(ReturningVo vo);
	
	List<ReturningVo> selectPopup(ReturningVo vo);
	
	ReturningVo detail1(ReturningVo vo);
	
	List<ReturningVo> detail2(ReturningVo vo);

	int insertRd(ReturningVo vo);

	int delete(ReturningVo vo);


}
