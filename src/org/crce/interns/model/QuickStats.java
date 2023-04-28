/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.crce.interns.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="placement_statistics_schema.quick_stats")
public class QuickStats implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8610123466762218473L;

	@Id
	@Column(name="username", unique=false, nullable=false)
	private String username;

	@Id
	@Column(name="company_id")
	private int company_id;

	@Column(name="company_name", nullable=false)
	private String company_name;
	
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

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	
	
}


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 
package org.crce.interns.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

*//**
 *
 * @author Leon
 *//*
@Entity
@Table(name = "quick_stats", catalog="placement_statistics_schema")
@SuppressWarnings("serial")
public class QuickStats {
    
    @Id
    @Column(name = "username" )        
    String userName;
    
    
    @Column(name = "branch" )
    String branch;

    @Column(name = "company_id")
    String companyId;
    
    
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

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }
    
    
    
}
*/