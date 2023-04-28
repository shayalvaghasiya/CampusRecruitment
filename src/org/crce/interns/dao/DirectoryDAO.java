/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.crce.interns.dao;

import java.util.List;


import java.util.List;


public interface DirectoryDAO{    
	//public String checkLogin(String userName, String userPassword);
        public List createStudentFolder();
        public List createFacultyFolder();
        public List createTpoFolder();
        public List createCompanyFolder();
        public List createAdminFolder();
}