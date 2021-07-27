package cart;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CartController {
	
	@Autowired
	CartService service;

	@RequestMapping("/cart/insert.do")
	public String insert(CartVo vo , Model model) {
		int r = service.insert(vo);
		if(r > 0) {
			model.addAttribute("msg", "장바구니에 추가 되었습니다.");
					
		}else {
			model.addAttribute("msg", "추가 실패.");
		}
		return "include/alert";		
	}
	
}