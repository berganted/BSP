package admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import board.BoardService;
import book.BookService;
import book.BookVo;
import user.UserService;
import user.UserVo;

@Controller
public class AdminCotroller {

	@Autowired
	AdminService service;
	@Autowired
	UserService uservice;
	@Autowired
	BookService bservice;

	@RequestMapping("/admin")
	public String index() {
		return "admin/index";
	}

	@RequestMapping("admin/board/index.do")
	public String boardIndex() {
		return "admin/board/index";
	}
	@RequestMapping("admin/member/index.do")
	public String memberIndex(UserVo vo , Model model) {
		model.addAttribute("list", uservice.selectAll(vo));
		
		return "admin/member/index";
	}
	@RequestMapping("admin/product/index.do")
	public String memberIndex(BookVo vo , Model model) {
		model.addAttribute("list", bservice.selectAll(vo));
		
		return "admin/product/index";
	}

	@RequestMapping("admin/member/view.do")
	public String memberview(UserVo vo, Model model) {
		model.addAttribute("vo", uservice.detail(vo));
		return "admin/member/view";
	}
	@RequestMapping("admin/board/view.do")
	public String boardview() {
		return "admin/board/view";
	}

	@RequestMapping("admin/product/write.do")
	public String productwrite() {
		return "admin/product/write";
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
		if (v== null) {
			model.addAttribute("msg", "아이디와 비밀번호를 확인해 주세요");
			model.addAttribute("url", "/bsp/admin");
			return "include/alert";
		} else {
			sess.setAttribute("userInfo", v);
			return "redirect:board/index.do";
		}
	}
}
