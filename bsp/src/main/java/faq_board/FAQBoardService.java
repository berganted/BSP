package faq_board;

import java.util.List;




public interface FAQBoardService {
	List<FboardVo> selectAll(FboardVo vo);
	FboardVo detail(FboardVo vo);
	int insert(FboardVo vo);
	FboardVo edit(FboardVo vo);
	int update(FboardVo vo);
	int delete(FboardVo vo);
}
