package com.ecp.daoimp;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;


import com.ecp.dao.UserDao;
import com.ecp.entity.User;
import com.ecp.exception.ManagerUserException;
import com.ecp.util.HibernateUtil;



public class UserDaoHibernateImp implements UserDao{
	
	
	@Override
	public void add(User user) throws ManagerUserException {
		Session   session = null;
		Transaction  tran = null;
		try{
			session = HibernateUtil.getSession();
			tran = session.beginTransaction();
			session.save(user);
			tran.commit();
		}catch(Exception e){
			tran.rollback();
			e.printStackTrace();
			throw  new ManagerUserException(e.getMessage());
		}finally{
			session.close();
		}
		
	}

	@Override
	public User findById(Integer id) throws ManagerUserException {
		Session   session = null;
		Transaction  tran = null;
		User  user = null;
		try{
			session = HibernateUtil.getSession();
			tran = session.beginTransaction();
			user = (User) session.get( User.class, id);
			tran.commit();
		}catch(Exception e){
			tran.rollback();
			e.printStackTrace();
			throw  new ManagerUserException(e.getMessage());
		}finally{
			session.close();
			return  user;
		}
	}

	@Override
	public User Login(String name, String passwd) throws ManagerUserException {
		Session session = null;
		Transaction  tran = null;
		User user = null;
		try{
			session = HibernateUtil.getSession();
			tran = session.beginTransaction();
			user=(User) session.createQuery(" from  User where name=:name and passwd =:passwd ").setString("name",name).setString("passwd",passwd).uniqueResult();
			tran.commit();
		}catch(Exception e){
			tran.rollback();
			e.printStackTrace();
			throw new ManagerUserException(e.getMessage() );
		}finally{
			session.close();
			return  user;
		}
	}

	@Override
	public void update(User user) throws ManagerUserException {
		Session   session = null;
		Transaction  tran = null;
		try{
			session = HibernateUtil.getSession();
			tran = session.beginTransaction();
			session.update(user);
			tran.commit();
		}catch(Exception e){
			tran.rollback();
			e.printStackTrace();
			throw  new ManagerUserException(e.getMessage());
		}finally{
			session.close();
		}
	}

	@Override
	public void delete(User user) throws ManagerUserException {
		Session   session = null;
		Transaction  tran = null;
		try{
			session = HibernateUtil.getSession();
			tran = session.beginTransaction();
			session.delete(user);
			tran.commit();
		}catch(Exception e){
			tran.rollback();
			e.printStackTrace();
			throw  new ManagerUserException(e.getMessage());
		}finally{
			session.close();
		}
	}

}
