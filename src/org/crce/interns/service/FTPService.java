/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.crce.interns.service;

import java.io.IOException;


public interface FTPService {
    public void uploadFTPFile(String localFileFullName, String fileName, String hostDir) throws Exception;
    public void downloadFTPFile(String source, String destination);
    public boolean listFTPFiles(String directory, String fileName) throws IOException;
    public void disconnect();
}
