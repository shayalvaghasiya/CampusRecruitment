/*
*
* 
* 
* Filename: ResumeUploadService.java	
* 
* Description: This service is an interface which only declares method names which are implemented in ResumeUploadServiceImpl.java
* 
* Functions: handleFileUpload()	,displayCVList()
*
*/


package org.crce.interns.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

public interface ResumeUploadService {

	
	public void handleFileUpload(HttpServletRequest request, @RequestParam CommonsMultipartFile fileUpload, String username) throws Exception;


}
