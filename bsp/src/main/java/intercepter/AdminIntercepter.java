package intercepter;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import admin.AdminVo;
import user.UserVo;

public class AdminIntercepter implements HandlerInterceptor {
	/*
	 * preHandle 컨트롤러 실행전
	 * postHandle 컨트롤러 실행 후(뷰 리턴전)
	 * afterComletion 뷰 실행 후
	 */
	@Override
	public boolean preHandle(HttpServletRequest req , HttpServletResponse res , Object hanler) throws Exception {
		HttpSession sess = req.getSession();
		AdminVo vo = (AdminVo)sess.getAttribute("adminInfo");
		if(vo == null) {
			res.setContentType("text/html;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.println("<script>");
			out.println("alert('로그인후 사용가능');");
			out.println("location.href='/bsp/admin/';");
			out.println("</script>");
			return false;
		}else {
			return true;
		}
	}
}

