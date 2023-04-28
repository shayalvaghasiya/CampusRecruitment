package org.crce.interns.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.crce.interns.beans.FeedbackBean;
import org.crce.interns.beans.UserCompanyBean;
import org.crce.interns.model.Feedback;
import org.crce.interns.model.UserCompany;
import org.crce.interns.service.CheckRoleService;
import org.crce.interns.service.FeedbackService;
import org.crce.interns.service.ManageApplicantsService;
import org.crce.interns.service.ProfileService;
import org.crce.interns.validators.FeedbackFormValidator;

@Controller
public class FeedbackController {

	@Autowired
	private FeedbackService feedbackService;

	
	@Autowired
	private ProfileService profileService;
	
	@Autowired
	FeedbackFormValidator validator;

	@Autowired
	private CheckRoleService crService;

	@Autowired
	private ManageApplicantsService crudService;
	
	 Map<String, List<String>> map = new HashMap<String, List<String>>();
  
        private static final Logger logger = Logger.getLogger(FeedbackController.class.getName());
	/*
	 * @InitBinder private void initBinder(WebDataBinder binder) {
	 * binder.setValidator(validator); }
	 */

	@RequestMapping(value = "/feedback", method = RequestMethod.GET)
	public ModelAndView listFeedback(HttpServletRequest request, @RequestParam("companyname") String companyname) {
		//System.out.println(companyname);
                logger.error(companyname);
		//System.out.println("Hi");

		try {
			HttpSession session = request.getSession();
			String roleId = (String) session.getAttribute("roleId");
			
			Map ml = new HashMap(); 
			
			
			
			List<FeedbackBean> list = prepareListofBean(feedbackService.listFeedback());
			FeedbackBean fb = new FeedbackBean();
			List<FeedbackBean> list1 = new ArrayList<FeedbackBean>();
			for (FeedbackBean fbl : list) {
				if (fbl.getCompany().equalsIgnoreCase(companyname)) {

				                        logger.error("fdvgidmgvdlkmglkdfmkl" + companyname);
					list1.add(fbl);
				

				}
			}

			            logger.error(list1.size());
			ModelAndView model = new ModelAndView("CompanyFeedback");
			model.addObject("l", list1);
			model.addObject("m",map);
			            logger.error(fb.getUsername());
			return model;
				} catch (Exception e) {
			//System.out.println(e);
                        logger.error(e);
			ModelAndView model = new ModelAndView("500");
			model.addObject("message", "Your session has timed out. Please login again");
			// model.addObject("url", "form");

			return model;
		}

	}

