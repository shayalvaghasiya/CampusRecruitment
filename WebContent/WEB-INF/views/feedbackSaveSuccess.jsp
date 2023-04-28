<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page import="java.util.*"%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>Feedback</title>

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
							class="menu-icon fa fa-comments blue bigger-150"></i> Feedback
					</h2>
				</div>
				<%-- 

				NAME OF THE COMPANY:${feedback.get(0).company} <br> <br>
 --%>

				<div id="timeline-1">
					<div class="row">
						<div class="col-xs-12 col-sm-10 col-sm-offset-1">
							<div class="timeline-container">

								<div class="timeline-items">
									<c:if test="${!empty feedback}">
										<c:forEach items="${feedback}" var="a">
											<div class="timeline-item clearfix">
												<div class="timeline-info">
													<i
														class="timeline-indicator ace-icon fa 	fa-comment-o btn btn-primary no-hover green"></i>
												</div>

												<div class="widget-box transparent">
													<div class="widget-header widget-header-small">
														<h5 class="widget-title smaller">${a.username}</h5>

													</div>

													<div class="widget-body">
														<div class="widget-main">
															${a.feeback}
															<div class="space-6"></div>

															<div class="widget-toolbox clearfix">
																<div class="pull-right action-buttons">
																	<div class="space-4"></div>

																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:if>

								</div>
								<!-- /.timeline-items -->
							</div>
							<!-- /.timeline-container -->

						</div>
					</div>
				</div>

	<jsp:directive.include file="scripts.jsp" />

	<jsp:directive.include file="Footer.jsp" />


			</div>
			<!-- /.page-content -->
		</div>


	</div>
	<!-- /.main-content -->

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
