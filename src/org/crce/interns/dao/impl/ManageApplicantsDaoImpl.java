package org.crce.interns.dao.impl;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.crce.interns.dao.ManageApplicantsDao;
//import org.apache.commons.collections.list.LazyList;
import org.crce.interns.model.Company;
//import org.crce.interns.model.User;
import org.crce.interns.model.UserCompany;
import org.crce.interns.model.UserDetails;
//import org.crce.interns.model.UserCompanyId;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
//import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


/**
*
* 
* Task: Adds/Deletes Applicant entries from list of applicants for a job
*/


@Repository("crudDao")
@Transactional
public class ManageApplicantsDaoImpl implements ManageApplicantsDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	Session session=null;
	Transaction tx=null;

	
	// to create an entry 

	public void createDetails(UserCompany user){
		session=this.sessionFactory.openSession();
		String year=Integer.toString(Calendar.getInstance().get(Calendar.YEAR));
		System.out.println(year+"----------------------------------------------------------"+year);
		user.setYear(year);
		Session s = sessionFactory.openSession();
		String sql = "from Company as c where c.company_name = :n";
		Query q = s.createQuery(sql);
		q.setParameter("n", user.getCompany());
		List<Company> c = q.list();
		int company_id = c.get(0).getCompany_id();
		user.setCompany_id(company_id);
		tx=session.beginTransaction();
		session.save(user);
		tx.commit();
	
	}
		

	//check for errors and handle
	@SuppressWarnings("unchecked")
	public int checkDetails(UserCompany user){
		
		session=this.sessionFactory.openSession();
		Criteria criteria=session.createCriteria(UserCompany.class);
		
		//when input already exists in the db
		List<UserCompany> userList=new ArrayList<UserCompany>();
		userList.addAll(criteria.list());
		for(UserCompany d:userList){
			if(d.getCompany().equals(user.getCompany())&&d.getUsername().equals(user.getUsername())){
				return 1; 
			}
		}
		
		session.close();
		
		Session s = sessionFactory.openSession();
		int flag=0;
		
		//to check if user name is valid- if account exists
		String sql="from UserDetails as u";
		Query q = s.createQuery(sql);
		List<UserDetails> u=q.list();
		for(UserDetails d:u){
			if(d.getUserName().equals(user.getUsername())){
				flag=1;
			}
		}
		System.out.println("after user check");
		if(flag==0)
			return 3;
		
		//to check if company name exists in the db
		flag=0;
		sql = "from Company as c";
		q = s.createQuery(sql);
		List<Company> c = q.list();
		
		for(Company d:c){
			if(d.getCompany_name().equals(user.getCompany())){
				flag=1;
			}
		}
		
		if(flag==0){
			return 2;
		}
		System.out.println("after company check");

		
		s.close();
		
		return 0;
		
	}
		
		//to retrieve and print the list
		

	

	@SuppressWarnings("unchecked")
	public List<UserCompany> retreiveDetails(String company){
		System.out.println("company= "+company);
		session=this.sessionFactory.openSession();
		tx=session.beginTransaction();
		Criteria criteria=session.createCriteria(UserCompany.class);

		System.out.println("inside DAO: "+company);
		List<UserCompany> list=new ArrayList<UserCompany>();
		list.addAll(criteria.list());
		List<UserCompany> userList=new ArrayList<UserCompany>();
		for(UserCompany d:list){
			if(d.getCompany().equals(company)) userList.add(d);
	}
		System.out.println("outside DAO.....");
		tx.commit();
		session.close();
		
		return userList;
	}	
	
	public List<UserCompany> retreiveDetails(String company, String year){
		 		
		 		session=this.sessionFactory.openSession();
		 		tx=session.beginTransaction();
		 		Criteria criteria=session.createCriteria(UserCompany.class);
		 
		 		System.out.println("inside DAO: "+company);
		 		List<UserCompany> list=new ArrayList<UserCompany>();
		 		list.addAll(criteria.list());
		 		List<UserCompany> userList=new ArrayList<UserCompany>();
		 	
		 	for(UserCompany d:list){
		 		if(d.getCompany().equals(company) && d.getYear().equals(year)) userList.add(d);
		     }
		 	
		 	System.out.println("outside DAO.....");
		 	tx.commit();
		 	session.close();
		 	
		 	return userList;
		 }
	

	/*
	 * 
	 * 
	 * added by Nevil to get company id present in applicant_company
	 */
	
	public HashSet<Integer> retrieveCompanyId(){
		session=this.sessionFactory.openSession();			
		//Session s = sessionFactory.openSession();
		//String sql = "from Company as c where c.companyName = :n";
		//String sql = "Select distinct Company.companyId from Company C";
		
		//Query q = session.createQuery(sql);
		
		Criteria cr = session.createCriteria(UserCompany.class);
		cr.setProjection(Projections.countDistinct("company_id"));
		return new HashSet<Integer>(cr.list());
	}
	
	@SuppressWarnings("unchecked")	
	public List<Company> retrieveCompany_id(){
		List<Company> list=new ArrayList<Company>();
		session=this.sessionFactory.openSession();
		tx=session.beginTransaction();
		Criteria criteria=session.createCriteria(Company.class);
		list.addAll(criteria.list());
		return list;
	}


	public void deleteDetails(UserCompany user){
		
		Session s = sessionFactory.openSession();
		String sql = "from Company as c where c.company_name = :n";
		Query q = s.createQuery(sql);
		q.setParameter("n", user.getCompany());
		List<Company> c = q.list();
		int company_id = c.get(0).getCompany_id();
		
		System.out.println(company_id);
		user.setCompany_id(company_id);
		
		user=(UserCompany) sessionFactory.getCurrentSession().get(UserCompany.class,user);
		session=this.sessionFactory.openSession();
		tx=session.beginTransaction();
		session.delete(user);
		tx.commit();
		session.close();
	}

}


