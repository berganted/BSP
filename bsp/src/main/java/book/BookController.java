package book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import comment.CommentVo;

@Controller
public class BookController {

	@Autowired
	BookService service;
	
	
	
//-------------책상세	
	
	@RequestMapping("book/Book_detail.do")
	public String memberview(BookVo vo, Model model) {
		model.addAttribute("vo", service.deatil(vo));
		return "book/Book_detail";
	}
	
	
	
 //-----------------국내도서 상세분류 클릭시 나오는 list-----------------(selectall 강사님 질문ㄱ)
	@RequestMapping("/book/Book_KsmallIdx.do")
	public String ksmall(Model model, BookVo vo) {
		
		model.addAttribute("list", service.selectAllBasic(vo));// list란 이름으로 전체 데이터가 dao에 담겨서 모델에 담김(=request에 담김=스프링이
		return "book/Book_KsmallIdx";
	}
	

	//--------------------------국내도서 장르부분 (대분류중분류)---------------------------------------------------------------

	@RequestMapping("/book/Book_KbigIdx.do") // 가정살림
	public String kbig(BookVo vo, Model model) {
		//vo에 셋을 먼저 해줌
		vo.setDirect("ASC");
		vo.setB_ctgno1(1); //국내도서
		vo.setB_ctgno2key(1); // 중분류 이름값이 나온다 (ex가정살림)
		vo.setB_ctgno2(1); //상세분류 이름값(가정살림 안에 상세분류)
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
		model.addAttribute("vo", service.selectCtgno2(vo)); // 중분류값
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo)); //상세분류값

		return "/book/Book_KbigIdx";

	}

	@RequestMapping("/book/Book_KbigIdx1.do") // 경제경영
	public String kbig1(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(1);
		vo.setB_ctgno2key(5); 
		vo.setB_ctgno2(2);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
	
		
		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));

		return "/book/Book_KbigIdx";
		
		//1. vo에 셋을 하면 됨 --> vo셋을 젤 위로
		//2. 넘어올 때 주소에 파라미터를 주는 방법

	}

	@RequestMapping("/book/Book_KbigIdx2.do") // 소설
	public String kbig2(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(1);
		vo.setB_ctgno2key(8); 
		vo.setB_ctgno2(3);
	
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
		
	
		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_KbigIdx";
	}
	@RequestMapping("/book/Book_KbigIdx3.do") // 에세이
	public String kbig3(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(1);
		vo.setB_ctgno2key(12); 
		vo.setB_ctgno2(4);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));

		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_KbigIdx";
	}
	@RequestMapping("/book/Book_KbigIdx4.do") // 여행
	public String kbig4(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(1);
		vo.setB_ctgno2key(16); 
		vo.setB_ctgno2(5);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));

		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_KbigIdx";
	}
	@RequestMapping("/book/Book_KbigIdx5.do") // 인문
	public String kbig5(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(1);
		vo.setB_ctgno2key(19); 
		vo.setB_ctgno2(6);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
	
		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_KbigIdx";
	}
	@RequestMapping("/book/Book_KbigIdx6.do") // 자기계발
	public String kbig6(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(1);
		vo.setB_ctgno2key(23); // 자연과학
		vo.setB_ctgno2(7);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));

		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_KbigIdx";
	}
	@RequestMapping("/book/Book_KbigIdx7.do") // IT모바일
	public String kbig7(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(1);
		vo.setB_ctgno2key(27); // 자연과학
		vo.setB_ctgno2(8);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));

		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_KbigIdx";
	}



	@RequestMapping("/sample/index.do")
	public String index(BookVo vo, Model model) {
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));

		model.addAttribute("list4", service.selectAll4(vo));
		model.addAttribute("list5", service.selectAll5(vo));
		model.addAttribute("list6", service.selectAll6(vo));
		model.addAttribute("best", service.selectAll7(vo));
		model.addAttribute("popular", service.popular_search(vo));
	return "/sample/index" ;
	}
	// index_search 검색 페이지 
	@RequestMapping("/bsp/sample/index_search.do")
	public String search(Model model, BookVo vo, CommentVo cv) {
		System.out.println(vo.getSval());
		service.popular(vo);
		model.addAttribute("list0", service.selectAll(vo));
		return "sample/index_search";
	}

}
