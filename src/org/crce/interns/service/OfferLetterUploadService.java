/*
*
* 
* 
* Filename: OfferLetterUploadService.java	
* 
* Description: This service is an interface which only declares method names which are implemented in OfferLetterUploadServiceImpl.java
* 
* Functions: handleFileUpload()	
*
*/


package org.crce.interns.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

public interface OfferLetterUploadService {

	public void handleFileUpload(HttpServletRequest request, @RequestParam CommonsMultipartFile fileUpload, String username) throws Exception;
}
