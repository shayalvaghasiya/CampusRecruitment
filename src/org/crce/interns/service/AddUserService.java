/*
*
*
* 
* 
* Filename: AddUserService.java	
* 
* Description: This service is an interface which only declares method names which are implemented in AddUserServiceImpl.java
* 
* Functions: handleFileUpload()	
*
*/



package org.crce.interns.service;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.crce.interns.model.FileUpload;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

public interface AddUserService {

	public void handleFileUpload(HttpServletRequest request, @RequestParam CommonsMultipartFile fileUpload,String userName) throws Exception;
	
	
}
