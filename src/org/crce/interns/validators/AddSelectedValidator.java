package org.crce.interns.validators;

import org.crce.interns.beans.QuickStatsBean;
import org.crce.interns.model.QuickStats;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class AddSelectedValidator implements Validator{

	@Override
	public boolean supports(Class<?> paramClass) {
		// TODO Auto-generated method stub
		return QuickStats.class.equals(paramClass); 

	}

	@Override
	public void validate(Object obj, Errors errors) {
		// TODO Auto-generated method stub
		QuickStatsBean userBean = (QuickStatsBean) obj;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "username.required");
		ValidationUtils.rejectIfEmpty(errors, "company_name", "company_name.required");
		
	}

}
