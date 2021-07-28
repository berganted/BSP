package review;

import java.util.List;

public interface ReviewService {
	List<ReviewVo> selectAll(ReviewVo vo);
	int insert(ReviewVo vo);
	/* int delete(ReviewVo vo); */
}
