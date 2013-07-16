package edu.grecruiting.model.resume;

import org.hibernate.Session;

import edu.grecruiting.util.HibernateUtil;

public class ResumeManager {
	public static boolean addNew(ResumeEntity resume){
		Session session = HibernateUtil.getCurrentSession();	
		session.beginTransaction();
		try{
			session.save(resume);
		}catch(Exception ex){
			session.getTransaction().rollback();
			return false;
		}
		session.getTransaction().commit();
		return true;
	}
	
}
