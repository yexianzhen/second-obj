package com.ecp.biz;

import java.util.Collection;

import com.ecp.dao.OrderDao;
import com.ecp.daoimp.OrderDaoHibernateImp;
import com.ecp.entity.Order;
import com.ecp.exception.ManagerOrderException;
/**
 * service²ã
 * @author Administrator
 *
 */
public class OrderBiz {
	private OrderDao  dao = new OrderDaoHibernateImp();
	public  void   addOrder(Order  order)throws ManagerOrderException{
		dao.addOrder(order);
	}
	public  Collection   findAll(String   user_name)  throws ManagerOrderException{
		return  dao.findAll(user_name);
	}
	public  Order  findById(Integer id) throws ManagerOrderException{
		return  dao.findById(id);
	}
}
