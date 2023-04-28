/*
*
*
* 
* 
* Filename: MaxFileSizeExceededError.java	
* 	
* Modules using this exception: AddUserViaCSV file, Resume Upload
* 
* Description: This user defined exception is used to handle the condition when the uploaded file exceeds a particular size limit.
* 
* Functions: toString()
*
*/

package org.crce.interns.exception;

public class MaxFileSizeExceededError extends Exception{

	public String toString(){
		return("Failed to upload...Max file size exceeded!");
	}
}
