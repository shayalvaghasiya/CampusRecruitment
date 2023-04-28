/*
* 
* Filename: FacultyBean.java	
* 	
* Module using this bean : ManageUser
* 
* Description: This bean is used to create a faculty user along with its attributes and getters and setters		
*
*/

package org.crce.interns.beans;

public class FacultyBean {
	
	private String userId;
	private String name;
	private String role_id;
	private String gender;
	private String email;
	private String branch;
	private String created_date;
	private String created_by;
	
	
	public String getCreated_date() {
		return created_date;
	}
	public String getCreated_by() {
		return created_by;
	}
	public void setCreated_date(String created_date) {
		this.created_date = created_date;
	}
	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRole_id() {
		return role_id;
	}
	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}

}
