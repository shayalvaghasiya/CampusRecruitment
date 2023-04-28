<!--
 Filename : CounselingReportUpload.jsp
 Author name: Crystal Cuthinho, Pankaj Sankpal
 Description: used for counseling report upload by student and ftpc. Mapping goes to CounselingReportUploadController
 -->
 
 
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Upload Counseling Report</title>
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
													<h2> Upload the Counseling Report..! </h2>
													<c:if test="${success==1}">
															<p style="color:green;">Counseling Report uploaded successfully!</p>
													</c:if>
													<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCounselingReport">

													<form:errors path="*" cssClass="errorblock" element="div" />
														File to upload: <input class="btn btn-sm btn-info" type="file" name="fileUpload"><br />
														
														<c:if test="${error==1}">
															<p style="color:red;">Failed to upload...File format can be doc/docx/odt only!</p>
														</c:if>
														<c:if test="${error1==1}">
															<p style="color:red;">Failed to upload...File size can be only upto 1MB</p>
														</c:if>
														  <input class="btn btn-sm btn-success" type="submit" value="Upload"> Press here to upload the file!
														  <span><form:errors path="file" cssClass="error" />
														</span>
													</form:form>
												<br/><br/>
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
<title>Upload Counseling Report</title>
</head>
<body>


<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCounselingReport">

	<form:errors path="*" cssClass="errorblock" element="div" />
		File to upload: <input type="file" name="fileUpload"><br />
		
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be docx/odt only!</p>
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