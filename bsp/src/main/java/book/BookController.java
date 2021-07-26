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
     
	/*
	 * @RequestMapping("/book/Book_KbigIdx.do") public String selectCtgno2(Model
	 * model, BookVo vo) { model.addAttribute("vo", service.selectCtgno2(vo));
	 * 
	 * return "book/Book_KbigIdx"; }
	 */
	@RequestMapping("/book/Book_KsmallIdx.do")
	public String ksmall(Model model, BookVo vo) {
		model.addAttribute("list", service.selectAllBasic(vo));//list란 이름으로 전체 데이터가 dao에 담겨서 모델에 담김(=request에 담김=스프링이 담아줌)
	
		return "book/Book_KsmallIdx";
	}
	
	
	
	/*
	 * @RequestMapping("/book/Book_KsmallIdx1.do") public String ksmall1(Model
	 * model, BookVo vo) { model.addAttribute("list", service.selectAll(vo));//list란
	 * 이름으로 전체 데이터가 dao에 담겨서 모델에 담김(=request에 담김=스프링이 담아줌)
	 * 
	 * return "book/Book_KsmallIdx"; }
	 * 
	 * @RequestMapping("/book/Book_KsmallIdx2.do") public String ksmall2(Model
	 * model, BookVo vo) { model.addAttribute("list", service.selectAll(vo));//list란
	 * 이름으로 전체 데이터가 dao에 담겨서 모델에 담김(=request에 담김=스프링이 담아줌)
	 * 
	 * return "book/Book_KsmallIdx"; }
	 * 
	 * @RequestMapping("/book/Book_KsmallIdx3.do") public String ksmall3(Model
	 * model, BookVo vo) { model.addAttribute("list", service.selectAll(vo));//list란
	 * 이름으로 전체 데이터가 dao에 담겨서 모델에 담김(=request에 담김=스프링이 담아줌)
	 * 
	 * return "book/Book_KsmallIdx"; }
	 */
	
	
	@RequestMapping("/book/Book_KbigIdx.do") //소설
	public String kbig(BookVo vo , Model model) {
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
		vo.setB_ctgno2key(1); //소설
		vo.setB_ctgno2(1);
		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		
		return "/book/Book_KbigIdx" ;


	}
	@RequestMapping("/book/Book_KbigIdx1.do") //경제경영
	public String kbig1(BookVo vo , Model model) {
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
		vo.setB_ctgno2key(5); //경제경영
		vo.setB_ctgno2(2);
		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		
		return "/book/Book_KbigIdx" ;
		
	}
	@RequestMapping("/book/Book_KbigIdx2.do") //자연과학
	public String kbig2(BookVo vo , Model model) {
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
		vo.setB_ctgno2key(8); //자연과학
		vo.setB_ctgno2(3);
		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		
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
}
	
	
	
	
	
	
	
	
	
	
	
	
	

