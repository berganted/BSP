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
import point.PointService;
import point.PointVo;
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
	@Autowired
	PointService pservice;

	@RequestMapping("/order/buy.do")
	public String buy(BookVo vo,Model model,HttpServletRequest req) {
		 vo.setB_no(Integer.parseInt(req.getParameter("b_no")));
		 vo.setIo_amount(Integer.parseInt(req.getParameter("io_amount")));
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
	public String orderList(Model model, OrderVo vo,HttpSession sess) {
		UserVo uv = (UserVo)sess.getAttribute("userInfo");
		vo.setM_no(uv.getM_no());
		model.addAttribute("orderList",service.selectAdmin(vo));
		return "order/OrderList";
	}
	
	@RequestMapping("/order/detail.do")
	public String orderListDetails(Model model, OrderVo vo) {
		model.addAttribute("vo",service.detail1(vo));
		model.addAttribute("detail2",service.detail2(vo));
		return "order/OrderListDetails";
	}
	@RequestMapping("/order/insert.do")
	public String insert(OrderVo vo ,CartVo cv,PointVo pv, Model model,HttpServletRequest req) {
		String[] no = req.getParameterValues("b_no"); 
		String[] ano = req.getParameterValues("io_amount") ;
		String[] cno = req.getParameterValues("cart_no") ;
		int r = service.insert(vo);
		for (int i = 0; i < no.length; i++) {
			vo.setB_no(Integer.parseInt(no[i]));
			vo.setIo_amount(Integer.parseInt(ano[i]));
			pv.setP_state("사용");
			pv.setP_content("구매에 사용");
			pv.setM_no(vo.getM_no());
			service.insertIo(vo);
		}
		if (r > 0) {
			if(cno!=null) {
				for (int i = 0; i < cno.length; i++) {
					cv.setCart_no(Integer.parseInt(cno[i]));
					Cservice.delete(cv);
				}
			}
			
			if(pv.getP_used()>0) {
				int p=pservice.insertUse(pv);
				pservice.updateUse(pv);
			}
				pv.setP_state("적립");
				pv.setP_content("구매후 적립");
				pservice.insertA(pv);
				pservice.update(pv);
				
							
			model.addAttribute("msg", "정상적으로 등록되었습니다.");
			model.addAttribute("url", "list.do");
		} else {
			model.addAttribute("msg", "등록실패.");
			model.addAttribute("url", "return.do");
		}
		return "include/alert";
	}
	
	
}