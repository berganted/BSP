package cart;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import book.BookVo;


@Controller
public class CartController {
	
	@Autowired
	CartService service;

	@RequestMapping("/cart/insert.do")
	public String insert(CartVo vo , Model model) {
		vo.setB_price(vo.getIo_amount()*vo.getB_price());
		int r = service.insert(vo);
		if(r > 0) {
			model.addAttribute("msg", "장바구니에 추가 되었습니다.");
					
		}else {
			model.addAttribute("msg", "추가 실패.");
		}
		return "include/alert2";		
	}
	@RequestMapping("/cart/delete.do")
	public String delete( Model model, HttpServletRequest req) {
		String[] no = req.getParameterValues("checkOne");
		int count = 0;
		for(int i = 0; i<no.length; i++) {
			System.out.println(no[i]);
			CartVo vo= new CartVo();
			vo.setCart_no(Integer.parseInt(no[i]));
			count+=service.delete(vo);
		}
		model.addAttribute("msg", " 삭제되었습니다.");
		model.addAttribute("url", "/bsp/order/cart.do");
		return "include/alert";		
		
	}
	@RequestMapping("/cart/deleteone.do")
	public String deleteone(CartVo vo, Model model) {
		service.delete(vo);
		model.addAttribute("msg", " 삭제되었습니다.");
		model.addAttribute("url", "/bsp/order/cart.do");
		return "include/alert";		
	}
	
	
}