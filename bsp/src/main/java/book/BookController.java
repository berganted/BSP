package book;

import java.io.File;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import board.BoardVo;
import comment.CommentService;
import comment.CommentVo;

@Controller
public class BookController {

	@Autowired
	BookService service;
     
	
	@RequestMapping("/book/Book_KsmallIdx.do")
	public String ksmall(Model model, BookVo vo) {
		model.addAttribute("list", service.selectAll(vo));//list란 이름으로 전체 데이터가 dao에 담겨서 모델에 담김(=request에 담김=스프링이 담아줌)
		return "book/Book_KsmallIdx";
	}
	
	
	@RequestMapping("/book/Book_KbigIdx.do") 
	public String v(BookVo vo , Model model) {
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
		vo.setB_ctgno2key(1);
		model.addAttribute("ctg", service.ctg2name(vo));
	return "/book/Book_KbigIdx" ;

	}
	
	// index.do 오늘의 책
	@RequestMapping("/sample/index.do") 
	public String index(BookVo vo , Model model) {
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list4", service.selectAll4(vo));
		model.addAttribute("list5", service.selectAll5(vo));
		model.addAttribute("list6", service.selectAll6(vo));
		
	return "/sample/index" ;

	}
	
	/*
	 * @RequestMapping("/sample/ad.do") public String productInsert(BookVo vo ,
	 * Model model,@RequestParam("filename_tmp") MultipartFile filename,
	 * HttpServletRequest req) { if(!filename.isEmpty()) { try { String org =
	 * filename.getOriginalFilename();//원본 파일명 String ext =""; ext =
	 * org.substring(org.lastIndexOf(".")); String real = new
	 * Date().getTime()+ext;//서버에 저장할 파일명 String path = req.getRealPath("/img/");
	 * System.out.println(path); filename.transferTo(new File(path+real));
	 * vo.setFilename_org(org); vo.setFilename_real(real); vo.setAd_img(real);
	 * service.bookimg(vo); }catch (Exception e) {} } service.insert(vo);
	 * 
	 * return "redirect:index.do"; } 도윤 test
	 */
}
	
	
	
	
	
	
	
	
	
	
	
	
	

