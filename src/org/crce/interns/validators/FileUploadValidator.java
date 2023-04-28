/*
*
*
* 
* 
* Filename: FileUploadValidator.java	
* 
* Classes used: FileUpload
* 	
* Modules using this validator class: AddUserViaCSV file, Resume Upload
* 
* Description: This validator class overrides the methods of the Validator class.
* 				It handles the condition when no file is selected for upload.
* 				It uses messages.properties file
* 
* Functions: supports(), valdate()
*
*/


package org.crce.interns.validators;



import java.io.File;

import org.crce.interns.model.FileUpload;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;



public class FileUploadValidator implements Validator{

	@Override
	public boolean supports(Class clazz) {
		//just validate the FileUpload instances
		return FileUpload.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		//casts the Object type to FileUpload type
		FileUpload fileUpload1 = (FileUpload)target;
	
		
		//gets the size of the CommonsMultiPart type file
		if(fileUpload1.getFile().getSize() == 0){
			System.out.println("empty");
			
			errors.rejectValue("file", "required.fileUpload");
			System.out.println("after reject value");
		}
	}
}