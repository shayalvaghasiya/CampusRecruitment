package org.crce.interns.model;
import java.io.Serializable;
//import java.sql.Time;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="event_schema.event_details")
public class Event implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 7075636839311255864L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) //, generator="SEQUENCE1")
	//@SequenceGenerator(name="SEQUENCE1", sequenceName="SEQUENCE1", allocationSize=1)
	@Column(name = "event_id", nullable = false)
	private Integer event_id;
	
	@Column(name="company_id")
	private int company_id;
	
	@Column(name="approved")
	private String approved;
	
	@Column(name="date")
	private Date date;
	
	@Column(name="time")
	private Date time;
	
	@Column(name="venue")
	private String venue;
	
	@Column(name="event_type")
	private String event_type;
		
	@Column(name="created_by")
	private String created_by;
	
	@Column(name="created_date")
	private Date created_date;
	
	@Column(name="modified_by")
	private String modified_by;
	
	@Column(name="modified_date")
	private Date modified_date;
	
	public String getCreated_by() {
		return created_by;
	}
	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}
	public Date getCreated_date() {
		return created_date;
	}
	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
	}
	public String getModified_by() {
		return modified_by;
	}
	public void setModified_by(String modified_by) {
		this.modified_by = modified_by;
	}
	public Date getModified_date() {
		return modified_date;
	}
	public void setModified_date(Date modified_date) {
		this.modified_date = modified_date;
	}
	
	public Integer getEvent_id() {
		return event_id;
	}
	public void setEvent_id(Integer event_id) {
		this.event_id = event_id;
	}
	public int getCompany_id() {
		return company_id;
	}
	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}
	public String getApproved() {
		return approved;
	}
	public void setApproved(String approved) {
		this.approved = approved;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public String getEvent_type() {
		return event_type;
	}
	public void setEvent_type(String event_type) {
		this.event_type = event_type;
	}
	
	
}
