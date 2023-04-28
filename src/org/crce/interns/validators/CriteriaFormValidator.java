package org.crce.interns.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.crce.interns.beans.*;
import org.crce.interns.model.*;

public class CriteriaFormValidator implements Validator {

	 //which objects can be validated by this validator
    @Override
    public boolean supports(Class<?> paramClass) {
        return Criteria.class.equals(paramClass);
    }
 
    @Override
    public void validate(Object obj, Errors errors) {
        

       
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "eligible_branches","eligible_branches.required");
         
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "year_of_passing","year_of_passing.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "placed_students_allowed","placed_students_allowed.required");
       
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "percentage","percentage.required");
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "cgpa","cgpa.required");
       
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "no_of_live_kts_allowed","no_of_live_kts_allowed.required");
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "no_of_dead_kts_allowed","no_of_dead_kts_allowed.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "hsc_or_dip_percentage","hsc_or_dip_percentage.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "year_gap_allowed","year_gap_allowed.required");
        

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "ssc_percentage","ssc_percentage.required");
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "last_date_to_apply","last_date_to_apply.required");
        
    }
}
