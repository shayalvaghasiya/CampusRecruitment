/**
 *
 *	Description : DAO impl for profile related CRUD operations
 *	DEPENDENCIES: 
 * 	model-	PersonalProfile;ProfessionalProfile;UserDetails;
 */
 
package org.crce.interns.dao.impl;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.crce.interns.dao.ProfileDAO;
import org.crce.interns.model.PersonalProfile;
import org.crce.interns.model.ProfessionalProfile;
import org.crce.interns.model.UserDetails;
import org.crce.interns.service.ConstantValues;
import org.hibernate.SessionFactory;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("profileDAO")

public class ProfileDAOImpl implements ProfileDAO, ConstantValues{

//public class ProfileDAOImpl{

	@Autowired
	private SessionFactory sessionFactory;
	
	/*
	public void addProfile(Profile user) {
		sessionFactory.getCurrentSession().save(user);
	}*/
	
	
	/**	GET details from database
	*	
	*	@param	Profile user
	*	@return Profile result 
	*
	*/
	public UserDetails getProfile(UserDetails user) {
		
		UserDetails result = (UserDetails)sessionFactory.getCurrentSession().get(UserDetails.class, user.getUserName());
		
		return result;
	}
	
	/**	GET details from database
	*	
	*	@param	Profile user
	*	@return Profile result 
	*
	*/
	public ProfessionalProfile getProfile(ProfessionalProfile professionalProfile) {
		
		ProfessionalProfile result = (ProfessionalProfile)sessionFactory.getCurrentSession().get(ProfessionalProfile.class, professionalProfile.getUserName());
		
		return result;
	}
	
	/**	GET details from database
	*	
	*	@param	Profile user
	*	@return Profile result 
	*
	*/
	public PersonalProfile getProfile(PersonalProfile personalProfile) {
		
		PersonalProfile result = (PersonalProfile)sessionFactory.getCurrentSession().get(PersonalProfile.class, personalProfile.getUserName());
		
		return result;
	}
		

	
	
	public ProfessionalProfile updateProfessionalProfile(ProfessionalProfile professionalProfile) {
		
		sessionFactory.getCurrentSession().update(professionalProfile);
		
		ProfessionalProfile result = (ProfessionalProfile)sessionFactory.getCurrentSession().get(ProfessionalProfile.class, professionalProfile.getUserName());
		
		return result;
	}
	
	public PersonalProfile updatePersonalProfile(PersonalProfile personalProfile) {
		
		sessionFactory.getCurrentSession().update(personalProfile);
		
		PersonalProfile result = (PersonalProfile)sessionFactory.getCurrentSession().get(PersonalProfile.class, personalProfile.getUserName());
		
		return result;
	}
	
	public UserDetails updateUserDetails(UserDetails userDetails) {
		
		sessionFactory.getCurrentSession().update(userDetails);
		
		UserDetails result = (UserDetails)sessionFactory.getCurrentSession().get(UserDetails.class, userDetails.getUserName());
		
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Map<String, Set<String>> totalStudents(String year){
		
		Map<String, Set<String>> result = new HashMap<String, Set<String>>();
		List<ProfessionalProfile> prof = null;
		List<String> stud = null;
		
		Set<String> udSet ;
		Set<String> comps = new LinkedHashSet<String>();
		Set<String> it = new LinkedHashSet<String>();
		Set<String> elex = new LinkedHashSet<String>();
		Set<String> prod = new LinkedHashSet<String>();
		
		Integer y = Integer.parseInt(year);
		y++;
		
		Query query = sessionFactory.getCurrentSession()
				.createQuery("FROM ProfessionalProfile U WHERE U.year = :curYear");
		query.setParameter("curYear", String.valueOf(y));
		
		prof = query.list();
		
		query = sessionFactory.getCurrentSession()
				.createQuery("SELECT U.userName FROM UserDetails U WHERE U.roleId = :role_id1 OR U.roleId = :role_id3");
		query.setParameter("role_id1", "1");
		query.setParameter("role_id3", "3");
		
		stud = query.list();
				
		for( ProfessionalProfile i: prof){

			if(!stud.contains(i.getUserName())){
				continue;
			}

			if(i.getBranch().equals(COMPS)){
				comps.add(i.getUserName());
				
			}else if(i.getBranch().equals(IT)){
				it.add(i.getUserName());
				
			}if(i.getBranch().equals(ELEX)){
				elex.add(i.getUserName());
				
			}if(i.getBranch().equals(PROD)){
				prod.add(i.getUserName());
				
			}
		}
		
		result.put(COMPS, comps);
		result.put(IT, it);
		result.put(ELEX, elex);
		result.put(PROD,prod);
		
		
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override	
	public List<String> listProfessionalProfile(String year){
		
		List<String> result= null;
		
		Integer y = Integer.parseInt(year);
		y++;
		
		
		Query query = sessionFactory.getCurrentSession()
				.createQuery("SELECT U.userName FROM ProfessionalProfile U WHERE U.year = :curYear");
		query.setParameter("curYear", String.valueOf(y));
		
		result = query.list();
		return result;
	}
	
}
