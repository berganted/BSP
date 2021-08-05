package review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import comment.CommentVo;


@Controller
public class ReviewController {
	
	@Autowired
	ReviewService service; 
	
	
	@RequestMapping("/review/insert.do")
	public String reviewInsert(Model model, ReviewVo vo) {
		int r = service.insert(vo);
		if (r > 0) {
			model.addAttribute("result", "true");
		} else {
			model.addAttribute("result", "false");
		}
		return "include/result";
	}
	
	@RequestMapping("/review/list.do")
	public String reviewList(Model model, ReviewVo cv) {
		model.addAttribute("list", service.selectAll(cv));
		return "include/review";
	}
	
	@RequestMapping("/review/delete.do")
	public String commentDelete(Model model, ReviewVo vo) {
		int r = service.delete(vo);
		if (r > 0) {
			model.addAttribute("result", "true");
		} else {
			model.addAttribute("result", "false");
		}
		return "include/result";
	}
}
