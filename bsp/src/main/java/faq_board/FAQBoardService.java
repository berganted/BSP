package faq_board;

import java.util.List;



public interface FAQBoardService {
	List<FAQBoardVo> selectAll(FAQBoardVo vo);
	int insert(FAQBoardVo vo);
//	FAQBoardVo edit(FAQBoardVo vo);
	int update(FAQBoardVo vo);
	int delete(FAQBoardVo vo);
}
