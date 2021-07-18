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

import comment.CommentService;
import comment.CommentVo;

@Controller
public class BookController {

	@Autowired
	BookService service;
     
	
	static final String TABLENAME = "board";
	
	@RequestMapping("/test/index.do")
	public String index(Model model, BookVo vo) {
		model.addAttribute("list", service.selectAll(vo));//list란 이름으로 전체 데이터가 dao에 담겨서 모델에 담김(=request에 담김=스프링이 담아줌)
		return "test/index";
	}
}
