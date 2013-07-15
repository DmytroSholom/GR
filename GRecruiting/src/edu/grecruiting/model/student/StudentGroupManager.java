package edu.grecruiting.model.student;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import edu.grecruiting.util.HibernateUtil;

public class StudentGroupManager {
	public static StudentGroupEntity getById(int id){
		Session session = HibernateUtil.getCurrentSession();
		session.beginTransaction();
		StudentGroupEntity group = (StudentGroupEntity)session.get(StudentGroupEntity.class, id);
		session.close();
		return group;
	}

	public static List<StudentGroupEntity> getAll(){
		Session session = HibernateUtil.getCurrentSession();
		Transaction t = session.getTransaction();
		t.begin();
		List groups = session.createQuery("from StudentGroupEntity").list();
		t.commit();
		return groups;
		
	}
	public static StudentGroupEntity getByName(String name){
		Session session = HibernateUtil.getCurrentSession();
		Transaction t = session.getTransaction();
		t.begin();
		StudentGroupEntity group = (StudentGroupEntity)session.createQuery("from StudentGroupEntity where name='"+name+"'").uniqueResult();
		t.commit();
		return group;
	}
}
