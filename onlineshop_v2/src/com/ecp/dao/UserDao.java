package com.ecp.dao;

import com.ecp.entity.User;
import com.ecp.exception.ManagerUserException;

public interface UserDao {

	/**
	 * 注册用户
	 * @param user
	 */
	public void add(User user) throws ManagerUserException;
	public User findById(Integer id)throws ManagerUserException;
	/**
	 * 登录
	 * @param name 用户名
	 * @param passwd 密码
	 * @return user
	 */
	public User Login(String name,String passwd)throws ManagerUserException;
	
	public void update(User user)throws ManagerUserException;
	public void delete(User user) throws ManagerUserException;
}
