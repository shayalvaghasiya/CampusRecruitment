<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
    pageEncoding="ISO-8859-1"%>  
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Criteria</title>
 <style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>  

</head>
<body>

<form:form method="POST" action="saveCriteria" modelAttribute="criteriaBean" >  

<table> 
   <tr>
   <td><form:label path="eligible_branches">Eligible branches:</form:label></td>
   <td><form:input path="eligible_branches" /> </td>
   <td><form:errors path="eligible_branches" cssClass="error" /></td>
     
   
  
   </tr>
   <tr><td><form:label path="year_of_passing">Year of passing:</form:label></td>
   <td><form:input path="year_of_passing" /> </td>
   <td><form:errors path="year_of_passing" cssClass="error" /></td>
     
  
   </tr>
    <tr><td><form:label path="placed_students_allowed">Placed students allowed:</form:label></td>
    <td><form:input path="placed_students_allowed" /> </td>
    <td><form:errors path="placed_students_allowed" cssClass="error" /></td>
     
  
    </tr>
    <tr><td><form:label path="percentage">Percentage:</form:label></td>
    <td><form:input path="percentage" /> </td>
    <td><form:errors path="percentage" cssClass="error" /></td>
     
  </tr>
    <tr><td><form:label path="cgpa">CGPA:</form:label></td>
    <td><form:input path="cgpa" /> </td>
    <td><form:errors path="cgpa" cssClass="error" /></td>
     
  </tr>
    <tr><td><form:label path="no_of_live_kts_allowed">No. of live K.T.'s allowed:</form:label></td>
    <td><form:input path="no_of_live_kts_allowed" /> </td>
    <td><form:errors path="no_of_live_kts_allowed" cssClass="error" /></td>
     
  </tr>
    <tr><td><form:label path="no_of_dead_kts_allowed">No. of dead K.T.'s allowed:</form:label></td>
    <td><form:input path="no_of_dead_kts_allowed" /> </td>
    <td><form:errors path="no_of_dead_kts_allowed" cssClass="error" /></td>
     
  </tr>
    <tr><td><form:label path="year_gap_allowed">Is year gap allowed:</form:label></td>
    <td><form:input path="year_gap_allowed" /> </td>
    <td><form:errors path="year_gap_allowed" cssClass="error" /></td>
     
  </tr>
    <tr><td><form:label path="hsc_or_dip_percentage">Min. HSC Percentage:</form:label></td>
    <td><form:input path="hsc_or_dip_percentage" /></td>
    <td><form:errors path="hsc_or_dip_percentage" cssClass="error" /></td>
     
  </tr>
    <tr><td><form:label path="ssc_percentage">Min. SSC Percentage:</form:label></td>
    <td><form:input path="ssc_percentage" /></td>
    <td><form:errors path="ssc_percentage" cssClass="error" /></td>
     
  </tr>
  <tr><td><form:label path="last_date_to_apply">last Date to apply:</form:label></td>
    <td><form:input path="last_date_to_apply" /></td>
    <td><form:errors path="last_date_to_apply" cssClass="error" /></td>
     
  </tr>
  <tr>  
         <td colspan="2"><input type="submit" value="Submit"/></td>  
        </tr>  
  
  </table>
  </form:form>
  <a href="addCompany.html">Add Company</a>
</body>
</html>