/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.crce.interns.service;

import java.util.List;




import java.util.List;
/*
Task: Interface for creating directories
*/
public interface DirectoryService{    
	//public String checkLogin(String userName, String userPassword);
        public void createStudentFolder();
        public void createFacultyFolder();
        public void createTpoFolder();
        public void createCompanyFolder();
        public void createAdminFolder();
        public void createSystemFolders();
}