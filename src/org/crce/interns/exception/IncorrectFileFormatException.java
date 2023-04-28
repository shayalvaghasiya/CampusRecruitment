/*
*
*
* 
* 
* Filename: IncorrectFileFormatException.java	
* 	
* Modules using this exception: AddUserViaCSV file, Resume Upload
* 
* Description: This user defined exception is used to handle the condition when the uploaded file is not of a particular desired extension/type.
* 
* Functions: toString()
*
*/


package org.crce.interns.exception;

public class IncorrectFileFormatException extends Exception {
	
	/*String s2;
	IncorrectFileFormatException(String s1){
		s2 = s1;
	}*/

	public String toString(){
		return("Failed to upload...Incorrect file format!");
	}
}
