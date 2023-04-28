/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.crce.interns.dao;

import java.util.List;


public interface SendEmailDAO {
    public String fetchCompsSTPC();
    public String fetchElexSTPC();
    public String fetchITSTPC();
    public String fetchProdSTPC();
    public String fetchCompsFTPC();
    public String fetchElexFTPC();
    public String fetchITFTPC();
    public String fetchProdFTPC();
    public String fetchStudentEmailId(String receivers);
    public String fetchStreamStudents(String receivers);
    public String fetchCompanyStudents(String companyName);
}
