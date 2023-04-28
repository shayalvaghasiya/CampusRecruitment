<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>PMS Application</title>

<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="assets/font-awesome/4.2.0/css/font-awesome.min.css" />

<!-- page specific plugin styles -->

<!-- text fonts -->
<link rel="stylesheet" href="assets/fonts/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />





<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="assets/js/ace-extra.min.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->


</head>
<body>
	<jsp:directive.include file="Header.jsp" />
	<div class="main-content">
		<div class="main-content-inner">

			<div class="page-content">
				<div class="page-header"></div>
				<!-- /.page-header -->



				<script type="text/javascript">
					try {
						ace.settings.check('main-container', 'fixed')
					} catch (e) {
					}
				</script>

				<div class="clearfix">

					<div class="row">
						<div class="col-xs-12 ">
							<div class="widget-box">
								<div class="widget-body">
									<div class="widget-main">
										<div align="center">
											<h2>Select the Company to view applicants</h2>
											<br>
											<form:form method="POST" action="SubmitCompany">

												<table>

													<tr>
														<td><h4>Company Name: </h4></td>
														<td><select name="company" class="chosen-select">

														<c:forEach items="${companies}" var="companies">
                        									<option value="${companies.key}">${companies.value}</option>
                										</c:forEach>
																<!-- <option value="01">TCS</option>
																<option value="02">L&T</option>
																<option value="03">IBM</option>
																<option value="04">JPMorgan</option>
																<option value="05">Direct I</option>
																<option value="06">ZS</option>
																<option value="07">Radio Mirchi</option>
																<option value="08">Accenture</option>
																<option value="09">Fr. Agnel</option> -->

														</select></td>
													</tr>

													<tr>
														<td><br>
														<div class="" center>
																<button class="btn btn-primary btn-block" type="submit">
																	<i class="ace-icon fa fa-check bigger-110"></i> Search
																</button>
															</div></td>
													</tr>

												</table>

											</form:form>
											<h2>
												<font color="red">${errorMsg}</font>
											</h2>


											<br> <br> <br> <br>
										</div>
									</div>
								</div>
							</div>
							<br> <br>
						</div>


					</div>

					<!-- /#home -->
				</div>



				<jsp:directive.include file="Footer.jsp" />


			</div>
		</div>
	</div>

	<!-- /.main-container -->

	<!--[if !IE]> -->
	<script src="assets/js/jquery.2.1.1.min.js"></script>


	<!-- inline scripts related to this page -->

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
</body>
</html>

<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Applicant</title>
</head>
<body>
	<h2>Select the company to view applicants</h2>
	<form:form method="POST" action="SubmitCompany">
		<table>

			<tr>
				<td><h3>Company :</h3></td>
				<td><select name="company">

						<option value="01">TCS</option>
						<option value="02">L&T</option>
						<option value="03">IBM</option>
						<option value="04">JPMorgan</option>
						<option value="05">Direct I</option>
						<option value="06">ZS</option>
						<option value="07">Radio Mirchi</option>
						<option value="08">Accenture</option>
						<option value="09">Fr. Agnel</option>
					
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Search" /></td>
			</tr>
			<tr>
				<td><h2><font color="red"><center>${errorMsg}</center></font></h2></td>
			</tr>
		</table>
	</form:form>
	
</body>
</html> --%>