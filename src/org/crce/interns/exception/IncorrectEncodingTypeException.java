/*
*
*
* 
* Filename: IncorrectEncodingTypeException.java	
* 	
* Modules using this exception: AddUserViaCSV file
* 
* Description: This user defined exception is used to handle the condition when the uploaded file is not of UTF-8 encoding type.
* 
* Functions: toString()
*
*/


package org.crce.interns.exception;

public class IncorrectEncodingTypeException extends Exception {

	public String toString(){
		return("Failed to upload...Incorrect file encoding type!");
	}
}
