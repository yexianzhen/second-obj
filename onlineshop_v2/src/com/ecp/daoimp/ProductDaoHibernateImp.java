package com.ecp.daoimp;

import java.util.Collection;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.criterion.Restrictions;

import com.ecp.dao.ProductDao;
import com.ecp.entity.Product;
import com.ecp.exception.ManagerProductException;
import com.ecp.util.HibernateUtil;


public class ProductDaoHibernateImp implements ProductDao{
	
	@Override
	public Product findById(Integer id) throws ManagerProductException {
		
		Session session = null;
		Product product = null;
		try{
			session=HibernateUtil.getSession();
			session.getTransaction().begin();
			 product = (Product) session.get(Product.class, id);
			session.getTransaction().commit();
		}catch(Exception e){
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally{
			session.close();
		}
		
		return product;
	}

	@Override
	public Collection findAll() throws ManagerProductException {
		Session session = null;
		List  productList = null;
		try{
			session=HibernateUtil.getSession();
			session.getTransaction().begin();
			productList = session.createQuery("from Product").list();
			session.getTransaction().commit();
		}catch(Exception e){
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally{
			session.close();
		}
		
		return productList;
	}

	@Override
	public Collection find(int start, int max) throws ManagerProductException {
		Session session = null;
		List  productList = null;
		try{
			session=HibernateUtil.getSession();
			session.getTransaction().begin();
			productList = session.createQuery("from Product").setMaxResults(max).setFirstResult(start).list();
			session.getTransaction().commit();
		}catch(Exception e){
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally{
			session.close();
		}
		
		return productList;
	}

	@Override
	public int getTotal() throws ManagerProductException {
		Session session = null;
		int  total = 0;
		try{
			session=HibernateUtil.getSession();
			session.getTransaction().begin();
			total= ((Integer)session.createQuery(" select  count(*) from  Product ").uniqueResult()).intValue();
			session.getTransaction().commit();
		}catch(Exception e){
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally{
			session.close();
		}
		
		return total;
	}

	@Override
	public Collection find(Product product) throws ManagerProductException {
		Transaction tran = null;
		Collection list = null;
		Session session = null;
		try {
			session = HibernateUtil.getSession();
			tran = session.beginTransaction();
			Criteria crit = session.createCriteria(Product.class);
			if (product.getAuthor().equals("")) {
				crit.add(Restrictions.like("author", "%"));
			} else {
				crit.add(Restrictions.like("author", "%" + product.getAuthor()
						+ "%"));
			}
			if (product.getName().equals("")) {
				crit.add(Restrictions.like("name", "%"));
			} else {
				crit.add(Restrictions.like("name", "%" + product.getName()
						+ "%"));
			}
			if (product.getPublish().equals("")) {
				crit.add(Restrictions.like("publish", "%"));
			} else {
				crit.add(Restrictions.like("publish", "%"
						+ product.getPublish() + "%"));
			}
			list = crit.list();
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tran.rollback();
		} finally {
			session.close();
			return list;
		}
	}

	public static void main(String[] args) throws ManagerProductException {
		ProductDao dao = new ProductDaoHibernateImp();
		System.out.println(dao.findAll().size());
	}
}
