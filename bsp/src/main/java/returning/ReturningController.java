package returning;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import order.OrderService;

@Controller
public class ReturningController {

	@Autowired
	ReturningService service;
	@Autowired
	OrderService Oservice;

	/* 반품메인창 */
	@RequestMapping("/returning/return.do")
	public String returning(Model model, ReturningVo vo, HttpSession sess) {
		return "returning/ReturnForm";
	}

	/* 교환메인창 */
	@RequestMapping("/returning/replace.do")
	public String replace(Model model, ReturningVo vo) {
		return "returning/ReplaceForm";
	}

	/* 반품신청 값보내기 */
	@RequestMapping("/returning/returnSend.do")
	public String returnSend(ReturningVo vo, HttpServletRequest req, HttpSession sess , Model model) {
		String[] no = req.getParameterValues("checkOne");
		List<ReturningVo>list  = new ArrayList<ReturningVo>(); 
		System.out.println("test1");
		for (int i = 0; i < no.length; i++) {
			System.out.println("test2 : "+no[i]);
			vo.setIo_no(Integer.parseInt(no[i]));
			ReturningVo rv= service.selectPopupRt(vo);
			list.add(rv);
		}
		sess.setAttribute("returnList", list);
		System.out.println("test3 : "+Arrays.toString(no));
		return "redirect:/returning/return.do";
	}

	/* 교환신청 값보내기 */
	@RequestMapping("/returning/replaceSend.do") 
	public String returningPopupSend( ReturningVo vo , HttpServletRequest req, HttpSession sess ) { 
		String[] no = req.getParameterValues("checkOne"); 
		List<ReturningVo>list  = new ArrayList<ReturningVo>(); 
		for (int i = 0; i <no.length; i++) { 
			vo.setIo_no(Integer.parseInt(no[i])); 
			ReturningVo rv= service.selectPopupRp(vo);
			list.add(rv);
			} 
				sess.setAttribute("returnList", list);
				return "redirect:/returning/replace.do"; 
		}

	@RequestMapping("/returning/list.do")
	public String ReturnOrReplaceList(Model model, ReturningVo vo) {
		model.addAttribute("RList", service.selectAll(vo));
		return "returning/ReturnOrReplaceList";
	}

	@RequestMapping("/returning/detail.do")
	public String ReturnOrReplaceListDetails(Model model, ReturningVo vo) {
		model.addAttribute("vo", service.detail1(vo));
		vo.setB_no(vo.getB_no());
		model.addAttribute("detail2", service.detail2(vo));
		return "returning/ReturnOrReplaceListDetails";
	}

	/* 반품 insert */
	@RequestMapping("/returning/insert.do")
	public String insert(Model model, ReturningVo vo, HttpServletRequest req) {
		String[] no = req.getParameterValues("b_no"); 
		String[] ano = req.getParameterValues("io_amount") ;
		String[] ino = req.getParameterValues("io_no") ;
	
		int r = service.insertRd(vo);
		for (int i = 0; i < no.length; i++) {
			vo.setB_no(Integer.parseInt(no[i]));
			vo.setReturning_amount(Integer.parseInt(ano[i]));
			vo.setIo_no(Integer.parseInt(ino[i]));
			service.insertRt(vo);
			service.updatePs(vo.getReturning_no());
			service.updatePi(vo.getIo_no());
			System.out.println(no[i]);
		}
		if (r > 0) {
			model.addAttribute("msg", "정상적으로 등록되었습니다.");
			model.addAttribute("url", "list.do");
		} else {
			model.addAttribute("msg", "등록실패.");
			model.addAttribute("url", "return.do");
		}
		return "include/alert";
	}

}