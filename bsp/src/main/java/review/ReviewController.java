package review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import comment.CommentVo;


@Controller
public class ReviewController {
	
	@Autowired
	ReviewService Service; 
	
	
	@RequestMapping("/review/insert.do")
	public String reviewInsert(Model model, ReviewVo vo) {
		int r = Service.insert(vo);
		if (r > 0) {
			model.addAttribute("result", "true");
		} else {
			model.addAttribute("result", "false");
		}
		return "include/result";
	}
	
	@RequestMapping("/review/list.do")
	public String reviewList(Model model, ReviewVo cv) {
		model.addAttribute("list", Service.selectAll(cv));
		return "include/review";
	}
	
	@RequestMapping("/review/delete.do")
	public String commentDelete(Model model, ReviewVo vo) {
		int r = Service.delete(vo);
		if (r > 0) {
			model.addAttribute("result", "true");
		} else {
			model.addAttribute("result", "false");
		}
		return "include/result";
	}
}
