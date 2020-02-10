package com.ecp.dao;

import java.util.Collection;

import com.ecp.entity.Product;
import com.ecp.exception.ManagerProductException;

public interface ProductDao {
	
	public Product findById(Integer id) throws ManagerProductException;
	public Collection findAll() throws ManagerProductException;
	/**
	 * 分页查询
	 * @param start 第几个开始
	 * @param max 最多几个
	 * @return
	 */
	public Collection find(int start,int max) throws ManagerProductException;
	/**
	 * 总计多少
	 * @return
	 */
	public int getTotal() throws ManagerProductException;
	/**
	 * 根据商品条件查询
	 * @param product
	 * @return
	 */
	public Collection find(Product product) throws ManagerProductException;

}
