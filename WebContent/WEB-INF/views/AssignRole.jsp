<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Assign Role</title>
<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>
	<jsp:directive.include file="Header.jsp" />
	<div class="main-content">
		<div class="main-content-inner">
		<div class="breadcrumbs" id="breadcrumbs">

				<jsp:directive.include file="searchheader.jsp" />
			</div>
			<div class="page-content">
				<div class="page-header">
					<h2 class="widget-title grey lighter">
						&nbsp; &nbsp; &nbsp; &nbsp; 
						Assign Role
					</h2>
				</div>
				<div class="space"></div>
				<div class="center">
			<form:form action="roleAssigned"  commandName="assignRole">
				<table align="center" style="border-spacing: 50px;" >
					<tr>
					<br><br>
						<%-- <td>Function Name:<FONT color="red"><form:errors path="functionName" /></FONT></td>
						<td><form:input path="functionName" /></td>
						 --%>
						<td>							
						<form:label path="functionName">Function Name:</form:label></td>
						<td><form:input path="functionName" /></td>
						<td><form:errors path="functionName" cssClass="error" /></td>
					</tr>
					
					<tr>

					</tr>
					<tr>
					
						<td>Role ID:<FONT color="red"><form:errors
							path="roleId" /></FONT></td>
						<td><form:input path="roleId" /></td>	
						
					</tr>
					<tr>
						
					</tr>
					<tr>
					
						<td>Function URL:</td>
						<td><form:input path="functionURL"/></td>
					</tr>
					<tr>
						
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Submit" class="btn btn-info" style="margin: 10px; width: 200px;"/></td>
					</tr>
				</table>
				</form:form>
  				</div>
  				<jsp:directive.include file="Footer.jsp" />
	<jsp:directive.include file="scripts.jsp" />
  			</div>
  		</div>
  	</div>			
  	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
</body>
</html>
