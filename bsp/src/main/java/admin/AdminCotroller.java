package admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminCotroller {

	@Autowired
	AdminService service;

	@RequestMapping("/admin")
	public String index() {
		return "admin/index";
	}

	@RequestMapping("admin/board/index.do")
	public String boardIndex() {
		return "admin/board/index";
	}

	@RequestMapping("admin/board/view.do")
	public String boardview() {
		return "admin/board/view";
	}

	@RequestMapping("admin/board/write.do")
	public String boardwrite() {
		return "admin/board/write";
	}

	@RequestMapping("/admin/login.do")
	public String login(AdminVo vo, HttpSession sess, HttpServletResponse res, HttpServletRequest req, Model model) {
		AdminVo v = service.login(vo);
		System.out.println(vo.getA_id());
		System.out.println(vo.getA_pwd());
		System.out.println(vo.getA_name());
		if (service.login(vo)== null) {
			model.addAttribute("msg", "아이디와 비밀번호를 확인해 주세요");
			model.addAttribute("url", "/bsp/admin");
			return "include/alert";
		} else {
			sess.setAttribute("userInfo", service.login(vo));
			return "redirect:/bsp/admin/board/index.do";
		}
	}
}
