package edu.grecruiting.model.student;

import org.hibernate.Session;
import org.hibernate.Transaction;

import edu.grecruiting.model.user.UserEntity;
import edu.grecruiting.util.HibernateUtil;

public class StudentManager {
	public static boolean addNew(StudentEntity student){
		Session session = HibernateUtil.getCurrentSession();
		
		session.beginTransaction();
		try{
			session.save(student);
		}catch(Exception ex){
			session.getTransaction().rollback();
			return false;
		}
		session.getTransaction().commit();
		return true;
	}
	public static StudentEntity getByUserId(UserEntity user){
		Session session = HibernateUtil.getCurrentSession();
		Transaction t = session.getTransaction();
		t.begin();
		StudentEntity group = (StudentEntity)session.createQuery("from StudentEntity where userId="+user.getId()).uniqueResult();
		t.commit();
		return group;
	}
	public static boolean update(StudentEntity student){
		Session session = HibernateUtil.getCurrentSession();
		Transaction t = session.getTransaction();
		try{
			t.begin();
			session.update(student);
			t.commit();
			return true;
		}catch(Exception e){
			t.rollback();
			return false;
		}
		
	}
}
