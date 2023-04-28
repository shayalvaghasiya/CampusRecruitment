/**
 * 
 */
package org.crce.interns.model;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="notification")
@XmlAccessorType(XmlAccessType.FIELD)
public class Notification {
	
	@XmlElement
	private String userOrGroupId ;		
	
	@XmlElement
	private String category ;
	
	@XmlElement
	private String type ;
	
	@XmlElement
	private String message ;

	@XmlElement
	private String dateTime ;
			
	@XmlElement
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
