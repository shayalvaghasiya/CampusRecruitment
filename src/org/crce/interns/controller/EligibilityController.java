/**
 * 
 * Filename: EligiblityController.java	
 * Classes used by code: EligibilityService
* 
* Description: This controller is used to check eligibility of student
* 
* Functions: criteriaCheck()

 */

package org.crce.interns.controller;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;

import org.crce.interns.beans.CompanyBean;
import org.crce.interns.beans.UserCompanyBean;
import org.crce.interns.exception.AlreadyPlacedError;
import org.crce.interns.service.CheckRoleService;
import org.crce.interns.service.CompanyService;
import org.crce.interns.service.ConstantValues;
import org.crce.interns.service.EligibilityService;
import org.crce.interns.service.ManageApplicantsService;
import org.crce.interns.service.ManageProfileService;
import org.crce.interns.service.NfService;
import org.crce.interns.exception.AlreadyPlacedError;
import org.crce.interns.exception.BranchError;
import org.crce.interns.exception.LastDateExpireError;
import org.crce.interns.exception.QualificationCriteriaError;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EligibilityController {

	@Autowired
	private EligibilityService E_service;

	@Autowired
	private ManageProfileService manageProfileService;
	
	@Autowired
	private ManageApplicantsService manageApplicantsService ;

	@Autowired
	private NfService nfService;
	@Autowired
	private CheckRoleService crService;

	
        private static final Logger logger = Logger.getLogger(EligibilityController.class.getName());

	String msg = "";

	@RequestMapping("/getjob")
	public ModelAndView start() {
		return new ModelAndView("tempform");
	}

	@RequestMapping("/stpcapplies")
	public ModelAndView start1() {
		return new ModelAndView("tempform2");
	}

	/**
	 * the method check whether the student is eligible and directs to fail or
	 * success page accordingly
	 * 
	 * @param request
	 * @param job_id
	 * @return
	 */
	@RequestMapping("/applyforjob")
	public ModelAndView criteriaCheck(HttpServletRequest request, @RequestParam(value = "c_id") int c_id,
			@RequestParam(value = "j_id") String job_id) {
		
		ModelAndView m = new ModelAndView("JobPostsCriteria");
		
		try {
			HttpSession session = request.getSession();
			String username = (String) session.getAttribute("userName");
			String roleId=(String)session.getAttribute("roleId");
			System.out.println(roleId);
			
			if (!"1".equals(roleId) && !"3".equals(roleId)) {
//		        throw new Exception("Error: User has invalid role ID (5)");
				logger.error("\n Only Students can apply for JOB!!!!! ");
				String msg = "\n Only Students can apply for JOB!!!!!";
				m.addObject("msg", msg);
				return m;
		    }
			
			//System.out.println("This is user:" + username + "   and c_id: " + c_id);
                   logger.error("This is user:" + username + "   and c_id: " + c_id);

			/*
			 * code for notification
			 * 
			 */
			List<CompanyBean> clist = manageProfileService.listCompanies();
			String companyName = "";
			int id = Integer.parseInt(job_id);
			for (CompanyBean cb : clist) {
				if (cb.getCompany_id() == id) {
					companyName = cb.getCompany_name();
				}
			}
			
			if (E_service.checkCriteria(username, c_id, job_id)) {
			
				UserCompanyBean userBean = new UserCompanyBean();
				userBean.setCompany(companyName);
				userBean.setCompany_id(c_id);
				userBean.setUsername(username);
				int done = manageApplicantsService.createDetails(userBean);
				if (nfService.addNotificationForJobApply(companyName, username)) {
					System.out.println("notification added");
				} else {
					System.out.println("notification not added");
				}

				return new ModelAndView("eligible");
			}
			else {
				//System.out.println("oopsie!!  you dont meet the criteria ");
                logger.error("oopsie!!  you dont meet the criteria ");
				String msg = "Oops....You Don't Meet The Criteria";
				m.addObject("msg", msg);
				return m;
			}
		} 
		catch(AlreadyPlacedError a){
			logger.error("Already placed student can not apply!!! : ",a);
			m.addObject("placed",1);
		}
		catch(BranchError b){
			logger.error("you dont belong to the branch mentioned in criteria : ",b);
			m.addObject("branch",1);
		}
		catch(LastDateExpireError d){
			logger.error("last date to apply has expired : ",d);
			m.addObject("date",1);
		}
		catch(QualificationCriteriaError x){
			logger.error("dont meet the qualification criteria: ",x);
			m.addObject("qual",1);
		}
		catch (Exception e) {
                        logger.error(e);
			return new ModelAndView("500");
		}	
		return m;
	}
	

	/**
	 * this method finds the criteria associated to job_id and then returns a
	 * criteria object
	 * 
	 * @param job_id
	 * @return
	 */
	@RequestMapping("/dispcriteria")
	public ModelAndView displayCriteriaDetails(@RequestParam(value = "job_id") String job_id) {
		try {
			int criteria_id = E_service.getCriteriaId(job_id);

			System.out.println(criteria_id);

			ModelAndView model = new ModelAndView("JobPostsCriteria");
			model.addObject("criteria", E_service.getCriteria(criteria_id));
			model.addObject("job_id", job_id);

			return model;
		} catch (Exception e) {
                        logger.error(e);
			return new ModelAndView("500");
		}
	}

	@RequestMapping("/applyonbehaloffstudent")
	public ModelAndView checkCriteriaFromftpc(HttpServletRequest request, @RequestParam(value = "u_name") String uname,
			@RequestParam(value = "j_id") String job_id) {
		try {
			String userRole = (String) request.getSession(true).getAttribute("roleName");

			if (userRole.equals(ConstantValues.StudentTPCName)) {
				int criteria_id = E_service.getCriteriaId(job_id);
				if (E_service.checkCriteria(uname, criteria_id, job_id))
					return new ModelAndView("eligible");
				else {
					//System.out.println("oopsie!! !!!!  you dont meet the criteria ");
                                        logger.error("oopsie!! !!!!  you dont meet the criteria ");
					String msg = "Oops....You Don't Meet The Criteria";
					ModelAndView m = new ModelAndView("tempform2");
					m.addObject("msg", msg);
					return m;
				}
			}

			else
				return new ModelAndView("403");
		} catch (Exception e) {
                        logger.error(e);
			return new ModelAndView("500");
		}
	}

	/*
	 * added for testing
	 * 
	 * 
	 * @RequestMapping("/doCriteriaCheck") public @ResponseBody String
	 * loosesearch(@RequestParam("CHARS") String chars){ public ModelAndView
	 * doCriteriaCheck(HttpServletRequest request,@RequestParam(value="c_id")int
	 * c_id,@RequestParam(value="j_id")String job_id){ HttpSession
	 * session=request.getSession(); String
	 * username=(String)session.getAttribute("userName"); System.out.println(
	 * "This is user:"+username+"   and c_id: "+c_id);
	 * 
	 * 
	 * if(E_service.checkCriteria(username, c_id,job_id)) return new
	 * ModelAndView("eligible");
	 * 
	 * else System.out.println("oopsie!!  you dont meet the criteria "); String
	 * msg="YOU DONT MEET THE CRITERIA !!"; ModelAndView m = new
	 * ModelAndView("dispcriteria"); m.addObject("msg",msg); return m; }
	 */

}
