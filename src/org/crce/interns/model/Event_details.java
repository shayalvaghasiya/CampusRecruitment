
/*
 * Event_details Class contains the various attributes of the 
 * event_schema.event_details table and their getters and setters
 * and various annotations above them
 * 
 
 * 
 * */
package org.crce.interns.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "event_schema.event_details")
public class Event_details implements Serializable {
	/*@Id
	@Column(name = "event_id ", nullable = false)
	@NotNull
	private String event_id;*/
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "event_id", nullable = false)
	private Integer event_id;

	@Column(name = "event_type")
	private String event_type;

	@Column(name = "company_id")
	private int company_id;

	@Column(name = "approved")
	private String approved;

	@Column(name = "date")
	private Date dates;

	@Column(name = "venue")
	private String venue;

	@Column(name = "time")
	private String times;

	public Integer getEvent_id() {
		return event_id;
	}

	public void setEvent_id(Integer event_id) {
		this.event_id = event_id;
	}
	
	public String getEvent_type() {
		return event_type;
	}

	public void setEvent_type(String event_type) {
		this.event_type = event_type;
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
		return dates;
	}

	public void setDate(Date dates) {
		this.dates = dates;
	}

	public String getVenue() {
		return venue;
	}

	public void setVenue(String venue) {
		this.venue = venue;
	}

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}
}

