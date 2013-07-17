package edu.grecruiting.model.company;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import edu.grecruiting.model.student.StudentEntity;
import edu.grecruiting.model.student.StudentGroupEntity;
import edu.grecruiting.util.HibernateUtil;

public class CompanyManager {
	public static boolean addNew(CompanyEntity company){
		Session session = HibernateUtil.getCurrentSession();	
		session.beginTransaction();
		try{
			session.save(company);
		}catch(Exception ex){
			session.getTransaction().rollback();
			return false;
		}
		session.getTransaction().commit();
		return true;
	}
	public static CompanyEntity getById(int id){
		Session session = HibernateUtil.getCurrentSession();
		session.beginTransaction();
		CompanyEntity company = (CompanyEntity)session.get(CompanyEntity.class, id);
		session.close();
		return company;
	}
	public static List<CompanyEntity> getAll(){
		Session session = HibernateUtil.getCurrentSession();
		Transaction t = session.getTransaction();
		t.begin();
		List<CompanyEntity> companies = session.createQuery("from CompanyEntity").list();
		t.commit();
		return companies;
	}
}
