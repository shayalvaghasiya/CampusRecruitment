/*
 * AssignTPCDaoImpl Class contains all database related operations.
 * 
 * AssignTPCDaoImpl Class contains the implementations for various methods like 
 * 
 * Assign TPC(for STPC)
 * Remove TPC(for STPC)
 * Assign TPCFac(for FTPC)
 * Remove TPC(for FTPC)
 * Assign special task to FTPC
 * View Users and View Tasks
 * Fetch User based on Username
 * Fetch Faculty User based on Username
 * Fetch UserRole based on RoleID
 * 
 * 
 * 
 * */
package org.crce.interns.dao.impl;

import java.util.List;

import org.crce.interns.dao.AssignTPCDao;
import org.crce.interns.model.FacultyUser;
import org.crce.interns.model.RMUser;
import org.crce.interns.model.UserDetails;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("assignTPCDao")
@Transactional
public class AssignTPCDaoImpl implements AssignTPCDao {

	/* @PersistenceContext 
	 private EntityManager entityManager;
	 */
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void assignTPC(UserDetails user) {
		System.out.println("In DAOImpl: Assign STPC");
		
		sessionFactory.getCurrentSession().update(user);//Update RoleID in Userdetails Table
		
		//entityManager.merge(user);
	}
	
	 @Override 
	 public void insertWork(FacultyUser fuser) {
	
		System.out.println("In DAOImpl: Assign Task");
		
		sessionFactory.getCurrentSession().update(fuser);//Update task in ftpc_special_role Table
		
		// entityManager.merge(fuser);
	 }
	

	@Override
	public List<UserDetails> viewUsers() {
		System.out.println("In DAOImpl: View Users");
		
		Session session = sessionFactory.openSession();
		
		String SQL_QUERY = "from UserDetails as u where u.roleId<>'1' and u.roleId<>'2' order by u.roleId";//Sort in ascending order by RoleID order by u.userName
		Query query = session.createQuery(SQL_QUERY);
		
		List<UserDetails> listUserDetails = query.list();
		
		return listUserDetails;
		
		//return entityManager.createQuery("select u from UserDetails u",UserDetails.class).getResultList();

	}

	@Override
	public List<FacultyUser> viewFacultyTasks() {
		
		System.out.println("In DAOImpl: View Tasks");
		
		Session session = sessionFactory.openSession();
		
		String SQL_QUERY = "from FacultyUser as f order by f.userName";//Sort in alphabetical order by Username
		Query query = session.createQuery(SQL_QUERY);
		
		List<FacultyUser> listUserDetails = query.list();
		
		return listUserDetails;
		
		// return entityManager.createQuery("select u from FacultyUser u", FacultyUser.class).getResultList();

	}
	@Override
	public UserDetails getUser(UserDetails checkUser) {
		System.out.println("In DAOImpl: Get UserDetails User");
		
		UserDetails result = (UserDetails) sessionFactory.getCurrentSession().get(UserDetails.class,
				checkUser.getUserName());
		
		return result;
		
		  /*String userName = checkUser.getUserName(); 
		  UserDetails user =(UserDetails) entityManager.createQuery("select u from UserDetails u where u.username = :n").setParameter("n", userName).getSingleResult(); return user;
		 */
	}
	
	@Override
	public FacultyUser getFacultyUser(FacultyUser fuser) {
		System.out.println("In DAOImpl: Get FTPC Special Role User");
		
		FacultyUser result = (FacultyUser) sessionFactory.getCurrentSession().get(FacultyUser.class,
				fuser.getUserName());
		
		if (result == null) {
			System.out.println("Error : User not present in Faculty Table");
			return null;//Return if User not present in ftpc_special_role Table
		}
		
		System.out.println("UserName in DAO IMPL after query:" + result.getUserName());
		System.out.println("UserWork in DAO IMPL after query:" + result.getUserWork());

		return result;
		
		/*String userName = fuser.getUsername();
		System.out.println("Username in DAO IMPL before query :" + fuser.getUserWork());		
		  FacultyUser fuser1 = (FacultyUser) entityManager.createQuery("select f from FacultyUser f where f.username = :n").setParameter("n", userName).getSingleResult();
		 */
	}

	
	@Override
	public RMUser getUserRole(String role_id) {
		System.out.println("In DAOImpl: Get User Role from ID");
		
		Session session = sessionFactory.openSession();
		
		String SQL_QUERY = "from RMUser r where r.role_id = :n";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter("n", role_id);
		
		List<RMUser> list = query.list();
	
		return list.get(0);
		
		/*RMUser rmuser = new RMUser();
		rmuser = (RMUser) entityManager.createQuery("select r from RMUser r where r.role_id = :n").setParameter("n", role_id).getSingleResult();
		return rmuser;*/
	}
	
	@Override
	public void removeTPC(UserDetails user) {
		System.out.println("In DAOImpl: Remove STPC");
		
		sessionFactory.getCurrentSession().update(user);//Update RoleID in Userdetails Table
	
		//entityManager.merge(user);
	}

	@Override
	public void assignTPCFac(UserDetails user) {
		System.out.println("In DAOImpl: Assign FTPC");
		
		sessionFactory.getCurrentSession().update(user);//Update RoleID in Userdetails Table
		
		FacultyUser fuser = new FacultyUser();
		
		System.out.println(user.getUserName());
		
		fuser.setUserName(user.getUserName());
		fuser.setUserWork("Null");
		
		sessionFactory.getCurrentSession().save(fuser);//Insert user in ftpc_special_role Table
		
	}
	
	@Override
	public void removeTPCFac(UserDetails user) {
		System.out.println("In DAOImpl: Assign FTPC");
		
		sessionFactory.getCurrentSession().update(user);
		
		FacultyUser fuser = new FacultyUser();
		
		System.out.println(user.getUserName());
		
		fuser.setUserName(user.getUserName());
		fuser= getFacultyUser(fuser);
		
		sessionFactory.getCurrentSession().delete(fuser);
	}

}
