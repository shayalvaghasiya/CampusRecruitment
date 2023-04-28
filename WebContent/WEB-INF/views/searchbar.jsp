<!-- 
description: contains serach field for searching any user or a company available in the system  -->
<!-- -------------------------------------------------------------------------------------------------------- -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Something..</title>
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



<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.1/angular.min.js"></script>

<!-- for autocomplete -->
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script src="assets/autocomplete/jquery.autocomplete.min.js"></script>
<link href="assets/autocomplete/main.css" rel="stylesheet">

<!-- for searching -->
<script>
	var x = [];
	$(document).ready(
			function() {

				$('#dynamicsearchall').autocomplete(
						{
							serviceUrl : 'Search',
							paramName : "CHARS",
							delimiter : ",",
							transformResult : function(response) {

								return {
									suggestions : $.map($.parseJSON(response),
											function(user) {
												x.push(user);
												console.log(x);
												return {
													value : user.name,
													data : user.id
												};

											})

								};

							}

						});

				/* $('#dynamicsearchall').on('change',function(){
					  //alert(x.name);
					  alert($(this).val());
					  
					  
					  //window.location.replace("");
					  
				  }); */
				$('#searchbutton').click(
						function() {
							var userSelect = $('#dynamicsearchall').val();
							console.log(userSelect);
							var userSelectId = -1;
							var companyName = "xyz"
							var type = "xyz"
							console.log(x);
							for (var i = 0; i < x.length; i++) {
								console.log(x[i].name);
								if (x[i].name == userSelect) {
									userSelectId = x[i].id;
									type = x[i].type;
									companyName = x[i].name;
									break;
								}
							}
							console.log(userSelectId);
							if (userSelectId !== -1) {
								if (type === 'user') {
									window.location
											.replace("/PMS_v1/searchProfile?userName="
													+ userSelectId);// ill tak to nevil tom abt ths url
								} else {
									if (companyName !== 'xyz')
										window.location
												.replace("Company?companyname="
														+ companyName);
									else
										$('#notfound')
												.text("No results found.");// not found
								}
							} else {
								$('#notfound').text("No results found.");// k go ahead
								//window.location.replace("wtf.com");//not found 
							}
						});

			});
</script>


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
						<core:out value="${loginForm.userName}" />
					</h1>
				</div>
				<!-- /.page-header -->

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						<div class="widget-box">
							<div class="widget-body">
								<div class="widget-main" align="center">
									<h2>Enter Student/Company name to search</h2>
									<br>

										<input type="text" id="dynamicsearchall" value=""> <input
											class="btn btn-sm btn-primary" type="button" value="Search"
											id="searchbutton"> <br>
										<div id="notfound" style="color: red"></div>
									


									<br />
									
								</div>
							</div>
						</div>

						<!-- PAGE CONTENT ENDS -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->

			</div>
			<!-- /.page-content -->
		</div>

	</div>

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	<jsp:directive.include file="Footer.jsp" />

</body>
</html>


<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<center>
		<form action="/PMS_v1/SearchUser" method="get">
			Search User : <input type="text" name="searchString" /> <input type="submit"
				value="Search"> <br/>
		</form>
		<form action="/PMS_v1/SearchCompany" method="get">
			Search Company : <input type="text" name="searchString" /> <input type="submit"
				value="Search">
		</form>
	</center>
	<br />
	<c:if test="${!empty userList}">
		<c:forEach items="${userList}" var="user">
			<table align="center" >
				<tr>
					<td>${user.userName}<td>
					<td>${user.name}</td>
				</tr>
			</table>
		</c:forEach>
	</c:if>
	<c:if test="${!empty companyList}">
		<c:forEach items="${companyList}" var="company">
			<table align="center" >
				<tr>
					<td>${company.companyName}<td>
				</tr>
			</table>
		</c:forEach>
	</c:if>
</body>
</html>

 --%>