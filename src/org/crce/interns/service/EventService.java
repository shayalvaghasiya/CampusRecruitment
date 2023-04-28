/*
 * EventService Interface Class contains the interface for method
 * 
 * View Events based on month
 * 
 * 
 * 
 * */
package org.crce.interns.service;

import java.util.List;

import org.crce.interns.beans.Event_detailsBean;

public interface EventService {

	public List<Event_detailsBean> viewEvents(Integer months);

	public String getCompanyName(int company_id);

}

