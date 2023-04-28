package org.crce.interns.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.crce.interns.beans.CompanyBean;
import org.crce.interns.model.Company;
import org.crce.interns.model.Criteria;

public interface CompanyService {

	public void addCompany(String user,Company company);
	//public void addCriteria(String user,Criteria criteria);
	   
	public List<CompanyBean> getCompany();
}
