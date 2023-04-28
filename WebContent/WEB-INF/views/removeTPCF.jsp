<!-- 
description: contain field for removing the student tpc -->
<!-- -------------------------------------------------------------------------------------------------------- -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Remove Student TPC</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
<!-- page specific plugin styles -->
		<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />
		<link rel="stylesheet" href="assets/css/jquery.gritter.min.css" />
		<link rel="stylesheet" href="assets/css/select2.min.css" />
		<link rel="stylesheet" href="assets/css/datepicker.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-editable.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-multiselect.min.css" />
		<link rel="stylesheet" href="assets/css/jquery-ui.min.css" />



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
							<h1>
								Logged in as
								<c:out value="${sessionScope.name}" />
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="widget-box">
								<div class="widget-body">
								 <div class="widget-main" align="center">
									<h2>Remove Student TPC</h2>
									<br>
										<form:form method="POST" action="SubmitRemoveTPCF">
											<table>
												<tr>
													<td><form:label path="userName">User name:</form:label></td>
													<td><form:input path="userName" /></td>
													<td><form:errors path="userName" cssClass="error" /></td>
												</tr>
												<tr>
													<p>
														<font size="5" color="red" face="verdana">${erroMesg}</font>
													</p>
												</tr>
												<tr>
													<td colspan="2" style="padding-top: 10px;"><center><input class="btn btn-sm  btn-primary" type="submit" value="Submit" /></center></td>
												</tr>
											</table>
										</form:form>
								  </div>
								 </div>
								</div>  
						
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					
					</div><!-- /.page-content -->
				</div>
			
</div>
<jsp:directive.include file="Footer.jsp" />
<jsp:directive.include file="scripts.jsp" />
	
</body>
</html>


<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- This JSP is a form to allow a person to input Username of the User to be removed as STPC

 @author Adarsh
 -->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove Student TPC</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>
	<h2>Remove Student TPC</h2>
	<form:form method="POST" action="SubmitRemoveTPCF">
		<table>
			<tr>
				<td><form:label path="userName">User name:</form:label></td>
				<td><form:input path="userName" /></td>
				<td><form:errors path="userName" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
	<tr>
		<td><a href="FTPCHome">Home</a></td>
	</tr>
	
</body>
</html>
 --%>
