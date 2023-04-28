package org.crce.interns.service;

import org.crce.interns.beans.AptitudeBean;
import org.crce.interns.beans.EventBean;
import org.crce.interns.beans.InterviewBean;
import org.crce.interns.beans.Pre_PlacementBean;

public interface EventDetailsService {
	public int create(EventBean eventBean,String cname);
	public void create(AptitudeBean aptitudeBean);
	public void create(Pre_PlacementBean pre_placementBean);
	public void create(InterviewBean interviewBean);
}
