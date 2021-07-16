package common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	@RequestMapping("/index.do")
	public String index() {
		return "user/index";
	}
	
	
	@RequestMapping("admin/board/write.do")
	public String boardwrite() {
		return "admin/board/write";
	}
}
