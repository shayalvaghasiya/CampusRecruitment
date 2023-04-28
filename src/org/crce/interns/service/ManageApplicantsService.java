
package org.crce.interns.service;
import java.util.List;

//import org.crce.interns.beans.UserBean;
import org.crce.interns.beans.UserCompanyBean;
import org.crce.interns.model.Company;

public interface ManageApplicantsService {
	
	public int createDetails(UserCompanyBean userBean);
	 
	
	// public List<Company> retrieveCompany_id();
	 public int deleteDetails(UserCompanyBean userBean);
	 
	 public List<UserCompanyBean> retreiveDetails(String company);
	 
	 public List<UserCompanyBean> retreiveDetails(String company, String year);
	 
	 public List<Company> retrieveCompany_id();
	 

	 
	}

/*package org.crce.interns.service;
import java.util.ArrayList;
import java.util.List;
//import org.crce.interns.beans.UserBean;
import org.crce.interns.beans.UserCompanyBean;
import org.crce.interns.dao.ManageApplicantsDao;
import org.crce.interns.model.Company;
import org.crce.interns.model.UserCompany;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

public interface ManageApplicantsService {
	
	public int createDetails(UserCompanyBean userBean);
	 
	
	// public List<Company> retrieveCompany_id();
	 public int deleteDetails(UserCompanyBean userBean);
	 
	 public List<UserCompany> retreiveDetails(String company);
	 
	 public List<Company> retrieveCompany_id();
	 

	 
	}
*/