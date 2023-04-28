package org.crce.interns.dao;



import org.crce.interns.model.Criteria;
import org.crce.interns.model.ProfessionalProfile;
import org.crce.interns.model.Qualification;


public interface EligibilityDao {


public Criteria getCriterias(int company_id);

public ProfessionalProfile getProfessionalProfile(String username);

public Qualification getQualification(String username);

public int getCriteriaId(String job_id);

public String getJobCategory(String job_id);

public String getStudentJob(String u_name);

}
