package user;

import java.io.File;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;



@Controller
public class UserController {
	
	@Autowired
	UserService service;
	
//	@RequestMapping("/user/index.do")
//	public String index(Model model,UserVo vo) {
//		model.addAttribute("list",service.selectAll(vo));		
//		return "admin/user/index";
//	}
//	@RequestMapping("/user/detail.do")
//	public String detail(Model model , UserVo vo, HttpServletRequest req) {
//		
//		model.addAttribute("vo",service.detail(vo));
//		return "/user/detail";
//	}
	@RequestMapping("/user/reg.do")
	public String reg() {
		return "user/reg";
	}
	@RequestMapping("/user/insert.do")
	public String insert(Model model , UserVo vo,  HttpServletRequest req , HttpServletResponse res) {
		int r = service.insert(vo);
		if(r > 0) {
			model.addAttribute("reulst", "true");
		}else {
			model.addAttribute("reulst", "false");
		}
		return "include/reulst";			
}
	@RequestMapping("/user/isDuplicateld.do")
	public String isDuplicateld(Model model, @RequestParam String id ) {
			int r = service.isDuplicateld ( id );
			if(r == 0) {
				model.addAttribute("result","false");
			}else {
				model.addAttribute("result","true");
			}
			return "include/result";
	}
//	@RequestMapping("/user/edit.do")
//	public String edit(Model model , UserVo vo) {
//			model.addAttribute("vo", service.edit(vo));
//			
//		return "/user/edit";
//	}
//	@RequestMapping("/user/update.do")
//	public String update(Model model , UserVo vo, @RequestParam("filename") MultipartFile filename, HttpServletRequest req , HttpServletResponse res) {
//			int r = service.update(vo);
//			if(r > 0) {
//				model.addAttribute("msg", "정상적으로 수정 되었습니다.");
//				model.addAttribute("url", "index.do");
//						
//			}else {
//				model.addAttribute("msg", "수정실패.");
//				
//			}
//			return "include/alert";			
//	}
//	@RequestMapping("/user/delete.do")
//	public String delete(Model model, UserVo vo) {
//		int r = service.delete(vo);
//		if(r > 0) {
//			model.addAttribute("reulst", "true");				
//		}else {
//			model.addAttribute("reulst", "false");
//		}
//		return "user/result";			
//	}
	
}