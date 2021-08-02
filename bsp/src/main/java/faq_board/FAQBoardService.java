package faq_board;

import java.util.List;



public interface FAQBoardService {
	List<FboardVo> selectAll(FboardVo vo);
	int insert(FboardVo vo);
//	FAQBoardVo edit(FAQBoardVo vo);
	int update(FboardVo vo);
	int delete(FboardVo vo);
}
