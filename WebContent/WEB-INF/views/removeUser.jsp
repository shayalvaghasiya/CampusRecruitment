
<!-- 
description: contains fields to add new faculty member->
<!-- -------------------------------------------------------------------------------------------------------- -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Remove User</title>

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
						
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="clearfix">
								
										<div class="row">
										<div class="col-xs-12 ">
										<div class="widget-box">
										<div class="widget-body">
										 <div class="widget-main" align="center">
											<div>
											<h3>Enter User ID to Remove any User from the system </h3><br>
											
											<c:if test="${error==1}">
												<p style="color:red;">Can not remove Admin!!!</p>
											</c:if>
											<c:if test="${success==1}">
												<p style="color:green;">User removed successfully!</p>
											</c:if>
											<c:if test="${no_user==1}">
												<font size="5" color="red" face="verdana">This user does not exist in the database!</font>
											</c:if>
													<form method="POST" action="removeUser">
													Enter User ID:   <input id="username" name="username" type="text" value="" required/><br/><br/>
														
															  <input type="submit" value="Remove User" class='btn btn-danger btn-lg '> 
														</form>
												
												<br><br>	
											</div>
											</div>
											</div>
											</div>
											<br><br>
										</div>

										
									</div>
										
								
								
								</div>
							</div>
						</div>
					</div>
				</div>

		<jsp:directive.include file="scripts.jsp" />
		<jsp:directive.include file="Footer.jsp" />
	
	
		<!-- /.main-container -->

</div>

</body>
</html>


<%--


<!--
 Filename : removeUser.jsp
 Author name: Crystal Cuthinho
 Description: used for removing any user manually by tpo/ admin. Mapping goes to ManageUserController.
 -->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove User</title>
</head>
<body>

<form method="POST" action="removeUser">
Enter User ID:   <input id="username" name="username" type="text" value=""/><br/><br/>
	
		  <input type="submit" value="Remove User"> 
	</form>

</body>
</html>


--%>

