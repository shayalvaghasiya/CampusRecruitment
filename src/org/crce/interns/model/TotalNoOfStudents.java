package org.crce.interns.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "placement_statistics_schema.total_no_of_students")
public class TotalNoOfStudents {
	@Id		
	@Column(name = "year")
	private String year;
	
	@Column(name = "it")
	private int it;
	
	@Column(name = "comps")
	private int comps;
	
	@Column(name = "elex")
	private int elex;
	
	@Column(name = "prod")
	private int prod;

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public int getIt() {
		return it;
	}

	public void setIt(int it) {
		this.it = it;
	}

	public int getComps() {
		return comps;
	}

	public void setComps(int comps) {
		this.comps = comps;
	}

	public int getElex() {
		return elex;
	}

	public void setElex(int elex) {
		this.elex = elex;
	}

	public int getProd() {
		return prod;
	}

	public void setProd(int prod) {
		this.prod = prod;
	}
}
