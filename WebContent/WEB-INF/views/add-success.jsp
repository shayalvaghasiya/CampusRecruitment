

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Add Candidate</title>

</head>
<body>
	<jsp:directive.include file="Header.jsp" />



	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs" id="breadcrumbs">

				<jsp:directive.include file="searchheader.jsp" />
			</div>


			<div class="page-content">

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->

						<div class="row">
							<div class="col-sm-5 col-sm-offset-2">


								<div class="widget-body">
									<div class="widget-main padding-24">
										<div class="row align-center">
											<h1 style="color: green;">
												<div>Congratulations!</div>
											</h1>
											<a href="Index"> <img
												src="http://cliparts.co/cliparts/8ix/noy/8ixnoyj8T.png"
												alt="Success Icon" style="width: 256px; height: 256px;">
											</a>
											<h1 style="color: green;">
												<div>Your Changes are saved</div>
											</h1>
										</div>
									</div>
								</div>
							</div>
						</div>



						<!-- /#home -->
					</div>
				</div>
				<jsp:directive.include file="scripts.jsp" />
	<jsp:directive.include file="Footer.jsp" />
				
			</div>
		</div>
	</div>
<!-- inline scripts related to this page -->

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>


</body>
</html>