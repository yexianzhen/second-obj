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
				//1:��ǿ�������ʱ������Ƕ��»�����Ҫ��
				//��ô���	UserRegisterServlet.do
				System.out.println("ControllServlet.doPost()");
				String path = request.getServletPath();
				//2:�����õ�Ҫȥ֮������ǵ�ǰ��˾�ļܹ�ȥ��Ӧ
				//ȥ����Ӧ�Ķ�����ַ� ȥƥ��
				path = path.substring(0, path.lastIndexOf("."));
				
			//3:��Ӧ����֮�������ܲ�ȥ���
			//��ƺ�handler
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









