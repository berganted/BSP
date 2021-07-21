package returning;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import order.OrderService;
import order.OrderVo;

@Controller
public class ReturningController {

	@Autowired
	ReturningService service;
	@Autowired
	OrderService Oservice;

	/* 반품메인창 */
	@RequestMapping("/returning/return.do")
	public String Return(Model model, ReturningVo vo) {
		model.addAttribute("list", service.selectPopup(vo));
		return "returning/ReturnForm";
	}

	/* 반품팝업창 */
	@RequestMapping("/returning/popup.do")
	public String ReturnPopup(Model model, OrderVo vo) {
		model.addAttribute("popupList", Oservice.selectPopup(vo));
		return "returning/ReturnPopup";
	}
	/* 반품팝업 값보내기*/
	@RequestMapping("/returning/popupSend.do")
	public String ReturnPopupSend(OrderVo vo, HttpServletRequest req, HttpSession sess ) {
		String[] no = req.getParameterValues("checkOne");
		for(int i=0; i<no.length; i++) {
			System.out.println(no[i]);
			
		}
		return "returning/ReturnPopupSend";
	}
	
	@RequestMapping("/returning/replace.do")
	public String Replace() {
		return "returning/ReplaceForm";
	}
	

	@RequestMapping("/returning/list.do")
	public String ReturnOrReplaceList(Model model, ReturningVo vo) {
		model.addAttribute("list", service.selectAll(vo) );
		return "returning/ReturnOrReplaceList";
	}

	@RequestMapping("/returning/detail.do")
	public String ReturnOrReplaceListDetails(Model model, ReturningVo vo) {
		model.addAttribute("vo", service.detail1(vo));
		model.addAttribute("detail2", service.detail2(vo));
		return "returning/ReturnOrReplaceListDetails";
	}

	/* 반품 insert */
	@RequestMapping("/returning/insert.do")
	public String insert(Model model, ReturningVo vo) {
		int r = service.insertRd(vo);
		if(r>0) {
			model.addAttribute("msg","정상적으로 등록되었습니다.");
			model.addAttribute("url","list.do");
		}else {
			model.addAttribute("msg","등록실패.");
			model.addAttribute("url","return.do");
		}
		return "include/alert";
	}


}