package com.ecp.web.servlet.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecp.entity.User;

/**
 * Servlet Filter implementation class LoginFilter
 * 这里urlPatterns 只要写你要过滤的请求
 */
@WebFilter(urlPatterns= {"/AddToCartServlet","/ToModifyServlet"})
public class LoginFilter implements Filter {
	
	private FilterConfig fConfig;
    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("LoginFilter.doFilter()");
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse)response;
		User user  = (User) req.getSession().getAttribute("user");
		if(user != null) {
			//拦截后做完事情一定记得方向请求
			chain.doFilter(req, resp);
		}else {
			req.getRequestDispatcher("/login.jsp").forward(req, resp);
		}
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		this.fConfig = fConfig;
	}

}
