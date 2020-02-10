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
       
    

	/**${pageContext.request.contextPath } ��̬���webӦ�ó����� ����������
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//����������form����˵�϶� ��ֻ��Ҫʵ��һ�� һ��form��ֻ��һ��submit
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			System.out.println("LoginServlet.doPost()");
		//1����ҳ�����û������ֵ
		String name = request.getParameter("name");
		String password = request.getParameter("passwd");
		//2:��Ҫ���ҵ�service ���û������ֵ����ȥ
		UserBiz userBiz = new UserBiz();
		//3�������뷨    http://localhost:9999/onlineshop/UserLoginServlet(�� ���û��Զ���)
		User user = userBiz.login(name, password);
		if(user != null) {
			//�������ݿ���
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









