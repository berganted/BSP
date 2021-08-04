package cart;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class CartController {
	
	@Autowired
	CartService service;

	@RequestMapping("/cart/insert.do")
	public String insert(CartVo vo , Model model,HttpSession sess) {
			vo.setB_price(vo.getIo_amount()*vo.getB_price());
			if (vo.getCart_cnt()==0) {
				vo.setCart_cnt(1);
			}
			 int r = service.insert(vo);
		if(r > 0) {
			model.addAttribute("msg", "장바구니에 추가 되었습니다.");
					
		}else {
			model.addAttribute("msg", "추가 실패.");
		}
		return "include/alert3";		
	}
	@RequestMapping("/cart/delete.do")
	public String delete(CartVo cv, Model model, HttpServletRequest req) {
		String[] no = req.getParameterValues("checkOne");
		int count = 0;
		if(no != null) {
			for(int i = 0; i<no.length; i++) {
				System.out.println(no[i]);
				CartVo vo= new CartVo();
				vo.setCart_no(Integer.parseInt(no[i]));
				count+=service.delete(vo);
			}
		}else {
			service.delete(cv);
			model.addAttribute("msg", " 삭제되었습니다.");
			model.addAttribute("url", "/bsp/order/cart.do");
			return "include/alert";		
		}
		model.addAttribute("msg", "총"+count+ "개가 삭제되었습니다.");
		model.addAttribute("url", "/bsp/order/cart.do");
		return "include/alert";		
		
	}
	
	
	
}