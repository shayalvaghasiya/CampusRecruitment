package org.crce.interns.service;

import java.util.List;

import org.crce.interns.model.Company;
import org.crce.interns.model.PersonalProfile;


public interface SearchService {

	public List<PersonalProfile> searchUser(String searchString);
	public List<Company> searchCompany(String searchString);
}
