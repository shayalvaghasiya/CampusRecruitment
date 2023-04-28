
<!--
 Filename : AddUserViaCSV.jsp
 Description: used for adding users via csv file at the beginning of the year by tpo/ admin. Mapping goes to AddUserController.
 -->

<!-- 
description: contains links to manage system users->
<!-- -------------------------------------------------------------------------------------------------------- -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<title>Add User via Csv file..</title>

<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>


<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="../assets/font-awesome/4.2.0/css/font-awesome.min.css" />

<!-- page specific plugin styles -->
<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />



<!-- text fonts -->
<link rel="stylesheet" href="../assets/fonts/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="../assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />





<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="../assets/js/ace-extra.min.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->


</head>
<body 	onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
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
						<br><br>
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="clearfix">
										<c:if test="${success==1}">
															<p style="color:green;">Users added successfully!</p>
														</c:if>
										<div class="row">
										<div class="col-xs-12 col-lg-6">
										<div class="widget-box">
										<div class="widget-body">
										 <div class="widget-main">
											<div>


											 &nbsp;&nbsp; <b >Upload CSV file...! </b>(Please change encoding type of file to UTF-8)

												<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadFile">
												<!--  Enter year of passing:   <input id="year" name="year" type="text" value=""/><br/><br/>-->
												
												<form:errors path="*" cssClass="errorblock" element="div" />
														<br><br>
														<input class="btn btn-sm btn-primary" type="file" name="fileUpload"><br />
														
														<c:if test="${error==1}">
															<p style="color:red;">Failed to upload...File format can be .csv only!</p>
														</c:if>
														<c:if test="${error1==1}">
															<p style="color:red;">Failed to upload...File size can be only upto 1MB</p>
														</c:if>
														<c:if test="${encoding==1}">
															<p style="color:red;">Failed to upload...Please change encoding type of the file to UTF-8</p>
														</c:if>

														  <input class="btn btn-sm btn-success" type="submit" value="Upload" style="margin: 10px; width: 100px"> Press here to upload the file!
														  <span><form:errors path="file" cssClass="error" />
															</span>
												</form:form>
											</div>

											</div>
											</div>
											</div>
										</div>

										<div class="col-xs-12 col-lg-6">
										<div class="widget-box">
										<div class="widget-body">
										 <div class="widget-main">
											<b>To manage the users manually</b>
											<br><br>
											<a href="addstudent.html"><button class="btn btn-info btn-lg" style="margin: 10px; width: 250px">Add Student</button></a>
											<a href="addfaculty.html"><button class="btn btn-info btn-lg" style="margin: 10px; width: 250px">Add Faculty</button></a>
											<br>
											<a href="removeuser"><button class="btn btn-success btn-lg" style="margin: 10px; width: 250px">Remove User</button></a>
											<a href="InsertWork.html"><button class="btn btn-success btn-lg " style="margin: 10px; width: 250px">Assign Task</button></a>
											<br>
											<a href="addCompany"><button class="btn btn-info btn-lg " style="margin: 10px; width: 250px">Add New Company</button></a>
											<c:if test="${sessionScope.roleName=='TPO'}">
											<a href="AssignTPC.html"><button class="btn btn-info btn-lg" style="margin: 10px; width: 250px">Assign TPC</button></a>
											<br>
											<a href="RemoveTPC.html"><button class="btn btn-success btn-lg" style="margin: 10px; width: 250px">Remove TPC</button></a>
											<!-- <a href="manageselected.html"><button class="btn btn-success btn-lg" style="margin: 10px; width: 250px">Manage List of Selected Applicants of all Companies</button></a> -->
											</c:if>
											<!-- <div>
												<table align="center">
												
													
													<tr>
														<td><b>To manage the users manually</b></td>
													</tr>
													<tr>
														<td><a href="addstudent.html"><button class="btn btn-pink btn-lg">Add Student</button></a></td></tr> 
												    <tr>
												    	
														<td><a href="addfaculty.html"><button class="btn btn-pink btn-lg">Add Faculty</button></a></td>	</tr>
													<tr>
														<td><a  href="removeuser"><button class="btn btn-pink btn-lg">Remove User</button></a><br/></td>
													</tr>
													
													<tr>
														<td><a href="InsertWork.html"><button class="btn btn-pink btn-lg">Assign Task</button></a><br/></td>
													</tr>
													
													<tr>
														<td><a href="addCompany"><button class="btn btn-pink btn-lg">Add New Company</button></a></td>
													</tr>	

													<c:if test="${sessionScope.roleName=='TPO'}">
												 	 <tr>
														<td>7.<a href="manageselected.html">Manage List of Selected Applicants of all Companies</a><br /></td>
													</tr>	
										
													 <tr>
														<td><a href="AssignTPC.html"><button class="btn btn-pink btn-lg">Assign TPC</button></a><br/></td>
													</tr>
													<tr>
														<td><a href="RemoveTPC.html"><button class="btn btn-pink btn-lg">Remove TPC</button></a><br/></td>
													</tr>
													<tr>
														<td><a href="manageselected.html"><button class="btn btn-pink btn-lg">Manage List of Selected Applicants of all Companies</button></a><br /></td>
													</tr>	
													</c:if>
												</table> 
												<br>
											</div> -->
										  </div>
										  </div>
										  </div>
										</div>
									</div>
										
								
								
								</div>
							</div>
						</div>
						<jsp:directive.include file="Footer.jsp" />
<jsp:directive.include file="scripts.jsp" />
					</div>
				</div>

		
	
</div>
<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	
		<!-- /.main-container -->

</body>
</html>


<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload CSV</title>
</head>
<body>




<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadFile">

<!-- <form method="POST" enctype="multipart/form-data" action="uploadFile"> -->

 <!--  Enter year of passing:   <input id="year" name="year" type="text" value=""/><br/><br/> -->
	<form:errors path="*" cssClass="errorblock" element="div" />
		File to upload: <input type="file" name="fileUpload"><br />
		
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be .csv only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p style="color:red;">Failed to upload...File size can be only upto 1MB</p>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
		  <span><form:errors path="file" cssClass="error" />
		</span>
	</form:form>
	<br/><br/>
	
</body>
</html> --%>


