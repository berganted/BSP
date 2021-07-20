package common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import point.PointService;
import point.PointServiceimpl;
import point.PointVo;

@Controller
public class CommonController {
	 @Autowired
	  PointService service;
	
	@RequestMapping("/index.do")
	public String index() {
		return "user/index";
	}
	
}
