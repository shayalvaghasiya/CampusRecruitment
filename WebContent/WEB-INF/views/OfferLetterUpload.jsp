<!--
 Filename : OfferLetterUpload.jsp
 
 Description: used for offer letter upload by student. Mapping goes to OfferLetterUploadController
 --------------------------------->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Upload Offer Letter</title>
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
													<h2> Upload the Offer Letter..! </h2>
													<c:if test="${success==1}">
															<p style="color:green;">Offer letter uploaded successfully!</p>
														</c:if>
													<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadOfferLetter">

													<form:errors path="*" cssClass="errorblock" element="div" />
													File to upload: <input class="btn btn-sm btn-info" type="file" name="fileUpload"><br />
													
													<c:if test="${error==1}">
														<p style="color:red;">Failed to upload...File format can be doc/docx/pdf/odt only!</p>
													</c:if>
													<c:if test="${error1==1}">
														<p style="color:red;">Failed to upload...File size can be only upto 1MB</p>
													</c:if>
													  <input type="submit" class="btn btn-sm btn-success" value="Upload"> Press here to upload the file!
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
							<jsp:directive.include file="scripts.jsp" />
		<jsp:directive.include file="Footer.jsp" />
					</div>
				</div>

	
	
		<!-- /.main-container -->

</div>
<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>


</body>
</html>


<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<title>Upload Offer Letter</title>
</head>
<body>


<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadOfferLetter">

	<form:errors path="*" cssClass="errorblock" element="div" />
		File to upload: <input type="file" name="fileUpload"><br />
		
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be docx/pdf/odt only!</p>
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