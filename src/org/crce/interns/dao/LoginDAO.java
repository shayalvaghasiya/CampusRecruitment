package org.crce.interns.dao;


public interface LoginDAO{    
	public String checkLogin(String userName, String userPassword);
	public int getStudentById(String userName,String user);
	public boolean getNotification(String userName);
	public String checkSpecialRole(String userName);
}