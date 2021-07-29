package order;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import book.BookService;
import book.BookVo;
import cart.CartService;
import cart.CartVo;
import returning.ReturningVo;
import user.UserVo;


@Controller
public class OrderController {
	
	@Autowired
	OrderService service;
	@Autowired
	CartService Cservice;
	@Autowired
	BookService bservice;

	@RequestMapping("/order/buy.do")
	public String buy(BookVo vo,Model model) {
		vo.getB_title();
		model.addAttribute("vo", bservice.deatil(vo));
		return "order/BuyForm";
	}
	@RequestMapping("/order/cartbuy.do")
	public String cartbuy(CartVo vo,Model model,HttpServletRequest req) {
		String[] no = req.getParameterValues("checkOne");
		List<CartVo> list  = new ArrayList<CartVo>(); 
		for (int i = 0; i < no.length; i++) {
			vo.setCart_no(Integer.parseInt(no[i]));
			CartVo rv= Cservice.selectone(vo);
			list.add(rv);
		}
		model.addAttribute("list", list);
		System.out.println("test3 : "+Arrays.toString(no));
		return "order/BuyForm2";
	}
	
	@RequestMapping("/order/cart.do")
	public String cart(Model model, CartVo vo,HttpSession sess) {
		UserVo uv = (UserVo) sess.getAttribute("userInfo");
		vo.setM_no(uv.getM_no());
		model.addAttribute("cartList",Cservice.selectAll(vo));
		sess.setAttribute("cartorder", Cservice.selectAll(vo));
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