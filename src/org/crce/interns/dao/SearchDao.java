package org.crce.interns.dao;

import java.util.List;

import org.crce.interns.model.Company;
import org.crce.interns.model.PersonalProfile;


public interface SearchDao {
	
	public List<PersonalProfile> searchUser(String searchString);
	public List<Company> searchCompany(String searchString);
	
}
