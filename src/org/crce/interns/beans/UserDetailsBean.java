
package org.crce.interns.beans;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Id;

public class UserDetailsBean implements Serializable {	

	private String userName;
	
	private String userPassword;
	
	private String accountActive;
	
	private String currentState;
	
	private Date lastLogin;
	
	private String roleId;	

	private String createdBy;
	

	private Date createdDate;
	

	private String modifiedBy;
	

	private Date modifiedDate;
	

	private boolean notified;


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserPassword() {
		return userPassword;
	}


	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}


	public String getAccountActive() {
		return accountActive;
	}


	public void setAccountActive(String accountActive) {
		this.accountActive = accountActive;
	}


	public String getCurrentState() {
		return currentState;
	}


	public void setCurrentState(String currentState) {
		this.currentState = currentState;
	}


	public Date getLastLogin() {
		return lastLogin;
	}


	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}


	public String getRoleId() {
		return roleId;
	}


	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}


	public String getCreatedBy() {
		return createdBy;
	}


	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}


	public Date getCreatedDate() {
		return createdDate;
	}


	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}


	public String getModifiedBy() {
		return modifiedBy;
	}


	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}


	public Date getModifiedDate() {
		return modifiedDate;
	}


	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}


	public boolean isNotified() {
		return notified;
	}


	public void setNotified(boolean notified) {
		this.notified = notified;
	}
	
	

}
