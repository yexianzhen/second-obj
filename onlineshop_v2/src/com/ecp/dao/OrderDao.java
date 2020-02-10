package com.ecp.dao;

import java.util.Collection;

import com.ecp.entity.Order;
import com.ecp.exception.ManagerOrderException;

public interface OrderDao {
	/**
	 * Ìí¼Ó¶©µ¥ 
	 * @param order
	 */
	public void addOrder(Order order)throws ManagerOrderException;
	public Collection findAll(String user_name) throws ManagerOrderException;
	public Order findById(Integer id) throws ManagerOrderException;

}
