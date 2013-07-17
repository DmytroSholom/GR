package edu.grecruiting.model.student;

import java.util.List;

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
		StudentEntity student = (StudentEntity)session.createQuery("from StudentEntity where userId="+user.getId()).uniqueResult();
		t.commit();
		return student;
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
	public static StudentEntity getById(int id){
		Session session = HibernateUtil.getCurrentSession();
		session.beginTransaction();
		StudentEntity student = (StudentEntity)session.get(StudentEntity.class, id);
		session.close();
		return student;
	}
	public static List<StudentEntity> getAll(){
		Session session = HibernateUtil.getCurrentSession();
		Transaction t = session.getTransaction();
		t.begin();
		List<StudentEntity> studs = session.createQuery("from StudentEntity").list();
		t.commit();
		return studs;
		
	}
}
