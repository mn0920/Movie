package kr.min.movie.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.min.movie.vo.AccountVo;

public class UnauthorityInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
		    throws Exception {
		HttpSession session = request.getSession();
		AccountVo user = (AccountVo)session.getAttribute("user");
		if(user != null) {
			response.sendRedirect("/movie/m/R");
			/*alert("추천영화는 회원분들만 받을 수 있습니다.");*/
			return false;
		}
		return true;
	}

		public void postHandle(
				HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)
				throws Exception {
		}
}
