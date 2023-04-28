<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Add/Delete Candidate</title>

<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />


</head>
<body>
	<jsp:directive.include file="Header.jsp" />
	<div class="main-content">
		<div class="main-content-inner">
		<div class="breadcrumbs" id="breadcrumbs">

				<jsp:directive.include file="searchheader.jsp" />
			</div>

			<div class="page-content">
				<div class="page-header"></div>
				<!-- /.page-header -->



				<script type="text/javascript">
					try {
						ace.settings.check('main-container', 'fixed')
					} catch (e) {
					}
				</script>

				<%-- <form action="managelist.html" method=POST>
					Edit User List:<select name="option">
						<option value="Add">Add</option>
						<option value="Delete">Delete</option>
					</select> <input type=submit value=submit /><br />
				</form>
				<a href="view.html">View Applicants' List</a>
				 --%>


				<div class="clearfix">

					<div class="row">
						<div class="col-xs-12 ">
							<div class="widget-box">
								<div class="widget-body">
									<div class="widget-main">
										<div align="center">
											<h2>Add/Delete Candidate</h2>
											<br>
											<form method="POST" action="managelist.html">

												
														 <!-- <select
															name="option" class="chosen-select">
																<option value="Add">Add A Candidate</option>
																<option value="Delete">Delete A Candidate</</option>
														</select> -->
														<label>
															  <input type="radio" name="option" value="Add"> Add A Candidate
															</label>	
															<br>
															<label>
															  <input type="radio" name="option" value="Delete"> Delete A Candidate
															</label>
															<br>
															<button class="btn btn-lg btn-success" type="submit">
															  <i class="ace-icon fa fa-check bigger-110"></i> Submit
															</button>																				
														<table>
													<tr>
														<td>
															<br><br><br>
															<button class="btn btn-info btn-lg"><a href="view.html" style="color:white; text-decoration:none;">View The List Of Applied Candidates</a></button>
															
																<!-- <a href="view.html">View The List Of Applied
																Candidates</a> -->
														</td>
													</tr>
													</table>
											</form>
												

											<br> <br> <br> <br> <br> <br>
										</div>
									</div>
								</div>
							</div>
							<br> <br>
						</div>


					</div>

					<!-- /#home -->
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