/*
 * AssignTPODaoImpl Class contains all database related operations.
 * 
 * AssignTPODaoImpl Interface Class contains the implementations for various methods like 
 * 
 * Assign TPO(for FTPC)
 * Remove TPO(for FTPC)
 * View Users
 * Fetch User based on Username
 * 
 * 
 * 
 * */
package org.crce.interns.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.crce.interns.dao.AssignTPODao;
import org.crce.interns.model.UserDetails;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class AssignTPODaoImpl implements AssignTPODao {

	@Autowired
	private SessionFactory sessionFactory;
	
	/*@PersistenceContext
	private EntityManager entityManager;*/
	
	@Override
	public void assignTPO(UserDetails user) {
		System.out.println("In DAOImpl: Assign User");		
		
		sessionFactory.getCurrentSession().update(user);//Update RoleID in Userdetails Table
		
		// entityManager.merge(user);
	}

	@Override
	public List<UserDetails> viewUsers() {
		System.out.println("In DAOImpl: View Users");
		
		Session session = sessionFactory.openSession();
		
		String SQL_QUERY = "from UserDetails as u where u.roleId<>'1' and u.roleId<>'2' order by u.roleId";
		Query query = session.createQuery(SQL_QUERY);
		
		List<UserDetails> listUserDetails = query.list();
		
		return listUserDetails;
	
		//return entityManager.createQuery("select u from UserDetails u", UserDetails.class).getResultList();
	}

	public UserDetails getUser(UserDetails checkUser) {
		System.out.println("In DAOImpl: Get UserDetails User");
		
		UserDetails result = (UserDetails) sessionFactory.getCurrentSession().get(UserDetails.class,
				checkUser.getUserName());
		
		return result;
		
		/*String userName = checkUser.getUsername();
		UserDetails user = (UserDetails) entityManager.createQuery("select u from UserDetails u where u.username = :n")
				.setParameter("n", userName).getSingleResult();
		return user;*/
	}

	@Override
	public void removeTPO(UserDetails user) {
		System.out.println("In DAOImpl: Remove User");
		
		sessionFactory.getCurrentSession().update(user);//Update RoleID in Userdetails Table
		
		// entityManager.merge(user);
	}


}
