/**
 * 
 *	Description : DAO interface for notification related CRUD operations
 *	DEPENDENCIES: 
 * 	model-	Notification;NotificationRoot;
 */

package org.crce.interns.dao;

import org.crce.interns.model.Notification;
import org.crce.interns.model.NotificationRoot;

public interface NfDAO {

	public void checkNf();
	public NotificationRoot getNotificationDatabase();
	public void displayXmlDatabaseInConsole ();
	public boolean addNotification (Notification n);
	
}
