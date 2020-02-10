package com.ecp.web.contorller.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecp.biz.UserBiz;
import com.ecp.entity.User;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	/**${pageContext.request.contextPath } 动态获得web应用程序名 （工程名）
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//正常对我们form表单来说肯定 是只需要实现一个 一个form表单只有一个submit
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			System.out.println("LoginServlet.doPost()");
		//1：从页面获得用户输入的值
		String name = request.getParameter("name");
		String password = request.getParameter("passwd");
		//2:我要找我的service 把用户输入的值传进去
		UserBiz userBiz = new UserBiz();
		//3：调用想法    http://localhost:9999/onlineshop/UserLoginServlet(变 是用户自定义)
		User user = userBiz.login(name, password);
		if(user != null) {
			//代表数据库有
			request.getRequestDispatcher("/success.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		}catch(Exception e) {
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			e.printStackTrace();
		}
		
	}

}









