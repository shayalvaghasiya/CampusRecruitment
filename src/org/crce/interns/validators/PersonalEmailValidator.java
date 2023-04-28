/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.crce.interns.validators;


public class PersonalEmailValidator {
    
    public boolean validateEmail(String receivers){
        String [] receiverSplit = receivers.split(" ");
        boolean flag = true;
        for(String i : receiverSplit){
            if(!((i.matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
		+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,}),$")) || i.matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
		+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"))){
                System.out.println("entered" + i);
                flag = false;
                break;
            }
        }
        return flag;
    }
    
}
