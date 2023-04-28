/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
*
* Task: Communicates with database to get group values
* Dependency: -
*/
package org.crce.interns.dao.impl;

import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.crce.interns.dao.SendEmailDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

/**
 *
 * 
 */
@Repository("sendEmailDAOImpl")
public class SendEmailDAOImpl implements SendEmailDAO {

    @Resource(name = "sessionFactory")
    protected SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    protected Session getSession() {
        return sessionFactory.openSession();
    }
    
    /**
     * 
     * @return String
     */
    
    @Override
    public String fetchCompsSTPC() {
        Session session = sessionFactory.openSession();

        String senderList = "";
        //String SQL_QUERY="Select emailId from PersonalProfile where userName like (select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering')";
        String SQL_QUERY = "select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering' and p.year like '" + Integer.toString(Calendar.getInstance().get(Calendar.YEAR)+1) + "'";

        Query query = session.createQuery(SQL_QUERY);

        List list = query.list();

        if (!list.isEmpty()) {
            System.out.println(list);
        }

        for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);

        session.close();
        return senderList;
    }
    
    /**
     * 
     * @return String
     */
    
    @Override
    public String fetchElexSTPC() {
        Session session = sessionFactory.openSession();

        String senderList = "";

        //String SQL_QUERY="Select emailId from PersonalProfile where userName like (select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering')";
        String SQL_QUERY = "select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Electronics Engineering' and p.year like '" + Integer.toString(Calendar.getInstance().get(Calendar.YEAR)+1) + "'";

        Query query = session.createQuery(SQL_QUERY);

        List list = query.list();

        if (!list.isEmpty()) {
            System.out.println(list);
        }

        for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);

        session.close();
        return senderList;
    }
    
    /**
     * 
     * @return String
     */
    
    @Override
    public String fetchITSTPC() {
        Session session = sessionFactory.openSession();

        String senderList = "";

        //String SQL_QUERY="Select emailId from PersonalProfile where userName like (select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering')";
        String SQL_QUERY = "select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Information Technology' and p.year like '" + Integer.toString(Calendar.getInstance().get(Calendar.YEAR)+1) + "'";

        Query query = session.createQuery(SQL_QUERY);

        List list = query.list();

        if (!list.isEmpty()) {
            System.out.println(list);
        }

        for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);

        session.close();
        return senderList;
    }
    
    /**
     * 
     * @return String
     */
    
    @Override
    public String fetchProdSTPC() {
        Session session = sessionFactory.openSession();

        String senderList = "";

        //String SQL_QUERY="Select emailId from PersonalProfile where userName like (select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering')";
        String SQL_QUERY = "select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Production Engineering' and p.year like '" + Integer.toString(Calendar.getInstance().get(Calendar.YEAR)+1) + "'";

        Query query = session.createQuery(SQL_QUERY);

        List list = query.list();

        if (!list.isEmpty()) {
            System.out.println(list);
        }

        for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);

        session.close();
        return senderList;
    }

    /**
     * 
     * @return String
     */
    
    @Override
    public String fetchCompsFTPC() {
        Session session = sessionFactory.openSession();

        String senderList = "";

        //String SQL_QUERY="Select emailId from PersonalProfile where userName like (select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering')";
        String SQL_QUERY = "select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '4' and p.branch like 'Computer Engineering' and p.year like '" + Integer.toString(Calendar.getInstance().get(Calendar.YEAR)+1) + "'";

        Query query = session.createQuery(SQL_QUERY);

        List list = query.list();

        if (!list.isEmpty()) {
            System.out.println(list);
        }

        for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);

        session.close();
        return senderList;
    }
    
    /**
     * 
     * @return String
     */
    
    @Override
    public String fetchElexFTPC() {
        Session session = sessionFactory.openSession();

        String senderList = "";

        //String SQL_QUERY="Select emailId from PersonalProfile where userName like (select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering')";
        String SQL_QUERY = "select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '4' and p.branch like 'Electronics Engineering' and p.year like '" + Integer.toString(Calendar.getInstance().get(Calendar.YEAR)+1) + "'";

        Query query = session.createQuery(SQL_QUERY);

        List list = query.list();

        if (!list.isEmpty()) {
            System.out.println(list);
        }

        for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);

        session.close();
        return senderList;
    }
    
    /**
     * 
     * @return String
     */
    
    @Override
    public String fetchITFTPC() {
        Session session = sessionFactory.openSession();

        String senderList = "";

        //String SQL_QUERY="Select emailId from PersonalProfile where userName like (select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering')";
        String SQL_QUERY = "select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '4' and p.branch like 'Information Technology Engineering' and p.year like '" + Integer.toString(Calendar.getInstance().get(Calendar.YEAR)+1) + "'";

        Query query = session.createQuery(SQL_QUERY);

        List list = query.list();

        if (!list.isEmpty()) {
            System.out.println(list);
        }

        for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);

        session.close();
        return senderList;
    }
    
    /**
     * 
     * @return String
     */
    
    @Override
    public String fetchProdFTPC() {
        Session session = sessionFactory.openSession();

        String senderList = "";

        //String SQL_QUERY="Select emailId from PersonalProfile where userName like (select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering')";
        String SQL_QUERY = "select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '4' and p.branch like 'Production Engineering' and p.year like '" + Integer.toString(Calendar.getInstance().get(Calendar.YEAR)+1) + "'";

        Query query = session.createQuery(SQL_QUERY);

        List list = query.list();

        if (!list.isEmpty()) {
            System.out.println(list);
        }

        for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);

        session.close();
        return senderList;
    }
    /**
     * 
     * @param receivers
     * @return 
     */
    @Override
    public String fetchStudentEmailId(String receivers){
        Session session = sessionFactory.openSession();
        
        String SQL_QUERY = "Select emailId from PersonalProfile where userName like '" + receivers + "'";
        Query query = session.createQuery(SQL_QUERY);
        List list = query.list();
        if(!list.isEmpty()){
            System.out.println(list);
        }
        session.close();
        return list.toString();
    }
    
    /**
     * 
     * @param receivers
     * @return 
     */
    @Override
    public String fetchStreamStudents(String receivers){
        Session session = sessionFactory.openSession();
        
        String senderList="";
         String SQL_QUERY = "Select userName from ProfessionalProfile where branch like '" + receivers + "' and year like '"+ Integer.toString(Calendar.getInstance().get(Calendar.YEAR)+1)+"'";
         Query query = session.createQuery(SQL_QUERY);
         List list = query.list();
         if(!list.isEmpty()){
            System.out.println(list);
        }
         for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);
        return senderList;
    }
    
    /**
     * 
     * @param companyName
     * @return String
     */
    
    @Override
    public String fetchCompanyStudents(String companyName){
        
        String senderList = "";
        Session session = sessionFactory.openSession();
        String SQL_QUERY = "Select company_id from Company where lower(company_name) like '" + companyName + "'";
        Query query = session.createQuery(SQL_QUERY);
        List list = query.list();
        System.out.println("List "+list.toString());
        for(Object j : list){
            System.out.println("called for j");
            String SQL_QUERY1 = "Select username from QuickStats where company_id = "+ Integer.parseInt(j.toString())+"and year like '" + Integer.toString(Calendar.getInstance().get(Calendar.YEAR))+"'";
            Query query1 = session.createQuery(SQL_QUERY1);
            List list1 = query1.list();
            System.out.println(list1.toString());
            //String recipient = list1.toString();
            for(Object i : list1){
                System.out.println("called for i");
                String SQL_QUERY2 = "Select emailId from PersonalProfile where userName like '" + i + "'";
                Query query2 = session.createQuery(SQL_QUERY2);
                List list2 = query2.list();
                System.out.println(list2.toString());
                String recipient = list2.toString();
                System.out.println(recipient);
            //String recipient = "Single" + o.toString() + "@gmail.com";
            senderList = senderList.concat(recipient + " ");
            }
        }
        System.out.println(senderList);
        return senderList;
    }
}
