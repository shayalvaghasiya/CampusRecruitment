package org.crce.interns.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_schema.professional_profile")
public class ProfessionalProfile {

	// NO OF FIELDS: 13

	@Id
	@Column(name = "username")
	private String userName;

	@Column(name = "branch")
	private String branch;
	
	@Column(name = "status")
	private String status;
	
	@Column(name = "year")
	private String year;

	@Column(name = "field_of_interest")
	private String fieldOfInterest;

	@Column(name = "achievements")
	private String achievements;

	@Column(name = "projects")
	private String projects;

	@Column(name = "internships")
	private String internships;

	@Column(name = "co_curricular_activities")
	private String coCurricularActivities;

	@Column(name = "extra_curricular_activities")
	private String extraCurricularActivities;

	// common to userDetails
	@Column(name = "created_date")
	private Date createdDate;

	@Column(name = "created_by")
	private String createdBy;

	@Column(name = "modified_date")
	private Date modifiedDate;

	@Column(name = "modified_by")
	private String modifiedBy;

	
	
	
	public ProfessionalProfile() {
		super();
	}


	public ProfessionalProfile(String username, String branch,String status, String year)
    {
        this.userName= username;
        this.branch = branch ;
        this.status =status;
        this.year=year;
    }
    

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getFieldOfInterest() {
		return fieldOfInterest;
	}

	public void setFieldOfInterest(String fieldOfInterest) {
		this.fieldOfInterest = fieldOfInterest;
	}

	public String getAchievements() {
		return achievements;
	}

	public void setAchievements(String achievements) {
		this.achievements = achievements;
	}

	public String getProjects() {
		return projects;
	}

	public void setProjects(String projects) {
		this.projects = projects;
	}

	public String getInternships() {
		return internships;
	}

	public void setInternships(String internships) {
		this.internships = internships;
	}

	public String getCoCurricularActivities() {
		return coCurricularActivities;
	}

	public void setCoCurricularActivities(String coCurricularActivities) {
		this.coCurricularActivities = coCurricularActivities;
	}

	public String getExtraCurricularActivities() {
		return extraCurricularActivities;
	}

	public void setExtraCurricularActivities(String extraCurricularActivities) {
		this.extraCurricularActivities = extraCurricularActivities;
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
