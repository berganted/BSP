package order;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cart.CartService;
import cart.CartVo;


@Controller
public class OrderController {
	
	@Autowired
	OrderService service;
	@Autowired
	CartService Cservice;

	@RequestMapping("/order/buy.do")
	public String buy() {
		return "order/BuyForm";
	}
	@RequestMapping("/order/cart.do")
	public String cart(Model model, CartVo vo) {
		model.addAttribute("cartList",Cservice.selectAll(vo));
		return "order/Cart";
	}
	
	@RequestMapping("/order/list.do")
	public String orderList(Model model, OrderVo vo) {
		model.addAttribute("orderList",service.selectAll(vo));
		return "order/OrderList";
	}
	
	@RequestMapping("/order/detail.do")
	public String orderListDetails(Model model, OrderVo vo) {
		model.addAttribute("vo",service.detail1(vo));
		model.addAttribute("detail2",service.detail2(vo));
		return "order/OrderListDetails";
	}
	
	
}