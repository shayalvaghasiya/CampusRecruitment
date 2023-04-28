/**
 * 
 * 	Description : POJO bean for model.NotificationRoot
 */
package org.crce.interns.beans;

import java.util.List;

import org.crce.interns.beans.NotificationBean;


public class NotificationRootBean {

	private List<NotificationBean> notifications ;

	
	
	public List<NotificationBean> getNotifications() {
		return notifications;
	}

	public void setNotifications(List<NotificationBean> notifications) {
		this.notifications = notifications;
	}

}
