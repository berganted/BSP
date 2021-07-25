package point;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import user.UserService;
import user.UserVo;


@Controller
public class PointController {
	 @Autowired
	  PointService service;
	 @Autowired
	 UserService uservice;
	
	@RequestMapping("user/point.do")
	public String point(PointVo vo,  Model model,HttpSession sess,UserVo uv) {
		List<PointVo> v = service.selectAll(vo);
		model.addAttribute("plist", v);
		model.addAttribute("vo", uservice.detail(uv));
		return "user/point";
	}
	
}
