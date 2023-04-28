/*
 * AssignTPCDao Interface Class contains the interface for various methods like 
 * 
 * Assign TPC(for STPC)
 * Remove TPC(for STPC)
 * Assign TPCFac(for FTPC)
 * Remove TPC(for FTPC)
 * Assign special task to FTPC
 * View Users and View Tasks
 * Fetch User based on Username
 * Fetch Faculty User based on Username
 * Fetch UserRole based on RoleID
 * 
 * 
 * */
package org.crce.interns.dao;

import java.util.List;

import org.crce.interns.model.FacultyUser;
import org.crce.interns.model.RMUser;
import org.crce.interns.model.UserDetails;

public interface AssignTPCDao {
	public void assignTPC(UserDetails user);
	public void insertWork(FacultyUser fuser);
	public FacultyUser getFacultyUser(FacultyUser fuser);
	public RMUser getUserRole(String role_id);
	public List<FacultyUser> viewFacultyTasks();
	public List<UserDetails> viewUsers();
	public void removeTPC(UserDetails user);
	public UserDetails getUser(UserDetails checkUser);
	public void assignTPCFac(UserDetails user);
	public void removeTPCFac(UserDetails user);

}

