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
import order.OrderService;
import order.OrderVo;
import returning.ReturningService;
import returning.ReturningVo;
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
	@Autowired
	OrderService oservice;
	@Autowired
	BoardService boservice;
	@Autowired
	ReturningService rservice;
//로그인페이지
	@RequestMapping("/admin")
	public String index() {
		return "admin/index";
	}
//게시판리스트
	@RequestMapping("admin/board/index.do")
	public String boardIndex(BoardVo vo, Model model) {
		model.addAttribute("list", boservice.selectAll(vo));
		return "admin/board/index";
	}
//회원 리스트
	@RequestMapping("admin/member/index.do")
	public String memberIndex(UserVo vo , Model model) {
		model.addAttribute("list", uservice.selectAll(vo));
		
		return "admin/member/index";
	}
//상품 리스트
	@RequestMapping("admin/product/index.do")
	public String productIndex(BookVo vo , Model model) {
		vo.setDirect("asc");
		model.addAttribute("list", bservice.selectAlladmin(vo));
		
		return "admin/product/index";
	}
//주문 리스트
	@RequestMapping("admin/order/index.do")
	public String orderIndex(OrderVo vo , Model model) {
		vo.setPageRange(10);
		model.addAttribute("list", oservice.selectAdmin(vo));
		
		return "admin/order/index";
	}
//반품 리스트
	@RequestMapping("admin/retune/index.do")
	public String retuneIndex(ReturningVo vo , Model model) {
		model.addAttribute("list", rservice.selectAll(vo));
		
		return "admin/retune/index";
	}
// 광고 리스트
	@RequestMapping("admin/productAD/index.do")
	public String productADidx(BookVo vo , Model model) {
		model.addAttribute("list", bservice.adselect(vo));
		return "admin/productAD/index";
	}
	
// 상품 등록
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
			vo.setB_imgmain(real);
			bservice.bookimg(vo);
			}catch (Exception e) {}
		}
		bservice.insert(vo);
		
		return "redirect:index.do?orderby=b_regdate";
	}
//광고 등록
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
		
		return "redirect:index.do?orderby=b_regdate";
	}
// 상품 수정
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
				model.addAttribute("url", "index.do?orderby=b_regdate");
						
			}else {
				model.addAttribute("msg", "수정실패.");
				model.addAttribute("url", "veiw.do?no="+vo.getB_no());
			}
			return "include/alert";			
	}
//광고 수정
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
				model.addAttribute("url", "index.do?orderby=b_regdate");
						
			}else {
				model.addAttribute("msg", "수정실패.");
				model.addAttribute("url", "veiw.do?no="+vo.getAd_no());
			}
			return "include/alert";			
	}
// 반품 수정
	@RequestMapping("admin/retune/update.do")
	public String returnupdate(ReturningVo vo , Model model) {
		int r = rservice.updatepsno(vo);
		if(r > 0) {
			model.addAttribute("msg", "정상적으로 수정 되었습니다.");
			model.addAttribute("url", "index.do?orderby=b_regdate");
					
		}else {
			model.addAttribute("msg", "수정실패.");
			model.addAttribute("url", "veiw.do?no="+vo.getReturning_no());
		}
		return "include/alert";	
	}

//회원 상세
	@RequestMapping("admin/member/view.do")
	public String memberview(UserVo vo, Model model) {
		model.addAttribute("vo", uservice.detail(vo));
		return "admin/member/view";
	}
//상품 상세&수정폼
	@RequestMapping("admin/product/view.do")
	public String memberview(BookVo vo, Model model) {
		model.addAttribute("ctg", bservice.ctg(vo));
		model.addAttribute("vo", bservice.deatil(vo));
		return "admin/product/view";
	}
//게시판 상세&수정폼
	@RequestMapping("admin/board/view.do")
	public String boardview(Model model, BoardVo vo) {
		model.addAttribute("vo", boservice.detail(vo));
		return "admin/board/view";
	}
//광고 상세&수정폼
	@RequestMapping("admin/productAD/view.do")
	public String productADview(BookVo vo, Model model) {
		model.addAttribute("vo", bservice.detailAD(vo));
		return "admin/productAD/view";
	}
//주문 상세&수정폼
	@RequestMapping("admin/order/view.do")
	public String orderview(OrderVo vo, Model model) {
		model.addAttribute("vo", oservice.selectoneAdmin(vo));
		model.addAttribute("list", oservice.selectAdmindelist(vo));
		return "admin/order/view";
	}
// 반품 상세&수정폼
	@RequestMapping("admin/retune/view.do")
	public String ReturnOrReplaceListDetails(Model model, ReturningVo vo) {
		model.addAttribute("vo", rservice.detail1(vo));
		vo.setB_no(vo.getB_no());
		model.addAttribute("detail2", rservice.detail2(vo));
		model.addAttribute("op", rservice.selectop(vo));
		return "admin/retune/view";
	}
	
//상품 등록폼
	@RequestMapping("admin/product/write.do")
	public String productwrite(BookVo vo , Model model) {
		model.addAttribute("ctg", bservice.ctg(vo));
		return "admin/product/write";
	}
//광고 등록폼
	@RequestMapping("admin/productAD/write.do")
	public String productADwrite() {
		return "admin/productAD/write";
	}
//게시판 등록폼
	@RequestMapping("admin/board/write.do")
	public String boardwrite() {
		return "admin/board/write";
	}
//관리자 로그인
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
			sess.setAttribute("adminInfo", v);
			return "redirect:board/index.do";
		}
	}
//관리자 로그아웃
	@RequestMapping("/admin/logout.do")
	public String logout(HttpSession sess, Model model) {
		sess.invalidate();
		model.addAttribute("msg", "로그아웃");
		model.addAttribute("url", "/bsp/admin");
		return "include/alert";
	}
//광고 그룹 삭제
	@RequestMapping("admin/productAD/grouDelete.do")
	public String deleteg(Model model, HttpServletRequest req) {
		String[] no = req.getParameterValues("ad_no");
		int count = 0;
		for(int i = 0; i<no.length; i++) {
			System.out.println(no[i]);
			BookVo vo= new BookVo();
			vo.setAd_no(Integer.parseInt(no[i]));
			count+=bservice.deletead(vo);
		}
		model.addAttribute("msg", "총" +count+"건이 삭제되었습니다.");
		model.addAttribute("url", "index.do?orderby=b_regdate");
		return "include/alert";		
	}
	
}
