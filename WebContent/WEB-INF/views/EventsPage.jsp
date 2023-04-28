
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>Timeline - Ace Admin</title>

<meta name="description"
	content="based on widget boxes with 2 different styles" />
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

<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="assets/js/ace-extra.min.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
</head>

<body class="no-skin">
	<jsp:directive.include file="Header.jsp" />
	<div class="main-content">
		<div class="main-content-inner">
<div class="breadcrumbs" id="breadcrumbs">

				<jsp:directive.include file="searchheader.jsp" />
			</div>

			<div class="page-content">

				<div class="page-header">
					<h2 class="widget-title grey lighter">
						&nbsp; &nbsp; &nbsp; &nbsp; <i
							class="menu-icon fa fa-calendar blue bigger-150"></i> Events
					</h2>
				</div>
				<div class="row">
					<div class="col-xs-12">


						<div id="timeline-1">
							<div class="row">
								<div class="col-xs-12 col-sm-10 col-sm-offset-1">
									<div class="timeline-container">
										<div class="timeline-label">
											<span class="label label-primary arrowed-in-right label-lg">
												<b>Events</b>
											</span>
										</div>

										<div class="timeline-items">
											

											
											<div class="timeline-item clearfix">
												<div class="timeline-info">
													<i
														class="timeline-indicator ace-icon fa fa-star btn btn-warning no-hover green"></i>
												</div>

												<div class="widget-box transparent">
													<div class="widget-header widget-header-small">
														<h5 class="widget-title smaller">New logo</h5>

														<span class="widget-toolbar no-border"> <i
															class="ace-icon fa fa-clock-o bigger-110"></i> 9:15
														</span> <span class="widget-toolbar"> <a href="#"
															data-action="reload"> <i
																class="ace-icon fa fa-refresh"></i>
														</a> <a href="#" data-action="collapse"> <i
																class="ace-icon fa fa-chevron-up"></i>
														</a>
														</span>
													</div>

													<div class="widget-body">
														<div class="widget-main">
															Designed a new logo for our website. Would appreciate
															feedback.
															<div class="space-6"></div>

															<div class="widget-toolbox clearfix">
																<div class="pull-right action-buttons">
																	<div class="space-4"></div>

																	<div>
																		<a href="#"> <i
																			class="ace-icon fa fa-heart red bigger-125"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-facebook blue bigger-125"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-reply light-green bigger-130"></i>
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											</div>
										<!-- /.timeline-items -->
									</div>
									<!-- /.timeline-container -->

									
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
	<!-- /.main-content -->

	<jsp:directive.include file="Footer.jsp" />


	<!-- page specific plugin scripts -->

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {
			$('[data-toggle="buttons"] .btn').on('click', function(e) {
				var target = $(this).find('input[type=radio]');
				var which = parseInt(target.val());
				$('[id*="timeline-"]').addClass('hide');
				$('#timeline-' + which).removeClass('hide');
			});
		});
	</script>
</body>
</html>