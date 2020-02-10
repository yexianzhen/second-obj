package com.ecp.web.contorller.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecp.biz.UserBiz;
import com.ecp.entity.ContcatInfo;
import com.ecp.entity.Country;
import com.ecp.entity.Province;
import com.ecp.entity.User;

/**
 * Servlet implementation class UserRegister
 */
@WebServlet("/UserRegisterServlet")
public class UserRegisterServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
  

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			System.out.println("UserRegisterServlet.doPost()");
		//1：从页面获得用户输入的值
		String name = request.getParameter("name");
		String password = request.getParameter("passwd");
		/*String country = request.getParameter("country");
		String province = request.getParameter("province");*/
		String city = request.getParameter("city");
		String street1 = request.getParameter("street1");
		String street2 = request.getParameter("street2");
		String zip = request.getParameter("zip");
		String homePhone = request.getParameter("homePhone");
		String cellPhone = request.getParameter("cellPhone");
		String email = request.getParameter("email");
		String officePhone = request.getParameter("officePhone");
		Country country = new Country();
		country.setId(1);
		Province province = new Province();
		province.setId(1);
		//2:我要找我的service 把用户输入的值传进去
		UserBiz userBiz = new UserBiz();
		//3：调用想法    http://localhost:9999/onlineshop/UserLoginServlet(变 是用户自定义)
		
		//我们自己去实例化一个用户
		User user = new User();
		user.setName(name);
		user.setPasswd(password);
		ContcatInfo info = new ContcatInfo();
		info.setCellPhone(cellPhone);
		info.setCity(city);
		info.setCountry(country);
		info.setProvince(province);
		info.setEmail(email);
		info.setStreet1(street1);
		info.setStreet2(street2);
		info.setZip(zip);
		info.setHomePhone(homePhone);
		info.setOfficePhone(officePhone);
		info.setUser(user);
		user.setInfo(info);
		userBiz.addUser(user);
		if(user != null) {
			//代表数据库有
			request.getRequestDispatcher("/success.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/register.jsp").forward(request, response);
		}
		}catch(Exception e) {
			request.getRequestDispatcher("/register.jsp").forward(request, response);
			e.printStackTrace();
		}
	}

}







