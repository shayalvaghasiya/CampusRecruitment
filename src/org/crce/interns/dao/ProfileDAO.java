/**
 * 
 *	Description : DAO interface for profile related CRUD operations
 *	DEPENDENCIES: 
 * 	model-	ProfessionalProfile;PersonalProfile;UserDetails
 */

package org.crce.interns.dao;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.crce.interns.model.PersonalProfile;
import org.crce.interns.model.ProfessionalProfile;
import org.crce.interns.model.UserDetails;

//@Repository("profileDao")
public interface ProfileDAO {

	public UserDetails getProfile(UserDetails user);
	
	public ProfessionalProfile getProfile(ProfessionalProfile professionalProfile);
	
	public PersonalProfile getProfile(PersonalProfile personalProfile);
	
	public ProfessionalProfile updateProfessionalProfile(ProfessionalProfile professionalProfile);
	
	public PersonalProfile updatePersonalProfile(PersonalProfile personalProfile);
	
	public UserDetails updateUserDetails(UserDetails userDetails);
	
	public Map<String, Set<String>> totalStudents(String year);
	
	public List<String> listProfessionalProfile(String year);
	
	
}
