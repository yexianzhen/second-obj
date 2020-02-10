package com.ecp.daoimp;

import java.util.Collection;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.ecp.dao.OrderDao;
import com.ecp.entity.Order;
import com.ecp.exception.ManagerOrderException;

import com.ecp.util.HibernateUtil;



public class OrderDaoHibernateImp implements OrderDao{
	
	@Override
	public void addOrder(Order order) throws ManagerOrderException {
		Session  session  = null;
		Transaction  tran = null;
		try{
			session = HibernateUtil.getSession();
			tran = session.beginTransaction();
			session.save(order);
			tran.commit();
		}catch(Exception e ){
			tran.rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
		
	}

	@Override
	public Collection findAll(String user_name) throws ManagerOrderException {
		Session  session = null;
		Transaction   tran = null;
		Collection   list = null;
		try{
			session = HibernateUtil.getSession();
			tran = session.beginTransaction();
			list = session.createQuery(" from  Order o left join fetch o.status left join fetch o.payWay  where o.name =:name").setString("name", user_name).list();
			tran.commit();
		}catch(Exception  e){
			e.printStackTrace();
			tran.rollback();
		}finally{
		session.close();
		return  list;	
		}
		
	}
	

	@Override
	public Order findById(Integer id) throws ManagerOrderException {
		Session  session = null;
		Transaction   tran = null;
		Order  order    = null;
		try{
			session = HibernateUtil.getSession();
			tran = session.beginTransaction();
			order = (Order)session.get(Order.class, id);
			Hibernate.initialize(order.getOrderlines());
			tran.commit();
		}catch(Exception  e){
			e.printStackTrace();
			tran.rollback();
		}finally{
		session.close();
		return  order;	
		}
	}

}
