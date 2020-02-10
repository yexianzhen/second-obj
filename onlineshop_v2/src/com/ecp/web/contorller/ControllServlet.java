package com.ecp.web.contorller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecp.web.handler.UserHandler;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet("*.do")
public class ControllServlet extends HttpServlet {
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
				//1:刘强东接受资本或者是董事会给你的要求
				//怎么获得	UserRegisterServlet.do
				System.out.println("ControllServlet.doPost()");
				String path = request.getServletPath();
				//2:老刘拿到要去之后和我们当前公司的架构去对应
				//去掉相应的多余的字符 去匹配
				path = path.substring(0, path.lastIndexOf("."));
				
			//3:对应好了之后具体的总裁去完成
			//设计好handler
				if("/user/userLogin".equals(path)) {
					UserHandler userHandler = new UserHandler();
					userHandler.login(request,response);
				}else if("/user/register".equals(path)) {
					UserHandler userHandler = new UserHandler();
					userHandler.register(request,response);
				}
			}catch(Exception e) {
				
				e.printStackTrace();
			}
		
	}

}









