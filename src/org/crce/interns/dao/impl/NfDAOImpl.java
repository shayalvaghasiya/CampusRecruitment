/**
 * 
 *	Description : DAO impl for notification related CRUD operations
 *	DEPENDENCIES: 
 * 	model-	Notification;NotificationRoot;
 */

package org.crce.interns.dao.impl;
import java.io.File;

import org.crce.interns.beans.FileReader;
import org.crce.interns.dao.NfDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

import org.crce.interns.model.Notification;
import org.crce.interns.model.NotificationRoot;

@Repository("nfDAO")
public class NfDAOImpl implements NfDAO{
/*
	private static final String FILE = "./src/resources/database.xml";
	public File file = new File(FILE);*/
	
	@Autowired
	private FileReader fr;
	
	public JAXBContext context;
	
	NotificationRoot root = new NotificationRoot();	
	List<Notification> notifications = new ArrayList<Notification>();
	Notification n = new Notification();
	
	//-----------------------------------------------------------------------------------------------------------
	public void checkNf(){
		System.out.print("inside nf dao");
		//checkFile();
	}
	//-----------------------------------------------------------------------------------------------------------
	// test method definition
	public static void checkFile(){
	//	String FILE = "./src/resources/database.xml";
	//	File file = new File(FILE);
		System.out.print(new NfDAOImpl().fr.getFile());
	}
	//-----------------------------------------------------------------------------------------------------------	
	public NotificationRoot getNotificationDatabase(){
		
		//unmarshall
		try {
			context = JAXBContext.newInstance(NotificationRoot.class);

			Unmarshaller jaxbUnmarshaller = context.createUnmarshaller();

			root = (NotificationRoot) jaxbUnmarshaller.unmarshal(fr.getFile());
						
		}
		catch(JAXBException e){
			
			System.out.println("exception at get xml");
		}
		return root;
	
	}
	//-----------------------------------------------------------------------------------------------------------
	public void displayXmlDatabaseInConsole (){
		
		root = getNotificationDatabase();
		
		try{
			context = JAXBContext.newInstance(NotificationRoot.class);
			Marshaller m= context.createMarshaller();
			m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT,Boolean.TRUE);			
			m.marshal(root,System.out);
			
		}
		catch(JAXBException e){
			System.out.println("exception at display xml");
		}
	}
	//-----------------------------------------------------------------------------------------------------------
	
	public boolean addNotification(Notification add){
		
		root = getNotificationDatabase();
		notifications = root.getNotifications();
		
		int size = notifications.size();
		System.out.println("size 1 :"+size);
		
		notifications.add(add);
		root.setNotifications(notifications);
		
		
		//marshall
		try{
			context = JAXBContext.newInstance(NotificationRoot.class);
			Marshaller m= context.createMarshaller();
			m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT,Boolean.TRUE);			
			m.marshal(root,fr.getFile());
						
		}
		catch(JAXBException e){
			
			System.out.println("exception at add to xml");
		}
		root = null;
		root = getNotificationDatabase();
		notifications = null;
		notifications = root.getNotifications();
		System.out.println("size 2 :"+notifications.size());
		
		if(size+1 == notifications.size()){
			return true;
		}
		else{
			System.out.println("size doesn't match");
			return false;
		}
		
	}
	
}
