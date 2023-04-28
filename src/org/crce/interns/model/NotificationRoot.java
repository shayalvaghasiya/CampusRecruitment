/**
 * 
 */
package org.crce.interns.model;


import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="root")
@XmlAccessorType(XmlAccessType.FIELD)
public class NotificationRoot {

	@XmlElementWrapper
	@XmlElement(name="notification")	
	private List<Notification> notifications ;

	
	
	public List<Notification> getNotifications() {
		return notifications;
	}

	public void setNotifications(List<Notification> notifications) {
		this.notifications = notifications;
	}
	
	
	


}
