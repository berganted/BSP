package admin;

import java.io.File;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import board.BoardService;
import board.BoardVo;
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
	public String productIndex(BookVo vo , Model model) {
		model.addAttribute("list", bservice.selectAlladmin(vo));
		
		return "admin/product/index";
	}
	@RequestMapping("admin/productAD/index.do")
	public String productADidx(BookVo vo , Model model) {
		model.addAttribute("list", bservice.adselect(vo));
		return "admin/productAD/index";
	}
	@RequestMapping("admin/product/insert.do")
	public String productInsert(BookVo vo , Model model,@RequestParam("filename_tmp") MultipartFile filename, HttpServletRequest req) {
		if(!filename.isEmpty()) {
			try {
			String org = filename.getOriginalFilename();//원본 파일명
			String ext ="";
			ext = org.substring(org.lastIndexOf("."));
			String real = new Date().getTime()+ext;//서버에 저장할 파일명
			String path = req.getRealPath("/img/");
			System.out.println(path);
			filename.transferTo(new File(path+real));
			vo.setFilename_org(org);
			vo.setFilename_real(real);
			vo.setB_imgmain(real);
			bservice.bookimg(vo);
			}catch (Exception e) {}
		}
		bservice.insert(vo);
		
		return "redirect:index.do";
	}
	@RequestMapping("admin/productAD/insert.do")
	public String adinsert(BookVo vo , Model model,@RequestParam("filename_tmp") MultipartFile filename, HttpServletRequest req) {
		if(!filename.isEmpty()) {
			try {
				String org = filename.getOriginalFilename();//원본 파일명
				String ext ="";
				ext = org.substring(org.lastIndexOf("."));
				String real = new Date().getTime()+ext;//서버에 저장할 파일명
				String path = req.getRealPath("/ad/");
				System.out.println(path);
				filename.transferTo(new File(path+real));
				vo.setAd_img(real);
				bservice.bookimgad(vo);
			}catch (Exception e) {}
		}
		bservice.update(vo);
		
		return "redirect:index.do";
	}
	
	@RequestMapping("admin/product/update.do")
	public String update(Model model , BookVo vo, @RequestParam("filename_tmp") MultipartFile filename, HttpServletRequest req , HttpServletResponse res) {
			if(!filename.isEmpty()) {
				try {
				String org = filename.getOriginalFilename();//원본 파일명
				String ext ="";
				ext = org.substring(org.lastIndexOf("."));
				String real = new Date().getTime()+ext;//서버에 저장할 파일명
				String path = req.getRealPath("/img/");
				System.out.println(path);
				filename.transferTo(new File(path+real));
				vo.setB_imgmain(real);
				bservice.bookimg(vo);
				}catch (Exception e) {}
			}
			int r = bservice.update(vo);
			if(r > 0) {
				model.addAttribute("msg", "정상적으로 수정 되었습니다.");
				model.addAttribute("url", "index.do");
						
			}else {
				model.addAttribute("msg", "수정실패.");
				model.addAttribute("url", "veiw.do?no="+vo.getB_no());
			}
			return "include/alert";			
	}
	@RequestMapping("admin/productAD/update.do")
	public String productADupdate(Model model , BookVo vo, @RequestParam("filename_tmp") MultipartFile filename, HttpServletRequest req , HttpServletResponse res) {
		String real="";
			if(!filename.isEmpty()) {
				try {
				String org = filename.getOriginalFilename();//원본 파일명
				String ext ="";
				ext = org.substring(org.lastIndexOf("."));
				 real = new Date().getTime()+ext;//서버에 저장할 파일명
				String path = req.getRealPath("/ad/");
				System.out.println(path);
				filename.transferTo(new File(path+real));
				vo.setAd_img(real);
				}catch (Exception e) {}
			}
			bservice.adupdate(vo);
			int r = bservice.update(vo);
			if(r > 0) {
				model.addAttribute("msg", "정상적으로 수정 되었습니다.");
				model.addAttribute("url", "index.do");
						
			}else {
				model.addAttribute("msg", "수정실패.");
				model.addAttribute("url", "veiw.do?no="+vo.getAd_no());
			}
			return "include/alert";			
	}


	@RequestMapping("admin/member/view.do")
	public String memberview(UserVo vo, Model model) {
		model.addAttribute("vo", uservice.detail(vo));
		return "admin/member/view";
	}
	@RequestMapping("admin/product/view.do")
	public String memberview(BookVo vo, Model model) {
		model.addAttribute("vo", bservice.deatil(vo));
		return "admin/product/view";
	}
	@RequestMapping("admin/board/view.do")
	public String boardview() {
		return "admin/board/view";
	}
	@RequestMapping("admin/productAD/view.do")
	public String productADview(BookVo vo, Model model) {
		model.addAttribute("vo", bservice.detailAD(vo));
		return "admin/productAD/view";
	}

	@RequestMapping("admin/product/write.do")
	public String productwrite() {
		return "admin/product/write";
	}
	@RequestMapping("admin/productAD/write.do")
	public String productADwrite() {
		return "admin/productAD/write";
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
