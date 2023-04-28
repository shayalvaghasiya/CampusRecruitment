package org.crce.interns.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.crce.interns.beans.*;
import org.crce.interns.model.*;

public class CompanyFormValidator implements Validator {

	 //which objects can be validated by this validator
    @Override
    public boolean supports(Class<?> paramClass) {
        return Company.class.equals(paramClass);
    }
 
    @Override
    public void validate(Object obj, Errors errors) {
        

       
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "company_name","company_name.required");
         
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "company_address","company_address.required");
        
    }
}
