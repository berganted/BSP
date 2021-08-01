package faq_board;

import java.io.File;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class FAQBoardController {
	
	@Autowired
	FAQBoardService service;
	static final String TABLENAME = "faq_board";
	
	@RequestMapping("/sample/FAQboard2.do")
	public String index(Model model, FAQBoardVo vo) {
		model.addAttribute("list", service.selectAll(vo));
		return "sample/FAQboard2";
	}
	
	@RequestMapping("/sample/board_write2.do")
	public String write(Model model, FAQBoardVo vo) {
		return "sample/board_write2";
	}
	
	@RequestMapping("/sample/insert2.do")
	public String insert(Model model, FAQBoardVo vo, HttpServletRequest req) {
		int r = service.insert(vo);
		if (r > 0) {
			model.addAttribute("msg", "정상적으로 등록되었습니다.");
			model.addAttribute("url", "FAQboard2.do");
		} else {
			model.addAttribute("msg", "등록실패");
			model.addAttribute("url", "board_write2.do"); 
		}
		return "include/alert";
	}
	  
//	@RequestMapping("/sample/board_edit.do")
//	public String edit(Model model, FAQBoardVo vo) {
//		model.addAttribute("vo", service.edit(vo));
//		return "sample/board_edit"; 
//	}
	
	@RequestMapping("/sample/update2.do")
	public String update(Model model, FAQBoardVo vo, HttpServletRequest req) { 
		int r = service.update(vo);
		if (r > 0) {
			model.addAttribute("msg", "정상적으로 수정되었습니다.");
			model.addAttribute("url", "FAQboard2.do");
		} else {
			model.addAttribute("msg", "수정실패");
//			model.addAttribute("url", "board_edit.do?q_no="+vo.getQ_no());
		}
		return "include/alert";
	}
	
	@RequestMapping("/sample/delete2.do")
	public String delete(Model model, FAQBoardVo vo, HttpServletRequest req) {
		int r = service.delete(vo);
		if (r > 0) {
			model.addAttribute("result", "true");
		} else {
			model.addAttribute("result", "false");
		}
		return "include/result";
	}
}
