package com.ecp.biz;

import java.util.Collection;

import com.ecp.dao.ProductDao;
import com.ecp.daoimp.ProductDaoHibernateImp;
import com.ecp.entity.Product;
import com.ecp.exception.ManagerProductException;


public class ProductBiz {

	private  ProductDao  dao  = new  ProductDaoHibernateImp();
	
	public  Product  findById(Integer  id )throws ManagerProductException{
		return  dao.findById(id);
	}
	public  Collection   findAll( )throws ManagerProductException{
		return dao.findAll();
	}
	//以下分页业务方法
	public  Collection    find(int start , int  max )throws  ManagerProductException{
		return   dao.find(start,  max );
	}
	public   int  getTotal()throws ManagerProductException{
		return   dao.getTotal();
	}
//	此方法用于根据条件动态查询商品信息
	public  Collection   find(Product product)throws ManagerProductException{
		return   dao.find(product);
	}

}
