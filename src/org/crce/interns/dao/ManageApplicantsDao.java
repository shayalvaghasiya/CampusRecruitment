package org.crce.interns.dao;
import java.util.HashSet;
import java.util.List;
import org.crce.interns.model.Company;
import org.crce.interns.model.UserCompany;

public interface ManageApplicantsDao {
	
	public void createDetails(UserCompany user);

	public int checkDetails(UserCompany user);

	public List<UserCompany> retreiveDetails(String company);

	public List<UserCompany> retreiveDetails(String company, String year);
	
	public List<Company> retrieveCompany_id();

	public void deleteDetails(UserCompany user);
	
	public HashSet<Integer> retrieveCompanyId();
}





/*package org.crce.interns.dao;
import java.util.HashSet;
import java.util.List;
import org.crce.interns.model.Company;
import org.crce.interns.model.UserCompany;

public interface ManageApplicantsDao {
	
	public void createDetails(UserCompany user);

	public int checkDetails(UserCompany user);

	public List<UserCompany> retreiveDetails(String company);

	public List<Company> retrieveCompany_id();

	public void deleteDetails(UserCompany user);
	
	public HashSet<Integer> retrieveCompanyId();
}


*/