package com.ecp.dao;

import com.ecp.entity.User;
import com.ecp.exception.ManagerUserException;

public interface UserDao {

	/**
	 * ע���û�
	 * @param user
	 */
	public void add(User user) throws ManagerUserException;
	public User findById(Integer id)throws ManagerUserException;
	/**
	 * ��¼
	 * @param name �û���
	 * @param passwd ����
	 * @return user
	 */
	public User Login(String name,String passwd)throws ManagerUserException;
	
	public void update(User user)throws ManagerUserException;
	public void delete(User user) throws ManagerUserException;
}
