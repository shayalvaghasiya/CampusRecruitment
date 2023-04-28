package org.crce.interns.dao.impl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.crce.interns.beans.UserCompanyBean;
import org.crce.interns.dao.FeedbackDao;
import org.crce.interns.model.*;

@Repository("feedbackDao")
public class FeedbackDaoImpl implements FeedbackDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Feedback> listFeedback() {
		List<Feedback> list = sessionFactory.getCurrentSession().createCriteria(Feedback.class).list();
		
		System.out.println("inside dao size of list = " + list.size());
		
		return list;
	}

	public void addFeedback(Feedback feedback) {
		Date dNow = new Date( );
		SimpleDateFormat ft = 
			      new SimpleDateFormat ("yyyy-MM-dd");
		String temp = ft.format(dNow);
		//Date parsed = ft.parse(temp);
		System.out.println(temp);
		 
		 //java.sql.Date sql = new java.sql.Date(parsed.getTime());
        
		
		
		String year =  Integer.toString(Calendar.getInstance().get(Calendar.YEAR)+1);
		feedback.setCreated_date(dNow);
		feedback.setCreated_by(feedback.getUsername());
		feedback.setYear(year);
		sessionFactory.getCurrentSession().saveOrUpdate(feedback);
	}
	
	
	public boolean checkUser(String user, String cName){
		
		List<String> result = null;
		
		String y = Integer.toString(Calendar.getInstance().get(Calendar.YEAR));
		
		Query query = sessionFactory.getCurrentSession()
				.createQuery("SELECT U.username FROM UserCompany U WHERE U.year = :curYear AND U.company= :cName");
		query.setParameter("curYear", String.valueOf(y));
		query.setParameter("cName", cName);
		result = query.list();
		
		for(String a: result){
			
			if(user.equals(a)){
				return true;
			}
			
		}
		return false;
	}

}
