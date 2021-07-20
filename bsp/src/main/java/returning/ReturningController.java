package returning;

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

	@RequestMapping("/returning/return.do")
	public String Return(Model model, ReturningVo vo) {
		model.addAttribute("list", service.selectPopup(vo));
		return "returning/ReturnForm";
	}

	@RequestMapping("/returning/replace.do")
	public String Replace() {
		return "returning/ReplaceForm";
	}

	@RequestMapping("/returning/list.do")
	public String ReturnOrReplaceList() {
		return "returning/ReturnOrReplaceList";
	}

	@RequestMapping("/returning/detail.do")
	public String ReturnOrReplaceListDetails() {
		return "returning/ReturnOrReplaceListDetails";
	}

	@RequestMapping("/returning/popup.do")
	public String ReturnPopup(Model model, OrderVo vo) {
		model.addAttribute("popupList", Oservice.selectPopup(vo));
		return "returning/ReturnPopup";
	}


}