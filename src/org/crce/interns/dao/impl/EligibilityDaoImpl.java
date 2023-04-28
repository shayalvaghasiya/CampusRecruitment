/**
 * 
 *
 * Filename: EligibilityDaoImpl.java
 *  
 *  Description: This dao provides interaction with the tables
 * 
 *  Functions: getCriterias(), getProfessionalProfile() ,getQualification(),getCriteriaId(),getJobCategory(),getStudentJob()
 *  
 *  Tables used: job_schema.criteria,job_schema.job, job_schema.company_job ,job_schema.company, user_schema.ProfessionalProfile, 
 *  			user_schema.userdetails,user_schema.Professional_Profile_job, user_schema.qualification,	 
 */
package org.crce.interns.dao.impl;


import org.crce.interns.dao.EligibilityDao;
import org.crce.interns.model.Company;
import org.crce.interns.model.Company_job;
import org.crce.interns.model.Criteria;
import org.crce.interns.model.ProfessionalProfile;
import org.crce.interns.model.Qualification;
import org.hibernate.HibernateException;
import org.hibernate.NonUniqueResultException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class EligibilityDaoImpl implements EligibilityDao {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	/**
	 * returns the criteria object  having id as 'criteria_id'
	 * @param  criteria_id
	 */
	public Criteria getCriterias(int criteria_id) {
		
		Criteria c=null;
		 try {
			c= (Criteria)sessionFactory.getCurrentSession().createQuery("select c from Criteria c where criteria_id = :cid").setParameter("cid", criteria_id).uniqueResult();
		} catch (HibernateException e) {
	
			e.printStackTrace();
		}
		
		 return c;
	}
	
	
	/**
	 * returns the ProfessionalProfile object  having id as 'username'
	 * @param  username
	 */
	public ProfessionalProfile getProfessionalProfile(String username){	
		ProfessionalProfile p=null;
	
		try {
			p=(ProfessionalProfile) sessionFactory.getCurrentSession().createQuery("select new ProfessionalProfile(userName,branch,status,year) from ProfessionalProfile where userName = :uid").setParameter("uid",username).uniqueResult();
			
		} catch (HibernateException e) {
			
			e.printStackTrace();
		}
		
		return p;
	}

	/**
	 * returns the Qualification object  having id as 'username'
	 * @param  username
	 */

	public Qualification getQualification(String username)
	{
		Qualification q=null;
		try {
			 q=(Qualification) sessionFactory.getCurrentSession().createQuery("select new Qualification( username,ssc_per , hsc_or_dip_per,s6_kt, deg_per, deg_kt,drops) from Qualification where username = :uid").setParameter("uid",username).uniqueResult();
		} catch (HibernateException e) {
		
			e.printStackTrace();
		}
		
		return q;
	}

	
	/**this method first finds the company which offered the job and then returns the criteria_id of criteria placed by that company
	 * @param job_id
	 */
	public int getCriteriaId(String job_id) {
		
		Company company= null;
		try {
			Company_job cj= (Company_job)sessionFactory.getCurrentSession().createQuery("select c from Company_job c where job_id = :job_id").setParameter("job_id", job_id).uniqueResult();;
			company = (Company) sessionFactory.getCurrentSession().createQuery("select c from Company c where company_id = :c_id").setParameter("c_id", cj.getCompany_id()).uniqueResult();
			
		} catch (NonUniqueResultException e) {
			e.printStackTrace();
		}
		//this was giving problem so commented @melwyn95
		return company.getCompany_id();
		//return 0;	//was giving error so commented @Crystal
	}
	
	/**
	 * this method returns the job_category of a given job
	 * @param job_id
	 */
	public String getJobCategory(String job_id)
	{
		String s=(String) sessionFactory.getCurrentSession().createQuery("select job_category from Job where job_id= :jid").setParameter("jid", job_id).uniqueResult();
		
		return s;
	}
	
	/**
	 * this method returns the job_id of the job that the student has acquired
	 * @param u_name
	 */
	public String getStudentJob(String u_name){
		String s=(String) sessionFactory.getCurrentSession().createQuery("select job_id from Professional_Profile_job where username= :x").setParameter("x", u_name).uniqueResult();

		return s;
	}
}
