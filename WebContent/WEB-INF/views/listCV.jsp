<!-- 
description: contain ALL professional and personal details of STUDENT tpc -->
<!-- -------------------------------------------------------------------------------------------------------- -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student uploads and downloads</title>

<!-- page specific plugin styles -->

<!-- page specific plugin styles -->
<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />
<link rel="stylesheet" href="assets/css/jquery.gritter.min.css" />

<link rel="stylesheet" href="assets/css/bootstrap-editable.min.css" />
<!-- page specific plugin styles -->
<link rel="stylesheet" href="assets/css/dropzone.min.css" />
<!-- page specific plugin styles -->

<link rel="stylesheet" href="assets/css/fullcalendar.min.css" />

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
					<h1>Activity & Uploads for ${sessionScope.name}</h1>
				</div>
				<!-- /.page-header -->

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						<div class="clearfix"></div>


						<!-- <div class="hr dotted"></div> -->

						<div class="show">
							<div id="user-profile-2" class="user-profile">
								<div class="tabbable">
									<ul class="nav nav-tabs padding-18">
										<ul class="nav nav-tabs padding-18">
											<li><a href="viewprofile"> <i
													class="green ace-icon fa fa-user bigger-120"></i> Profile
											</a></li>


											<li class="active"><a data-toggle="tab" href="#uploads">
													<i class="orange ace-icon fa fa-upload bigger-120"></i>
													Uploads
											</a></li>


											<li><a href="notifications"> <i
													class="pink ace-icon fa fa-check bigger-120"></i>
													Notification
											</a></li>

										</ul>
									</ul>

									<div class="tab-content no-border padding-24">


										<div id="uploads" class="tab-pane in active">
											<div class="profile-feed row">

												<div class="row">
													<div class="col-xs-12">
														<!-- PAGE CONTENT BEGINS -->
														<div class="clearfix">

															<div class="row">
																<div class="col-xs-12 ">
																	<div class="widget-box">
																		<div class="widget-body">
																			<div class="widget-main" align="center">
																				<div>
																					<c:if test="${sessionScope.roleName=='StudentTPC'}">
																						<br />

																						<div class="profile-feed row">
																							<a href="stpcapplies"
																								class="btn btn-primary btn-md">Apply on
																								behalf of Student</a> <br> <br>
																						</div>
																					</c:if>
																					<br>
																					<table>


																						<tr>
																							<td>Links for Quick Access</td>
																						</tr>
																						<tr>
																							<td>1. <a href="resumeUpload">Upload
																									Resume</a></td>
																						</tr>
																						<tr>
																							<td>2.<a href="certificateUpload">Click
																									to upload Certificates </a></td>
																						</tr>

																						<tr>
																							<td>3.<a href="addFeedback">Give a
																									Feedback</a><br /></td>
																						</tr>
																						<tr>
																							<td>4. <a href="InsertMonth.html"> Click
																									to View Events in that month </a></td>
																						</tr>

																						<tr>
																							<td>5. <a href="offerLetterUpload">Click
																									to Upload Offer Letter </a></td>
																						</tr>

																						<tr>
																							<td>6. <a href="counselingReportUpload">Click
																									here to upload Counseling Report</a></td>
																						</tr>

																						<!-- <tr>

																		 			<td><a href="displist">display list</a><br /></td>
																		 		</tr> -->
																					</table>


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
												</div>

												<div class="row">
													<div class="col-xs-12">
														<!-- PAGE CONTENT BEGINS -->

														<div class="widget-box widget-color-green2">
															<div class="widget-header">
																<h4 class="widget-title lighter smaller">Browse
																	Files to Download</h4>
															</div>

															<div class="widget-body">
																<div class="widget-main padding-8">
																	<ul id="tree2"></ul>
																	<div id="d"></div>
			
																</div>

																<!-- <button class="btn btn-md btn-block btn-primary pull-right">

																			<span class="bigger-110">Upload</span>
		
																			<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
																		</button> -->
															</div>

														</div>


													</div>
													<!-- /.col -->
												</div>
												<!-- /.row -->


											</div>
											<!-- /.row -->

											<div class="space-12"></div>

										</div>
										<!-- /#feed -->


									</div>
									<!-- /#pictures -->
								</div>
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

	<jsp:directive.include file="Footer.jsp" />
	<jsp:directive.include file="scripts.jsp" />


	<!-- page specific plugin scripts -->
	<script src="assets/js/fuelux.tree.min.js"></script>

	<script src="assets/js/dropzone.min.js"></script>
	<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
	<script src="assets/js/jquery-ui.custom.min.js"></script>
	<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/js/jquery.gritter.min.js"></script>
	<script src="assets/js/moment.min.js"></script>
	<script src="assets/js/bootbox.min.js"></script>
	<script src="assets/js/jquery.easypiechart.min.js"></script>
	<script src="assets/js/bootstrap-datepicker.min.js"></script>
	<script src="assets/js/jquery.hotkeys.min.js"></script>
	<script src="assets/js/bootstrap-wysiwyg.min.js"></script>
	<script src="assets/js/select2.min.js"></script>
	<script src="assets/js/fuelux.spinner.min.js"></script>
	<script src="assets/js/bootstrap-editable.min.js"></script>
	<script src="assets/js/ace-editable.min.js"></script>
	<script src="assets/js/jquery.maskedinput.min.js"></script>

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->


	<script type="text/javascript">
		/* $(function(){
			
			$('#d').
		}); */
		
	
		
		function displayCertificate() {
			$.ajax({
				url : 'dispCV',
				data : 'folder=Certificates',
				dataType : 'json',
				success : function(data) {
					console.log(data.length);
					for (i = 0; i < data.length; i++)
						console.log(data[i]);
					times = data.length;
					$('#d').text('');
					$.each(data, function() {
						$('#d').append(
								'<li><a href="${pageContext.request.contextPath}/downloadResume?fileName='
										+ this.actualName + ' "> '
										+ this.displayName + ' </a></li>');
					});
				}
			});
		}
		//console.log(times);
		
		function displayResume() {
			$.ajax({
				url : 'dispCV',
				data : 'folder=Resume',
				dataType : 'json',
				success : function(data) {
					console.log(data.length);
					for (i = 0; i < data.length; i++)
						console.log(data[i]);
					times = data.length;
					$('#d').text('');
					$.each(data, function() {
						$('#d').append(
								'<li><a href="${pageContext.request.contextPath}/downloadResume?fileName='
										+ this.actualName + ' "> '
										+ this.displayName + ' </a></li>');
					});
				}
			});
		}
		function displayOfferLetter() {
			$.ajax({
				url : 'dispCV',
				data : 'folder=Offer Letters',
				dataType : 'json',
				success : function(data) {
					console.log(data.length);
					for (i = 0; i < data.length; i++)
						console.log(data[i]);
					times = data.length
					$('#d').text('');
					$.each(data, function() {
						$('#d').append(
								'<li><a href="${pageContext.request.contextPath}/downloadResume?fileName='
										+ this.actualName + ' "> '
										+ this.displayName + ' </a></li>');
					});
				}
			});
		}

		jQuery(function($) {
			//var times = 0;
			var sampleData = initiateDemoData();//see below

			
			$('#tree2')
					.ace_tree(
							{
								dataSource : sampleData['dataSource2'],
								loadingHTML : '<div class="tree-loading"><i class="ace-icon fa fa-refresh fa-spin blue"></i></div>',
								'open-icon' : 'ace-icon fa fa-folder-open',
								'close-icon' : 'ace-icon fa fa-folder',
								'selectable' : false,
								multiSelect : false,
								'selected-icon' : null,
								'unselected-icon' : null
							});

			function initiateDemoData() {
				var tree_data_2 = {
					'marksheets' : {
						text : '<button type="button"  onClick="displayCertificate()">Certificate</button>',
						type : 'folder',
						'icon-class' : 'red'
					},
					'resume' : {
						text : '<button onClick="displayResume()" >&nbsp;  Resume &nbsp;</button>',
						type : 'folder',
						'icon-class' : 'orange'
					},
					'OfferLetter' : {
						text : '<button onClick="displayOfferLetter()" >Offer Letter</button>',
						type : 'folder',
						'icon-class' : 'orange'
					},
				}
				
				

							
				/*  tree_data_2['resume']['additionalParameters'] = {
						'children' : [	
							 {text: '<li><a href="/PMS_v1/downloadResume?fileName='
									+ this.actualName + ' "> '
									+ this.displayName + ' </a></li>', type: 'item'}, 
							
						]
					} 

 */
			
				
			/* 	'marksheets' : {text: '<a href="/PMS_v1/dispCV?folder=Certificates">Certificates</a>', type: 'folder', 'icon-class':'red'}	,
				 */
				 
				/* tree_data_2['video']['additionalParameters'] = {
					'children' : [
						{text: '<i class="ace-icon fa fa-film blue"></i> movie1.avi', type: 'item'},
						{text: '<i class="ace-icon fa fa-film blue"></i> movie2.avi', type: 'item'},
						{text: '<i class="ace-icon fa fa-film blue"></i> movie3.avi', type: 'item'},
						{text: '<i class="ace-icon fa fa-film blue"></i> movie4.avi', type: 'item'},
						{text: '<i class="ace-icon fa fa-film blue"></i> movie5.avi', type: 'item'}
					]
				} */
				/* tree_data_2['marksheets']['additionalParameters'] = {
					'children' : {
						'ssc' : {text: 'SSC', type: 'folder', 'icon-class':'pink'} , 
						'hsc' : {text: 'HSC', type: 'folder', 'icon-class':'pink'}, 
						'sem1' : {text: 'sem_1', type: 'folder', 'icon-class':'pink'},
						'sem3' : {text: 'sem_3', type: 'folder', 'icon-class':'pink'},
						'sem6' : {text: 'sem_6', type: 'folder', 'icon-class':'pink'}
					}
				}
				tree_data_2['marksheets']['additionalParameters']['children']['ssc']['additionalParameters'] = {
					'children' : [
						{text: '<i class="ace-icon fa fa-file-text green"></i> sample1.pdf <a href="#">download</a>', type: 'item'},
						{text: '<i class="ace-icon fa fa-file-text green"></i>sample2.pdf', type: 'item'},
						
					]
				}
				tree_data_2['marksheets']['additionalParameters']['children']['hsc']['additionalParameters'] = {
					'children' : [
						{text: '<i class="ace-icon fa  fa-file-text red"></i> doc1', type: 'item'},
						{text: '<i class="ace-icon fa fa-file-text grey"></i> doc2', type: 'item'},
						
					]
				}
				 */
				/* 
				 tree_data_2['documents']['additionalParameters'] = {
				 'children' : [
				 {text: '<i class="ace-icon fa fa-file-text red"></i> document1.pdf', type: 'item'},
				 {text: '<i class="ace-icon fa fa-file-text grey"></i> document2.doc', type: 'item'},
				 {text: '<i class="ace-icon fa fa-file-text grey"></i> document3.doc', type: 'item'},
				 {text: '<i class="ace-icon fa fa-file-text red"></i> document4.pdf', type: 'item'},
				 {text: '<i class="ace-icon fa fa-file-text grey"></i> document5.doc', type: 'item'}
				 ]
				 }

				 tree_data_2['backup']['additionalParameters'] = {
				 'children' : [
				 {text: '<i class="ace-icon fa fa-archive brown"></i> backup1.zip', type: 'item'},
				 {text: '<i class="ace-icon fa fa-archive brown"></i> backup2.zip', type: 'item'},
				 {text: '<i class="ace-icon fa fa-archive brown"></i> backup3.zip', type: 'item'},
				 {text: '<i class="ace-icon fa fa-archive brown"></i> backup4.zip', type: 'item'}
				 ]
				 } */

				var dataSource2 = function(options, callback) {
					var $data = null
					if (!("text" in options) && !("type" in options)) {
						$data = tree_data_2;//the root tree
						callback({
							data : $data
						});
						return;
					} else if ("type" in options && options.type == "folder") {
						if ("additionalParameters" in options
								&& "children" in options.additionalParameters)
							$data = options.additionalParameters.children || {};
						else
							$data = {}//no data
					}

					if ($data != null)//this setTimeout is only for mimicking some random delay
						setTimeout(function() {
							callback({
								data : $data
							});
						}, parseInt(Math.random() * 500) + 200);

					//we have used static data here
					//but you can retrieve your data dynamically from a server using ajax call
					//checkout examples/treeview.html and examples/treeview.js for more info
				}

				return {
					'dataSource2' : dataSource2
				}

			}

		})
	</script>


</body>
</html>


<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="/PMS_v1/dispCV?folder=Resume">Resume</a><br>

<a href="/PMS_v1/dispCV?folder=Certificates">Certificates</a><br>

<a href="/PMS_v1/dispCV?folder=Offer Letters">Offer Letters</a>

	<c:if test="${not empty indexList}">
</br>THIS are the files
		<ul>
			<c:forEach var="index" items="${indexList}">
				
				<li><a href="/PMS_v1/downloadResume?fileName=${actualFileNames[index]}">${nameToDisplay[index]}</a></li>
			</c:forEach>
		</ul>

	</c:if>
</body>
</html> --%>
