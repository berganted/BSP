package order;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class OrderController {
	
	@Autowired
	OrderService service;

	@RequestMapping("/order/buy.do")
	public String Buy() {
		return "order/BuyForm";
	}
	@RequestMapping("/order/cart.do")
	public String Cart() {
		return "order/Cart";
	}
	
	@RequestMapping("/order/list.do")
	public String OrderList(Model model, OrderVo vo) {
		model.addAttribute("orderList",service.selectAll(vo));
		return "order/OrderList";
	}
	
	@RequestMapping("/order/detail.do")
	public String OrderListDetails(Model model, OrderVo vo) {
		model.addAttribute("vo",service.detail1(vo));
		model.addAttribute("detail2",service.detail2(vo));
		return "order/OrderListDetails";
	}
	
	
}