package org.crce.interns.model;
import java.io.Serializable;

import javax.persistence.Column;
//import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
//import javax.persistence.PrimaryKeyJoinColumn;
//import javax.persistence.SecondaryTable;
//import javax.persistence.SecondaryTables;
import javax.persistence.Table;

//import org.apache.commons.collections.list.LazyList;

@Entity
//@IdClass(UserCompanyId.class)
@Table(name="job_schema.applicant_company")
/*@SecondaryTables({
	@SecondaryTable(name = "job_schema.company", pkJoinColumns = @PrimaryKeyJoinColumn(name = "company_id") ),
	@SecondaryTable(name = "user_schema.userdetails", pkJoinColumns = @PrimaryKeyJoinColumn(name = "username") )
	})
*/public class UserCompany implements Serializable{
	
	/**
	 * 
	 */
	
	private static final long serialVersionUID = 7820053866158129013L;
	
		
	@Id
	@Column(name="username", unique=false, nullable=false)
	private String username;
	
	@Id
	@Column(name="company_id")
	//@OneToMany
	//@JoinTable(name="job_schema.company", joinColumns= @JoinColumn(name="company_id")
	//)
	private int company_id;

	@Column(name="company_name")
	private String company;
	
	@Column(name="year")
	private String year;
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getCompany_id() {
		return company_id;
	}
	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}
	
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	
	public String getYear() {
		return year;
	}
	
	public void setYear(String year) {
		this.year = year;
	}
}	
