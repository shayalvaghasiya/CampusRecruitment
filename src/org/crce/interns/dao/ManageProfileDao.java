/*package org.crce.interns.dao;

import java.util.List;

import org.crce.interns.beans.JobBean;
import org.crce.interns.model.Company;
import org.crce.interns.model.Criteria;
import org.crce.interns.model.Job;

//import org.crce.interns.model.Profile;

public interface ManageProfileDao {

	//public void createProfile(Profile profile);
	public void createProfile(Job job);
	public void createProfile(Criteria criteria);
	public void createProfile(Company company);
	public List<Job> listProfile();
	public List<Company> listCompanies();

}
*/
package org.crce.interns.dao;

import java.util.List;

import org.crce.interns.beans.JobBean;
import org.crce.interns.model.Company;
import org.crce.interns.model.Criteria;
import org.crce.interns.model.Job;

//import org.crce.interns.model.Profile;

public interface ManageProfileDao {

	//public void createProfile(Profile profile);
	public void createProfile(Job job);
	public void createProfile(Criteria criteria);
	public void createProfile(Company company);
	public List<Job> listProfile(String curYear);
	public List<Company> listCompanies();
	public List<Job> listJob(String curYear);
	/*public List<Job> listProfile();
	public List<Company> listCompanies();
	public List<Job> listJob();*/

}