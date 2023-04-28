/*
 * AssignTPODao Interface Class contains the interface for various methods like 
 * 
 * Assign TPO(for FTPC)
 * Remove TPO(for FTPC)
 * View Users
 * Fetch User based on Username
 * 
 *
 * 
 * */
package org.crce.interns.dao;

import java.util.List;

import org.crce.interns.model.UserDetails;

public interface AssignTPODao {
	public void assignTPO(UserDetails user);

	public List<UserDetails> viewUsers();

	public void removeTPO(UserDetails user);

	public UserDetails getUser(UserDetails checkUser);

}

