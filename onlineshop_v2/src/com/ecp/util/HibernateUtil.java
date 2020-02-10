package com.ecp.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class HibernateUtil {
	private static SessionFactory sessionFactory=null;
	static{
		StandardServiceRegistry registry = new StandardServiceRegistryBuilder().configure() .build();
		sessionFactory = new MetadataSources( registry ).buildMetadata().buildSessionFactory();
	}
	public static Session getSession(){
		return sessionFactory==null?null:sessionFactory.openSession();
	}
	public static void main(String[] args) {
		System.out.println("HibernateUtil.main()===?"+HibernateUtil.getSession());
	}
}
