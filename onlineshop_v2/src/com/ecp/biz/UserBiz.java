package com.ecp.biz;

import com.ecp.dao.ProductDao;
import com.ecp.dao.UserDao;
import com.ecp.daoimp.ProductDaoHibernateImp;
import com.ecp.daoimp.UserDaoHibernateImp;
import com.ecp.entity.User;
import com.ecp.exception.ManagerUserException;

public class UserBiz {
	private   UserDao  dao = new UserDaoHibernateImp();
	private   ProductDao  p_dao = new ProductDaoHibernateImp();
	public void  addUser(User user)throws ManagerUserException{
		dao.add(user);
	}
	public  User  login(String name, String  passwd)throws ManagerUserException{
		return  dao.Login(name, passwd );
	}
	public  User  findById(Integer  id)throws ManagerUserException{
		return  dao.findById(id);
	}
	
	public  void  modify(User  user) throws  ManagerUserException{
		dao.update(user);
	}
}
