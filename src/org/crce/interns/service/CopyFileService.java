/*
-*
-*
-* 
-* Filename: AddUserService.java	
-* 
-* Description: This service is an interface which only declares method names which are implemented in AddUserServiceImpl.java
-* 
-* Functions: handleFileUpload()	
-*
-*/

package org.crce.interns.service;


public interface CopyFileService {

	public void copyFileorDirectory(String sourcePath, String destPath) throws Exception;
}