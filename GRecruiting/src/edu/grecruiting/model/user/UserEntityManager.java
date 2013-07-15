package edu.grecruiting.model.user;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import edu.grecruiting.util.HibernateUtil;

public class UserEntityManager {
	public static UserEntity getByLoginPassword(String login, String password){
		Session session = HibernateUtil.getCurrentSession();
		Transaction t = session.getTransaction();
		t.begin();
		List<UserEntity> user = session.createQuery("from UserEntity WHERE login='"+login+"' AND password='"+password+"'").list();
		t.commit();
		return user.isEmpty()? null: user.get(0);
	
	}
	public static boolean addNew(UserEntity user){
		Session session = HibernateUtil.getCurrentSession();
		Transaction t = session.getTransaction();
		t.begin();
		try{
			session.save(user);
		}catch(Exception ex){
			session.getTransaction().rollback();
			return false;
		}
		t.commit();
		return true;
	}
}