/*package org.crce.interns.dao.impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.crce.interns.dao.ManageApplicantsDao;
//import org.apache.commons.collections.list.LazyList;
import org.crce.interns.model.Company;
//import org.crce.interns.model.User;
import org.crce.interns.model.UserCompany;
import org.crce.interns.model.UserDetails;
//import org.crce.interns.model.UserCompanyId;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
//import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


*//**
*
* 
* Task: Adds/Deletes Applicant entries from list of applicants for a job
*//*


@Repository("crudDao")
@Transactional
public class ManageApplicantsDaoImpl implements ManageApplicantsDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	Session session=null;
	Transaction tx=null;

	
	// to create an entry 

	public void createDetails(UserCompany user){
		
		session=this.sessionFactory.openSession();			
		Session s = sessionFactory.openSession();
		String sql = "from Company as c where c.companyName = :n";
		Query q = s.createQuery(sql);
		q.setParameter("n", user.getCompany());
		List<Company> c = q.list();
		int company_id = c.get(0).getCompany_id();
		user.setCompany_id(company_id);
		tx=session.beginTransaction();
		session.save(user);
		tx.commit();

		
	}
		

	//check for errors and handle
		@SuppressWarnings("unchecked")
		public int checkDetails(UserCompany user){
			
			session=this.sessionFactory.openSession();
			Criteria criteria=session.createCriteria(UserCompany.class);
			
			//when input already exists in the db
			List<UserCompany> userList=new ArrayList<UserCompany>();
			userList.addAll(criteria.list());
			for(UserCompany d:userList){
				if(d.getCompany().equals(user.getCompany())&&d.getUsername().equals(user.getUsername())){
					return 1; 
				}
			}
			
			session.close();
			
			Session s = sessionFactory.openSession();
			int flag=0;
			
			//to check if user name is valid- if account exists
			String sql="from UserDetails as u";
			Query q = s.createQuery(sql);
			List<UserDetails> u=q.list();
			for(UserDetails d:u){
				if(d.getUserName().equals(user.getUsername())){
					flag=1;
				}
			}
			System.out.println("after user check");
			if(flag==0)
				return 3;
			
			//to check if company name exists in the db
			flag=0;
			sql = "from Company as c";
			q = s.createQuery(sql);
			List<Company> c = q.list();
			
			for(Company d:c){
				if(d.getCompany_name().equals(user.getCompany())){
					flag=1;
				}
			}
			
			if(flag==0){
				return 2;
			}
			System.out.println("after company check");

			
			s.close();
			
			return 0;
			
		}
		
		//to retrieve and print the list
		

	

	@SuppressWarnings("unchecked")
	public List<UserCompany> retreiveDetails(String company){
		System.out.println("company= "+company);
		session=this.sessionFactory.openSession();
		tx=session.beginTransaction();
		Criteria criteria=session.createCriteria(UserCompany.class);

		System.out.println("inside DAO: "+company);
		List<UserCompany> list=new ArrayList<UserCompany>();
		list.addAll(criteria.list());
		List<UserCompany> userList=new ArrayList<UserCompany>();
		for(UserCompany d:list){
			if(d.getCompany().equals(company)) userList.add(d);
	}
		System.out.println("outside DAO.....");
		tx.commit();
		session.close();
		
		return userList;
	}
	

	
	 * 
	 *
	 * 
	 * added by Nevil to get company id present in applicant_company
	 
	
	public HashSet<Integer> retrieveCompanyId(){
		session=this.sessionFactory.openSession();			
		//Session s = sessionFactory.openSession();
		//String sql = "from Company as c where c.companyName = :n";
		//String sql = "Select distinct Company.companyId from Company C";
		
		//Query q = session.createQuery(sql);
		
		Criteria cr = session.createCriteria(UserCompany.class);
		cr.setProjection(Projections.countDistinct("company_id"));
		return new HashSet<Integer>(cr.list());
	}
	
	@SuppressWarnings("unchecked")	
	public List<Company> retrieveCompany_id(){
		List<Company> list=new ArrayList<Company>();
		session=this.sessionFactory.openSession();
		tx=session.beginTransaction();
		Criteria criteria=session.createCriteria(Company.class);
		list.addAll(criteria.list());
		return list;
	}


	public void deleteDetails(UserCompany user){
		
		Session s = sessionFactory.openSession();
		String sql = "from Company as c where c.companyName = :n";
		Query q = s.createQuery(sql);
		q.setParameter("n", user.getCompany());
		List<Company> c = q.list();
		int company_id = c.get(0).getCompany_id();
		
		System.out.println(company_id);
		user.setCompany_id(company_id);
		
		user=(UserCompany) sessionFactory.getCurrentSession().get(UserCompany.class,user);
		session=this.sessionFactory.openSession();
		tx=session.beginTransaction();
		session.delete(user);
		tx.commit();
		session.close();
	}

}
*/