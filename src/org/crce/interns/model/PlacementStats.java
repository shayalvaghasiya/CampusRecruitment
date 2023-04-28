package org.crce.interns.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.SecondaryTables;
import javax.persistence.Table;

@Entity
@Table(name = "placement_stats", catalog = "placement_statistics_schema")
@SecondaryTables({	
	@SecondaryTable(name = "job_schema.company", pkJoinColumns = @PrimaryKeyJoinColumn(name = "company_id") ) 
	})
public class PlacementStats {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)	
	@Column(name = "stats_id")
	private int statsId;
	
	@Column(name = "company_id")
	private int companyId;
	
	@Column(name = "year")
	private String year; 
	
	@Column(name = "it")
	private int it;
	
	@Column(name = "comps")
	private int comps = 0;
	
	@Column(name = "elex")
	private int elex;
	
	@Column(name = "prod")
	private int prod;

	public int getStatsId() {
		return statsId;
	}

	public void setStatsId(int statsId) {
		this.statsId = statsId;
	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

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
