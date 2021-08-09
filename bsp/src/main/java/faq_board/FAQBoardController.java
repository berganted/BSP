package faq_board;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import board.BoardVo;
import book.BookVo;
import comment.CommentVo;


@Controller
public class FAQBoardController {
	
	@Autowired
	FAQBoardService service;
	static final String TABLENAME = "faq_board";
	
	@RequestMapping("/sample/FAQboard2.do")
	public String index(Model model, FboardVo vo) {
		model.addAttribute("list", service.selectAll(vo));
		System.out.println(vo.getFaq_title());
		return "sample/FAQboard2";
	}
	
	@RequestMapping("/admin/FAQindexAdmin.do")
	public String index2(Model model, FboardVo vo) {
		model.addAttribute("list", service.selectAll(vo));
		return "sample/FAQindexAdmin";
	}
	
	@RequestMapping("/admin/FAQviewAdmin.do")
	public String detail(Model model, FboardVo vo, CommentVo cv) {
		model.addAttribute("vo", service.detail(vo));
		
		return "sample/FAQviewAdmin";
	}
	
//	@RequestMapping("/sample/board_write2.do")
//	public String write(Model model, FboardVo vo) {
//		return "sample/board_write2";
//	}
	
	@RequestMapping("/admin/FAQwriteAdmin.do")
	public String write(Model model, FboardVo vo) {
		return "sample/FAQwriteAdmin";
	}
	
	@RequestMapping("/admin/insert2.do")
	public String insert(Model model, FboardVo vo, HttpServletRequest req) {
		int r = service.insert(vo);
		if (r > 0) {
			model.addAttribute("msg", "정상적으로 등록되었습니다.");
			model.addAttribute("url", "FAQindexAdmin.do");
		} else {
			model.addAttribute("msg", "등록실패");
			model.addAttribute("url", "FAQwriteAdmin.do"); 
		}
		return "include/alert";
	}
	  
	@RequestMapping("/admin/update2.do")
	public String update(Model model, FboardVo vo, HttpServletRequest req) { 
		int r = service.update(vo);
		if (r > 0) {
			model.addAttribute("msg", "정상적으로 수정되었습니다.");
			model.addAttribute("url", "FAQindexAdmin.do");
		} else {
			model.addAttribute("msg", "수정실패");
			model.addAttribute("url", "board_edit2.do?q_no="+vo.getFaq_no());
		}
		return "include/alert";
	}
	
//	@RequestMapping("/admin/delete2.do")
//	public String delete(Model model, FboardVo vo, HttpServletRequest req) {
//		int r = service.delete(vo);
//		if (r > 0) {
//			model.addAttribute("result", "true");
//		} else {
//			model.addAttribute("result", "false");
//		}
//		return "include/result";
//	}
	
	//광고 그룹 삭제
		@RequestMapping("admin/delete2.do")
		public String delete(Model model, HttpServletRequest req) {
			String[] no = req.getParameterValues("no");
			int count = 0;
			for(int i = 0; i<no.length; i++) {
				System.out.println(no[i]);
				FboardVo vo= new FboardVo();
				vo.setFaq_no(Integer.parseInt(no[i]));
				count+=service.delete(vo);
			}
			model.addAttribute("msg", "총" +count+"건이 삭제되었습니다.");
			model.addAttribute("url", "FAQindexAdmin.do?orderby=b_regdate");
			return "include/alert";		
		}
}
