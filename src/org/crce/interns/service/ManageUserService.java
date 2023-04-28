/*
*
* 
* 
* Filename: ManageUserService.java	
* 
* Description: This service is an interface which only declares method names which are implemented in ManageUserServiceImpl.java
* 
* Functions: addStudent(), addFaculty() ,removeUser() 
*
*/


package org.crce.interns.service;

import javax.servlet.http.HttpServletRequest;

import org.crce.interns.beans.FacultyBean;
import org.crce.interns.beans.StudentBean;



public interface ManageUserService {

	public void addStudent(HttpServletRequest request,StudentBean studentBean);
	public void addFaculty(HttpServletRequest request,FacultyBean facultyBean);
	public int removeUser(StudentBean studentBean,String username) throws Exception;
}
