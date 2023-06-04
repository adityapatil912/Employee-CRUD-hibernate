package com.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	
	private static SessionFactory factory;
	
	public static synchronized SessionFactory getSessionFactory() {
		
		if (factory == null) {
			return new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		
		return factory;
	}

}
