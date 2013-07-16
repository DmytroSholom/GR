package edu.grecruiting.model.vacancy;

import org.hibernate.Session;

import edu.grecruiting.util.HibernateUtil;

public class VacancyManager {
	public static boolean addNew(VacancyEntity vacancy){
		Session session = HibernateUtil.getCurrentSession();	
		session.beginTransaction();
		try{
			session.save(vacancy);
		}catch(Exception ex){
			session.getTransaction().rollback();
			return false;
		}
		session.getTransaction().commit();
		return true;
	}
}
