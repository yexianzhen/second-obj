package com.ecp.dao;

import java.util.Collection;

import com.ecp.entity.Product;
import com.ecp.exception.ManagerProductException;

public interface ProductDao {
	
	public Product findById(Integer id) throws ManagerProductException;
	public Collection findAll() throws ManagerProductException;
	/**
	 * ��ҳ��ѯ
	 * @param start �ڼ�����ʼ
	 * @param max ��༸��
	 * @return
	 */
	public Collection find(int start,int max) throws ManagerProductException;
	/**
	 * �ܼƶ���
	 * @return
	 */
	public int getTotal() throws ManagerProductException;
	/**
	 * ������Ʒ������ѯ
	 * @param product
	 * @return
	 */
	public Collection find(Product product) throws ManagerProductException;

}
