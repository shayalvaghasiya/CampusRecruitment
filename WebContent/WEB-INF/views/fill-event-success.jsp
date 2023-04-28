<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Success...</title>

<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="../assets/font-awesome/4.2.0/css/font-awesome.min.css" />

<!-- page specific plugin styles -->

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
						${userList[0].company} <small> <i
							class="ace-icon fa fa-angle-double-right"></i> Applicants
						</small>
					</h1>
				</div>
				<!-- /.page-header -->




				<div class="row">
					<div class="col-sm-5 col-sm-offset-2">


						<div class="widget-body">
							<div class="widget-main padding-24">
								<div class="row align-center">
									<h1 style="color: green;">
										<div>successfully added:!</div>
									</h1>
									<a href="Index"> <img
										src="http://cliparts.co/cliparts/8ix/noy/8ixnoyj8T.png"
										alt="Success Icon" style="width: 256px; height: 256px;">
									</a>
									<h1 style="color: green;">
										<div> ${msg} </div>
									</h1>
								</div>
							</div>
						</div>
					</div>
				</div>



				<jsp:directive.include file="Footer.jsp" />


			</div>
		</div>
	</div>

	<!-- /.main-container -->

	<!--[if !IE]> -->
	<script src="../assets/js/jquery.2.1.1.min.js"></script>


	<!-- inline scripts related to this page -->

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
</body>
</html>


<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>success</title>
</head>
<body>
<h1>successfully added:</h1>
<h2> ${msg} </h2>
</body>
</html>
 --%>