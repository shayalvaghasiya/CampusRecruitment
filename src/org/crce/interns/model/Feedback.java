package org.crce.interns.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
@Entity
@Table(name="job_schema.feedback")
public class Feedback implements Serializable {
	private static final long serialVersionUID = -723583058586873479L;
	
	@Id
	@Column(name = "username")
	 @NotNull 
	 
	String username;
	@Column(name="feedback")
	 
	@Size(min=2, max=500)
	
	 String feeback;
         @Id
	 @Column(name="company_name")
	 
	 @NotNull
	String company;

        
         @Column(name="created_date")
       private Date created_date;
@Column(name="created_by")		
private String created_by;
            @Column(name="modified_date")
		private Date modified_date;
@Column(name="modified_by")		
private String modified_by;
@Column(name="year")
		private String year;
		
	 
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFeeback() {
		return feeback;
	}
	public void setFeeback(String feeback) {
		this.feeback = feeback;
	}
	
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	
	public Date getCreated_date() {
			return created_date;
		}
		public void setCreated_date(Date created_date) {
			this.created_date = created_date;
		}
		public String getCreated_by() {
			return created_by;
		}
		public void setCreated_by(String created_by) {
			this.created_by = created_by;
		}
		public Date getModified_date() {
			return modified_date;
		}
		public void setModified_date(Date modified_date) {
			this.modified_date = modified_date;
		}
		public String getModified_by() {
			return modified_by;
		}
		public void setModified_by(String modified_by) {
			this.modified_by = modified_by;
		}
		public String getYear() {
			return year;
		}
		public void setYear(String year) {
			this.year = year;
		}
	


}
