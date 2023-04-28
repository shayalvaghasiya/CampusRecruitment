package org.crce.interns.dao.impl;

import java.util.List;

import org.crce.interns.dao.EventDetailsDao;
import org.crce.interns.model.Aptitude;
import org.crce.interns.model.Company;
import org.crce.interns.model.Event;
import org.crce.interns.model.Interview;
import org.crce.interns.model.Pre_Placement;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("eventDetailsDao")
public class EventDetailsDaoImpl implements EventDetailsDao{
	@Autowired
	private SessionFactory sessionFactory;
	Session session=null;
	Transaction tx=null;
	Event e=null;
	public int create(Event event,String cname) {
		
		try {
			System.out.println(event.getEvent_type()); 
			System.out.println(event.getDate()); 
			session=this.sessionFactory.openSession();
			//session = sessionFactory.getCurrentSession();
			System.out.println("fdggggggggggggggggggggggggggg"+cname);
			String sql = "from Company as c where c.company_name = :n";
			Query q = session.createQuery(sql);
			q.setParameter("n", cname);
			List<Company> c = q.list();
			int company_id = c.get(0).getCompany_id();
			event.setCompany_id(company_id);
			System.out.println("Company id = " + company_id);
			System.out.println("Evemt ::::: " + event.getApproved());
			System.out.println("+++++++++++++++++++++++"+event.getEvent_id());
			tx=session.beginTransaction();			
			session.save(event);			
			tx.commit();
			System.out.println("+++++++++++++++++++++++"+event.getEvent_id());
			/*Event emp = (Event)session.get(Event.class, 1);
			Serializable id = session.getIdentifier(emp);
			System.out.println("EMP object identifer is "+ id);
			*/
			int s=(int)session.getIdentifier(event);
			System.out.println("in daoImpl:  "+s);
			session.close();
			//sessionFactory.close();
			//tx.commit();
			return s;
			} catch (HibernateException e) {
				e.printStackTrace();
		}
		return 0;
	}
	
	
	public void create(Aptitude bean){
		session=this.sessionFactory.openSession();
		tx=session.beginTransaction();
		session.save(bean);		
		tx.commit();
		session.close();

	}
	
	public void create(Pre_Placement bean){
		session=this.sessionFactory.openSession();
		tx=session.beginTransaction();
		session.save(bean);
		
		tx.commit();

	}
	
	public void create(Interview bean){
		session=this.sessionFactory.openSession();
		tx=session.beginTransaction();
		session.save(bean);
		
		tx.commit();

	}

}
