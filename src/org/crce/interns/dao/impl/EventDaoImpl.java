/*
 * EventDaoImpl Class contains all database related operations.
 * EventDaoImpl Interface Class contains the implementation for method
 * 
 * View Events based on month
 * 
 * 
 * 
 * */
package org.crce.interns.dao.impl;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.crce.interns.dao.EventDao;
import org.crce.interns.model.Company;
import org.crce.interns.model.Event_details;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class EventDaoImpl implements EventDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	/*@PersistenceContext
	private EntityManager entityManager;*/

	@Override
	public List<Event_details> viewEvents(Integer months) {
		System.out.println("In DAOImpl: View Events");
		
		System.out.println("Month in Dao Impl :" + months);
		
		int year = Calendar.getInstance().get(Calendar.YEAR);
		
		Session session = sessionFactory.openSession();
		
		List<Event_details> edList = session.createQuery("select ed from Event_details ed where month(ed.dates) = :m AND year(ed.dates) = :y order by ed.dates").setParameter("m", months).setParameter("y", year).list();
		//Query to extract month from date(yyyy-mm-dd) and sort events in that month in ascending order based on date (dd)
	
	if(edList.isEmpty())
			return null;
		
		return edList;
		
		/*List<Event_details> allEvents = entityManager.createQuery("select ed from Event_details ed " + " where EXTRACT(MONTH from ed.dates)= :m" 
		+ " order by ed.dates").setParameter("m", months).getResultList();
		if (allEvents.isEmpty()) {
			System.out.println("Error null query");
		}
		return allEvents;*/
	}

	@Override
	public String getCompanyName(int company_id) {
		System.out.println("In DAOImpl: Get Company Name");
		
		Company result = (Company) sessionFactory.getCurrentSession().get(Company.class,company_id);
		
		System.out.println("Company Name in DaoIMPL"+result.getCompany_name());
		
		return result.getCompany_name();
	}
		
}

