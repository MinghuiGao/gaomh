package cn.ctfo.dbc;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class HibernateUtils {

	private static SessionFactory mSessionFactory;
	static {
		Configuration config = new Configuration();
		config.configure();
		mSessionFactory = config.buildSessionFactory();
	}

	public static Session getSession() {
		Session session = null;
		if (mSessionFactory != null) {
			session = mSessionFactory.getCurrentSession();
		}
		return session;
	}
	
	public static void commit(Transaction tx){
		if(tx != null && !tx.wasCommitted()){
			tx.commit();
		}
	}

	public static void rollBack(Transaction tx){
		if(tx!= null && !tx.wasRolledBack()){
			tx.rollback();
		}
	}
	
	public static void main(String[] args) {
		Session session = HibernateUtils.getSession();
		Transaction beginTransaction = session.beginTransaction();
		System.out.println("main of hibernate utils ....");
	}
	
}
