<!-- 
description: displays the criteria of the posted jobe-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Companies Page</title>

<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />



</head>
<body>
	<jsp:directive.include file="Header.jsp" />

	<%-- <c:if test="${companyname=='jpmorgan'}">
			<c:set var="propercompanyname" value="JP Morgan"/> 
			<c:set var="color" value="orange"/> 
			<c:set var="buttoncolor" value="warning"/>
	</c:if>
	<c:if test="${companyname=='directi'}">
			<c:set var="propercompanyname" value="Direct i"/>  
			<c:set var="color" value="red"/> 
			<c:set var="buttoncolor" value="danger"/>
	</c:if>
	<c:if test="${companyname=='morganstanley'}">
			<c:set var="propercompanyname" value="MorganStanley"/>  
			<c:set var="color" value="green"/> 
			<c:set var="buttoncolor" value="success"/>  
	</c:if>
	<c:if test="${companyname=='larsentoubro'}">
			<c:set var="propercompanyname" value="Larsen&Toubro"/>
			<c:set var="color" value="grey"/> 
			<c:set var="buttoncolor" value="inverse"/>  
	</c:if>
	<c:if test="${companyname=='accenture'}">
			<c:set var="propercompanyname" value="Accenture"/>
			<c:set var="color" value="orange"/> 
			<c:set var="buttoncolor" value="warning"/>  
	</c:if>
	<c:if test="${companyname=='godrej'}">
			<c:set var="propercompanyname" value="Godrej"/>
			<c:set var="color" value="blue"/> 
			<c:set var="buttoncolor" value="primary"/>  
	</c:if>
	<c:if test="${companyname=='zs'}">
			<c:set var="propercompanyname" value="ZS"/> 
			<c:set var="color" value="red"/> 
			<c:set var="buttoncolor" value="danger"/>  
	</c:if>
	<c:if test="${companyname=='tcs'}">
			<c:set var="propercompanyname" value="TCS"/> 
			<c:set var="color" value="green"/> 
			<c:set var="buttoncolor" value="success"/>  
	</c:if>
 --%>
	<div class="main-content">
		<div class="main-content-inner">

			<div class="breadcrumbs" id="breadcrumbs">

				<jsp:directive.include file="searchheader.jsp" />
			</div>
			<div class="page-content">

				<%-- <div class="page-header">
					<h1>
						${propercompanyname} <small> <i
							class="ace-icon fa fa-angle-double-right"></i> 
						</small>
					</h1>
				</div> --%>

				<div class="row">
					<div class="col-xs-2">&nbsp;</div>
					<div class="col-xs-8">
						<!-- PAGE CONTENT BEGINS -->

						<div>
							<div id="user-profile-2" class="user-profile">
								<div class="tabbable">

									<div class="tab-content no-border padding-24">
										<div id="home" class="tab-pane in active">

											<div class="widget-box widget-color-blue">
												<div class="widget-header">
													<center>
														<h5 class="widget-title bigger lighter">Job Crtieria</h5>
													</center>
												</div>


												<div class="widget-body">
													<div class="widget-main">
														<ul class="list-unstyled spaced2">
															<li><i class="ace-icon fa  fa-circle blue"></i>
																Eligibible Branches are ${criteria.eligible_branches}</li>

															<li><i class="ace-icon fa  fa-circle blue"></i> Only
																for unplaced students</li>

															<li><i class="ace-icon fa  fa-circle blue"></i>
																Eligible SSC percentage is ${criteria.ssc_percentage }</li>

															<li><i class="ace-icon fa  fa-circle blue"></i>
																Eligible HSC percentage is
																${criteria.hsc_or_dip_percentage }</li>

															<li><i class="ace-icon fa  fa-circle blue"></i>
																Eligible CGPA is ${criteria.cgpa }</li>

															<li><i class="ace-icon fa  fa-circle blue"></i> Year
																of passing should be ${criteria.year_of_passing  }</li>

															<li><i class="ace-icon fa  fa-circle blue"></i> No
																of live KT's allowed is
																${criteria.no_of_live_kts_allowed }</li>

															<li><i class="ace-icon fa  fa-circle blue"></i> No
																of dead KT's allowed is
																${criteria.no_of_dead_kts_allowed }</li>

															<li><i class="ace-icon fa  fa-circle blue"></i> Year
																gap should be ${criteria.year_gap_allowed }</li>


															<li><i class="ace-icon fa  fa-circle blue"></i> Last
																date to apply is ${criteria.last_date_to_apply }</li>
														</ul>

														<hr />

													</div>

													<div>

														<a
															href="applyforjob?c_id=${criteria.criteria_id }&j_id=${job_id}"
															class="btn btn-block btn-primary"> <span>Apply</span>
															<i class="ace-icon fa fa-arrow-right bigger-110"></i>
														</a>
													</div>
												</div>
											</div>
											<div class="hr hr-8 dotted"></div>
											
											
														<c:if test="${branch=='1'}">
														<p style=" font:10px; color:red;">you dont belong to the branch mentioned in criteria</p>
														</c:if>
														<c:if test="${placed==1}">
														<p style=" font:10px; color:red;">Already placed student can not apply!!! </p>
														</c:if>
														<c:if test="${date==1}">
														<p style=" font:10px; color:red;">last date to apply has expired </p>
														</c:if>
														<c:if test="${qual==1}">
														<p style=" font:10px; color:red;">dont meet the qualification criteria: </p>
														</c:if>
											${msg} 
											
									

											<div class="space-10"></div>

										</div>
										<!-- /#home -->
									</div>
								</div>
							</div>
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



	<!-- inline scripts related to this page -->

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

	<script type="text/javascript">
		jQuery(function($) {
			//initiate dataTables plugin
			var oTable1 = $('#dynamic-table')
			//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
			.dataTable({
				bAutoWidth : false,
				"aoColumns" : [ {
					"bSortable" : false
				}, null, null, null, null, null, {
					"bSortable" : false
				} ],
				"aaSorting" : [],

			//,
			//"sScrollY": "200px",
			//"bPaginate": false,

			//"sScrollX": "100%",
			//"sScrollXInner": "120%",
			//"bScrollCollapse": true,
			//Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
			//you may want to wrap the table inside a "div.dataTables_borderWrap" element

			//"iDisplayLength": 50
			});
			//oTable1.fnAdjustColumnSizing();

			//TableTools settings
			TableTools.classes.container = "btn-group btn-overlap";
			TableTools.classes.print = {
				"body" : "DTTT_Print",
				"info" : "tableTools-alert gritter-item-wrapper gritter-info gritter-center white",
				"message" : "tableTools-print-navbar"
			}

			//initiate TableTools extension
			var tableTools_obj = new $.fn.dataTable.TableTools(
					oTable1,
					{
						"sSwfPath" : "assets/swf/copy_csv_xls_pdf.swf",

						"sRowSelector" : "td:not(:last-child)",
						"sRowSelect" : "multi",
						"fnRowSelected" : function(row) {
							//check checkbox when row is selected
							try {
								$(row).find('input[type=checkbox]').get(0).checked = true
							} catch (e) {
							}
						},
						"fnRowDeselected" : function(row) {
							//uncheck checkbox
							try {
								$(row).find('input[type=checkbox]').get(0).checked = false
							} catch (e) {
							}
						},

						"sSelectedClass" : "success",
						"aButtons" : [
								{
									"sExtends" : "copy",
									"sToolTip" : "Copy to clipboard",
									"sButtonClass" : "btn btn-white btn-primary btn-bold",
									"sButtonText" : "<i class='fa fa-copy bigger-110 pink'></i>",
									"fnComplete" : function() {
										this
												.fnInfo(
														'<h3 class="no-margin-top smaller">Table copied</h3>\
									<p>Copied '
																+ (oTable1
																		.fnSettings()
																		.fnRecordsTotal())
																+ ' row(s) to the clipboard.</p>',
														1500);
									}
								},

								{
									"sExtends" : "csv",
									"sToolTip" : "Export to CSV",
									"sButtonClass" : "btn btn-white btn-primary  btn-bold",
									"sButtonText" : "<i class='fa fa-file-excel-o bigger-110 blue'></i>"
								},

								{
									"sExtends" : "pdf",
									"sToolTip" : "Export to PDF",
									"sButtonClass" : "btn btn-white btn-primary  btn-bold",
									"sButtonText" : "<i class='fa fa-file-pdf-o bigger-110 red'></i>"
								},

								{
									"sExtends" : "print",
									"sToolTip" : "Print view",
									"sButtonClass" : "btn btn-white btn-primary  btn-bold",
									"sButtonText" : "<i class='fa fa-print bigger-110 grey'></i>",

									"sMessage" : "<div class='navbar navbar-default'><div class='navbar-header pull-left'><a class='navbar-brand' href='#'><small>Optional Navbar &amp; Text</small></a></div></div>",

									"sInfo" : "<h3 class='no-margin-top'>Print view</h3>\
									  <p>Please use your browser's print function to\
									  print this table.\
									  <br />Press <b>escape</b> when finished.</p>",
								} ]
					});
			//we put a container before our table and append TableTools element to it
			$(tableTools_obj.fnContainer())
					.appendTo($('.tableTools-container'));

			//also add tooltips to table tools buttons
			//addding tooltips directly to "A" buttons results in buttons disappearing (weired! don't know why!)
			//so we add tooltips to the "DIV" child after it becomes inserted
			//flash objects inside table tools buttons are inserted with some delay (100ms) (for some reason)
			setTimeout(function() {
				$(tableTools_obj.fnContainer()).find('a.DTTT_button').each(
						function() {
							var div = $(this).find('> div');
							if (div.length > 0)
								div.tooltip({
									container : 'body'
								});
							else
								$(this).tooltip({
									container : 'body'
								});
						});
			}, 200);

			//ColVis extension
			var colvis = new $.fn.dataTable.ColVis(oTable1, {
				"buttonText" : "<i class='fa fa-search'></i>",
				"aiExclude" : [ 0, 6 ],
				"bShowAll" : true,
				//"bRestore": true,
				"sAlign" : "right",
				"fnLabel" : function(i, title, th) {
					return $(th).text();//remove icons, etc
				}

			});

			//style it
			$(colvis.button()).addClass('btn-group').find('button').addClass(
					'btn btn-white btn-info btn-bold')

			//and append it to our table tools btn-group, also add tooltip
			$(colvis.button()).prependTo('.tableTools-container .btn-group')
					.attr('title', 'Show/hide columns').tooltip({
						container : 'body'
					});

			//and make the list, buttons and checkboxed Ace-like
			$(colvis.dom.collection)
					.addClass(
							'dropdown-menu dropdown-light dropdown-caret dropdown-caret-right')
					.find('li').wrapInner('<a href="javascript:void(0)" />') //'A' tag is required for better styling
					.find('input[type=checkbox]').addClass('ace').next()
					.addClass('lbl padding-8');

			/////////////////////////////////
			//table checkboxes
			$('th input[type=checkbox], td input[type=checkbox]').prop(
					'checked', false);

			//select/deselect all rows according to table header checkbox
			$('#dynamic-table > thead > tr > th input[type=checkbox]').eq(0)
					.on(
							'click',
							function() {
								var th_checked = this.checked;//checkbox inside "TH" table header

								$(this).closest('table').find('tbody > tr')
										.each(function() {
											var row = this;
											if (th_checked)
												tableTools_obj.fnSelect(row);
											else
												tableTools_obj.fnDeselect(row);
										});
							});

			//select/deselect a row when the checkbox is checked/unchecked
			$('#dynamic-table').on(
					'click',
					'td input[type=checkbox]',
					function() {
						var row = $(this).closest('tr').get(0);
						if (!this.checked)
							tableTools_obj.fnSelect(row);
						else
							tableTools_obj.fnDeselect($(this).closest('tr')
									.get(0));
					});

			$(document).on('click', '#dynamic-table .dropdown-toggle',
					function(e) {
						e.stopImmediatePropagation();
						e.stopPropagation();
						e.preventDefault();
					});

			//And for the first simple table, which doesn't have TableTools or dataTables
			//select/deselect all rows according to table header checkbox
			var active_class = 'active';
			$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on(
					'click',
					function() {
						var th_checked = this.checked;//checkbox inside "TH" table header

						$(this).closest('table').find('tbody > tr').each(
								function() {
									var row = this;
									if (th_checked)
										$(row).addClass(active_class).find(
												'input[type=checkbox]').eq(0)
												.prop('checked', true);
									else
										$(row).removeClass(active_class).find(
												'input[type=checkbox]').eq(0)
												.prop('checked', false);
								});
					});

			//select/deselect a row when the checkbox is checked/unchecked
			$('#simple-table').on('click', 'td input[type=checkbox]',
					function() {
						var $row = $(this).closest('tr');
						if (this.checked)
							$row.addClass(active_class);
						else
							$row.removeClass(active_class);
					});

			/********************************/
			//add tooltip for small view action buttons in dropdown menu
			$('[data-rel="tooltip"]').tooltip({
				placement : tooltip_placement
			});

			//tooltip placement on right or left
			function tooltip_placement(context, source) {
				var $source = $(source);
				var $parent = $source.closest('table')
				var off1 = $parent.offset();
				var w1 = $parent.width();

				var off2 = $source.offset();
				//var w2 = $source.width();

				if (parseInt(off2.left) < parseInt(off1.left)
						+ parseInt(w1 / 2))
					return 'right';
				return 'left';
			}

		})
	</script>


	<script type="text/javascript">
		jQuery(function($) {
			var $overflow = '';
			var colorbox_params = {
				rel : 'colorbox',
				reposition : true,
				scalePhotos : true,
				scrolling : false,
				previous : '<i class="ace-icon fa fa-arrow-left"></i>',
				next : '<i class="ace-icon fa fa-arrow-right"></i>',
				close : '&times;',
				current : '{current} of {total}',
				maxWidth : '100%',
				maxHeight : '100%',
				onOpen : function() {
					$overflow = document.body.style.overflow;
					document.body.style.overflow = 'hidden';
				},
				onClosed : function() {
					document.body.style.overflow = $overflow;
				},
				onComplete : function() {
					$.colorbox.resize();
				}
			};

			$('.ace-thumbnails [data-rel="colorbox"]')
					.colorbox(colorbox_params);
			$("#cboxLoadingGraphic").html(
					"<i class='ace-icon fa fa-spinner orange fa-spin'></i>");//let's add a custom loading icon

			$(document).one('ajaxloadstart.page', function(e) {
				$('#colorbox, #cboxOverlay').remove();
			});
		})
	</script>

</body>
</html>