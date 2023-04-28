<!-- 
description: contains fields for TPO to allot a work for the FACULTY TPC  ->
<!-- -------------------------------------------------------------------------------------------------------- -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Assign Task to Faculty</title>
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
		
			<div class="breadcrumbs" id="breadcrumbs">

				<jsp:directive.include file="searchheader.jsp" />
			</div>
			<div class="page-content">


				<div class="page-header">
					<h1>
						Logged in as
						<core:out value="${loginForm.userName}" />
					</h1>
				</div>
				<!-- /.page-header -->

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						<div class="clearfix">

							<div class="row">
								<div class="col-xs-12 ">
									<div class="widget-box">
										<div class="widget-body">
											<div class="widget-main">
												<div align="center">
													<h2>Insert Work</h2>
													<br>
													<c:if test="${empty fusers}"><h3 style="color:red">No FTPC Exists</h3></c:if>
													<form:form method="POST" action="SubmitInsertWork">
														<table>
															<tr>
																<td><form:label path="userName">UserName:</form:label></td>
																<td style="padding-top: 10px"><center><c:if test="${!empty fusers}">

																		<select name="userName">
																			<c:forEach items="${fusers}" var="fusers">
																				<option value="${fusers.userName}" >
																					<c:out value="${fusers.userName}" />
																				</option>
																			</c:forEach>
																		</select>
																	</c:if></center></td>
																<td><form:errors path="userName" cssClass="error" /></td>
															</tr>
															<tr>
																<td style="padding-top: 10px">WORK :</td>
																<td style="padding-top: 10px"><select
																	name="userWork">
																		<option value="01">PLACEMENT REPORT</option>
																		<option value="02">ROOM ALLOTMENT</option>
																		<option value="03">COUNSELLING REPORT</option>
																		<option value="04">FEEDBACK REPORT</option>
																</select></td>
															</tr>
															<tr>
																<p>
																	<font size="5" color="red" face="verdana">${erroMesg}</font>
																</p>
															</tr>
															<tr>
																<td colspan="2" style="padding-top: 10px"><c:if test="${!empty fusers}"><input
																	class="btn btn-md btn-block btn-success" type="submit"
																	value="Submit" /></c:if></td>
															</tr>
														</table>
													</form:form>
													<br> <br>
												</div>
											</div>
										</div>
									</div>
									<br> <br>
								</div>


							</div>



						</div>
					</div>
					<jsp:directive.include file="scripts.jsp" />
		<jsp:directive.include file="Footer.jsp" />

				
				</div>
				
		
			</div>
		</div>




		<!-- /.main-container -->

	
	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>



</body>
</html>



<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- This JSP is a form to allow a User to input task for a particular FTPC whose Username is also given by the User

 @author Adarsh
 -->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assign Task to Faculty</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>

</head>
<body>
	<h2>Insert Work</h2>
	<form:form method="POST" action="SubmitInsertWork">
		<table>
			<tr>
				<td><form:label path="userName">UserName:</form:label></td>
				<td><form:input path="userName" /></td>
				<td><form:errors path="userName" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Month :</td>
				<td><select name="userWork">
						<option value="01">PLACEMENT REPORT</option>
						<option value="02">ROOM ALLOTMENT</option>
						<option value="03">COUNSELLING REPORT</option>
						<option value="04">FEEDBACK REPORT</option>
				</select></td>
			</tr>
			<tr>
				<p>
					<font size="5" color="red" face="verdana">${erroMesg}</font>
				</p>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>

</body>
</html>

 --%>