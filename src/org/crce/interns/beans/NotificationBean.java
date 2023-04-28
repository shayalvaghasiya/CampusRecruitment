/**
 * 
 * 	Description : POJO bean for model.Notification
 */
package org.crce.interns.beans;




public class NotificationBean {


	
	private String userOrGroupId ;		
	
	
	private String category ;
	
	
	private String type ;
	
	
	private String message ;

	
	private String dateTime ;
	
	
	private String url ;


	public String getUserOrGroupId() {
		return userOrGroupId;
	}


	public void setUserOrGroupId(String userOrGroupId) {
		this.userOrGroupId = userOrGroupId;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}


	public String getDateTime() {
		return dateTime;
	}


	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}


	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
	}
	
	
}
