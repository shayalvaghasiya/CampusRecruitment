/**
 * 
 * 	Description : POJO bean for model.PersonalProfile
 */

package org.crce.interns.beans;

import java.util.Date;



public class PersonalProfileBean {

// NO OF FIELDS: 14

	private String userName;


	private String name;
	

	private String gender;


	private String dob;


	private String mobileNo;


	private String emailId;
	

	private String category;
	

	private String correspondenceAddress;


	private String permanentAddress;


	private String familyIncome;

	// common to userDetails
	

	private Date createdDate;


	private String createdBy;


	private Date modifiedDate;


	private String modifiedBy;


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}


	public String getMobileNo() {
		return mobileNo;
	}


	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}


	public String getEmailId() {
		return emailId;
	}


	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getCorrespondenceAddress() {
		return correspondenceAddress;
	}


	public void setCorrespondenceAddress(String correspondenceAddress) {
		this.correspondenceAddress = correspondenceAddress;
	}


	public String getPermanentAddress() {
		return permanentAddress;
	}


	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}


	public String getFamilyIncome() {
		return familyIncome;
	}


	public void setFamilyIncome(String familyIncome) {
		this.familyIncome = familyIncome;
	}


	public Date getCreatedDate() {
		return createdDate;
	}


	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}


	public String getCreatedBy() {
		return createdBy;
	}


	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}


	public Date getModifiedDate() {
		return modifiedDate;
	}


	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}


	public String getModifiedBy() {
		return modifiedBy;
	}


	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}


	
}