	@RequestMapping(value = "/addFeedback", method = RequestMethod.GET)
	public ModelAndView saveFeedback(@ModelAttribute("command") FeedbackBean feedbackBean,
			BindingResult result) {
		//System.out.println("in controller1");

		// Feedback feedback = prepareModel(feedbackBean);
		// feedbackService.addFeedback(feedback);
		// System.out.println("in controller1");

		try {

			/*HttpSession session = request.getSession();
			String roleId = (String) session.getAttribute("roleId");
			String user = (String) session.getAttribute("userName");
*/
			/*
			 * List<UserCompany> userList=new ArrayList<UserCompany>();
			 * userList.addAll(crudService.retreiveDetails("TCS"));
			 * List<UserCompanyBean> userList=new
			 * ArrayList<UserCompanyBean>();//Changed from UserComapny to
			 * UserCompanyBean by @Rashmi
			 * userList.addAll(crudService.retreiveDetails("TCS")); //
			 * HttpSession session=request.getSession(); String
			 * user=(String)session.getAttribute("userName"); boolean
			 * flag=false; for(UserCompanyBean d:userList ){ //Changed from
			 * UserComapny to UserCompanyBean by @Rashmi
			 * if(d.getUsername().matches(user)) { flag=true; break; } }
			 * if(flag) System.out.println(user); else System.out.println(user+
			 * "Not there in list!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			 * 
			 * if(!crService.checkRole("Feedback", roleId)) return new
			 * ModelAndView("403"); else return new ModelAndView("addFeedback");
			 */

			ModelAndView model = new ModelAndView();

			// if()){
			/*
			 * if(feedbackService.checkUser(user,
			 * feedbackBean.getCompany())!=true){
			 * 
			 * model.addObject("message",
			 * "You are not eligible for giving this feedback"); return new
			 * ModelAndView("addFeedback"); } else{
			 */
			return new ModelAndView("addFeedback");
			/*
			 * }
			 */
		} catch (Exception e) {
			//System.out.println(e);
                        logger.error(e);
                        
			ModelAndView model = new ModelAndView("500");
			model.addObject("message", "Your session has timed out. Please login again");
			// model.addObject("url", "form");

			return model;
		}

	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView addFeedback(HttpServletRequest request, @ModelAttribute("command") FeedbackBean feedbackBean,
			BindingResult result,final RedirectAttributes redirectAttributes) {
		// validating

		try {
			HttpSession session = request.getSession();
			String user = (String) session.getAttribute("userName");
			
 			
			
			validator.validate(feedbackBean, result);
			if (result.hasErrors()) {
				//System.out.println("Error in form");
                                logger.error("Error in form");
				return new ModelAndView("addFeedback");
			}
			boolean b = feedbackService.checkUser(user, feedbackBean.getCompany());
			if (!b) {
				 logger.error("ERROR IN FEEDBACK");
					
				redirectAttributes.addFlashAttribute("msg", "You are not eligible to give feedback for this company..!!");
				
				
				
				ModelAndView model1=new ModelAndView("redirect:/addFeedback");
				//model1.addObject("message", "Data added successfully ");
				return model1;
				                   	
			}
			String name = (String) session.getAttribute("name");
			String branch = (String) session.getAttribute("branch");

			List<String> valSetOne = new ArrayList<String>();
	        valSetOne.add(name);
	        valSetOne.add(branch);
	        map.put(user, valSetOne);  
			
			Feedback feedback = prepareModel(feedbackBean);
			feedbackService.addFeedback(feedback);
				redirectAttributes.addFlashAttribute("msg", "Data added successfully..!!");
			
			
			ModelAndView model1=new ModelAndView("redirect:/addFeedback");
			//model1.addObject("message", "Data added successfully ");
			return model1;
			
		
		}

		catch (Exception e) {
			//System.out.println(e);
                        logger.error(e);
			ModelAndView model = new ModelAndView("500");
			model.addObject("message", "Your session has timed out. Please login again");
			// model.addObject("url", "form");

			return model;
		}
	}

	/*
	 * @RequestMapping(value = "/index", method = RequestMethod.GET) public
	 * ModelAndView welcome() { return new ModelAndView("index"); }
	 */

	private List<FeedbackBean> prepareListofBean(List<Feedback> feedback) {
		List<FeedbackBean> beans = null;
		if (feedback != null && !feedback.isEmpty()) {
			beans = new ArrayList<FeedbackBean>();
			FeedbackBean bean = null;
			for (Feedback a : feedback) {

				//System.out.println(a.getFeeback() + "Inside controller");
                                logger.error(a.getFeeback() + "Inside controller");

				bean = new FeedbackBean();
				bean.setUsername(a.getUsername());
				bean.setCompany(a.getCompany());
				bean.setFeeback(a.getFeeback());

				beans.add(bean);
			}

		}
		return beans;
	}

	private Feedback prepareModel(FeedbackBean feedbackBean) {
		Feedback feedback = new Feedback();
		feedback.setUsername(feedbackBean.getUsername());
		feedback.setCompany(feedbackBean.getCompany());
		feedback.setFeeback(feedbackBean.getFeeback());

		return feedback;
	}

	private List<FeedbackBean> prepareList(List<Feedback> feedback, String company) {
		List<FeedbackBean> beans = null;
		if (feedback != null && !feedback.isEmpty()) {
			beans = new ArrayList<FeedbackBean>();
			FeedbackBean bean = null;
			for (Feedback a : feedback) {
				if (company.equals(a.getCompany())) {
					bean = new FeedbackBean();
					bean.setUsername(a.getUsername());
					bean.setCompany(a.getCompany());
					bean.setFeeback(a.getFeeback());

					beans.add(bean);
				} else
					continue;
			}

		}
		return beans;
	}

	@RequestMapping(value = "/test_feedback", method = RequestMethod.GET)
	public ModelAndView test_feedback() {
		return new ModelAndView("feedback");
	}

	@RequestMapping(value = "/test_feedbacks", method = RequestMethod.GET)
	public ModelAndView test_feedbacks() {
		return new ModelAndView("feedbacks");
	}

}
