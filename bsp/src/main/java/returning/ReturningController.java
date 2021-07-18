package returning;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ReturningController {
	
	@Autowired
	ReturningService service;

	@RequestMapping("/returning/return.do")
	public String Return() {
		return "returning/ReturnForm";
	}
	@RequestMapping("/returning/replace.do")
	public String Replace() {
		return "returning/ReplaceForm";
	}
	
	@RequestMapping("/returning/list.do")
	public String ReturnOrReplaceList() {
		return "returning/ReturnOrReplaceList";
	}
	@RequestMapping("/returning/detail.do")
	public String ReturnOrReplaceListDetails() {
		return "returning/ReturnOrReplaceListDetails";
	}

	
}