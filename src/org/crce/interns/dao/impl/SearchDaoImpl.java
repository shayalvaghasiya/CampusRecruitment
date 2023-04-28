package org.crce.interns.dao.impl;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import org.crce.interns.dao.SearchDao;
import org.crce.interns.model.Company;
import org.crce.interns.model.PersonalProfile;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("seachDao")
@Transactional
public class SearchDaoImpl implements SearchDao {

	@Resource(name = "sessionFactory")
	protected SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	protected Session getSession() {
		return sessionFactory.openSession();
	}

	@Override
	public List<PersonalProfile> searchUser(String searchString) {
		Session session = sessionFactory.openSession();
		
		String regex = "^\\d.+";
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(searchString);
		
		String SQL_QUERY = null;
		if (matcher.matches())
			SQL_QUERY ="from PersonalProfile as u where lower(u.userName) like lower(:s)";
		else 
			SQL_QUERY ="from PersonalProfile as u where lower(u.name) like lower(:s)";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter("s", "%"+searchString+"%");
		List<PersonalProfile> userDetailsList = query.list();
		session.close();
		
		return userDetailsList;
	}
	
	@Override
	public List<Company> searchCompany(String searchString) {
		System.out.println(searchString);
		Session session = sessionFactory.openSession();
		String SQL_QUERY ="from Company as c where lower(c.company_name) like lower(:s)";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter("s", "%"+searchString+"%");
		List<Company> companyList = query.list();
		System.out.println(companyList.size());
		session.close();
		return companyList;
	}
}
