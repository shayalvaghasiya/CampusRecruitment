package org.crce.interns.service;


import org.crce.interns.beans.CriteriaBean;
import org.crce.interns.beans.ProfessionalProfileBean;
import org.crce.interns.beans.QualificationBean;

public interface EligibilityService {
		
	
	
	public CriteriaBean getCriteria(int company_id);
	
	public ProfessionalProfileBean getProfessionalProfile(String username);
	
	public QualificationBean getQualifications(String username);
	
	public boolean checkCriteria(String username,int criteria_id,String job_id) throws Exception;

	public int getCriteriaId(String job_id);
	
	
}
