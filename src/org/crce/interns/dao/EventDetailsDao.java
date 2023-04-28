package org.crce.interns.dao;
import org.crce.interns.model.Aptitude;
import org.crce.interns.model.Event;
import org.crce.interns.model.Interview;
import org.crce.interns.model.Pre_Placement;

public interface EventDetailsDao {
	
	public int create(Event event,String cname);	
	public void create(Aptitude bean);
	public void create(Pre_Placement bean);
	public void create(Interview bean);
	
}
