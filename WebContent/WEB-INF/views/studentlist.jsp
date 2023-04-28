<%--  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("#yb").change(function(){
    	var x = $('#yb').val();
    	
    	window.location.replace("highlight?year="+x);
    });
});
</script>
 
 <title>Highlights</title>
</head>
<body class="no-skin" onLoad="fillsel()">

			<jsp:directive.include file="Header.jsp" />
			<div class="main-content">
				<div class="main-content-inner">					
					<div class="page-content">
						<div class="page-header center">
							<b><h2 class="widget-title grey lighter">
								&nbsp; &nbsp; &nbsp; &nbsp; 					
									Student List 
							</h2></b>
						</div>
						<!-- /.page-header -->
						<div class="space-4"></div>
						
						
						<div class="space-4"></div>
						
						<div class="center">
						<table align="center">
						
						<tr>	
							<td><a href="#">
								
							</a><h4>COMPS</h4>
							
							<c:if test="${!empty comps}">
							<c:forEach items="${comps}" var="a">
							<tr><td>${a}</td></tr>
							</c:forEach>							
							</c:if>
							
							</td>
							
						</tr>
						
						<tr>	
							<td><a href="#">
								
							</a><h4>IT</h4>
							
							<c:if test="${!empty it}">
							<c:forEach items="${it}" var="a">
							<tr><td>${a}</td></tr>
							</c:forEach>							
							</c:if>
							
							</td>
							
						</tr>
						
						<tr>	
							<td><a href="#">
								
							</a><h4>ELEX</h4>
							
							<c:if test="${!empty elex}">
							<c:forEach items="${elex}" var="a">
							<tr><td>${a}</td></tr>
							</c:forEach>							
							</c:if>
							
							</td>
							
						</tr>
						
						<tr>	
							<td><a href="#">
								
							</a><h4>PROD</h4>
							
							<c:if test="${!empty prod}">
							<c:forEach items="${prod}" var="a">
							<tr><td>${a}</td></tr>
							</c:forEach>							
							</c:if>
							
							</td>
							
						</tr>
						
						</table>
						</div>	
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

	</body>
</html> --%>





<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script>
	$(document).ready(function() {
		$("#yb").change(function() {
			var x = $('#yb').val();

			window.location.replace("highlight?year=" + x);
		});
	});
</script>

<script type="text/javascript">
	function fillsel() {
		var myDate = new Date();
		var year = myDate.getFullYear();
		for (var i = 2000; i < year + 1; i++) {
			$('#yb').append('<option value="'+i+'">' + i + '</option>');

		}

	}
</script>
<title>Highlights</title>
</head>
<body class="no-skin" onLoad="fillsel()">

	<jsp:directive.include file="Header.jsp" />
	<div class="main-content">
		<div class="main-content-inner">
		<div class="breadcrumbs" id="breadcrumbs">

				<jsp:directive.include file="searchheader.jsp" />
			</div>
			<div class="page-content">
				<div class="center">
					<b><h2 class="widget-title grey lighter">&nbsp; &nbsp;
							&nbsp; &nbsp; Hightlights of the year</h2></b>
				</div>
				<!-- /.page-header -->
				<div class="space-4"></div>



				<div class="space-4"></div>

				<div class="center">
					<%-- <table align="center">
						
						<tr>	
							<td><a href="#">
								
							</a><h4>COMPS</h4>
							
							<c:if test="${!empty comps}">
							<c:forEach items="${comps}" var="a">
							<tr><td>${a}</td></tr>
							</c:forEach>							
							</c:if>
							
							</td>
							
						</tr>
						
						<tr>	
							<td><a href="#">
								
							</a><h4>IT</h4>
							
							<c:if test="${!empty it}">
							<c:forEach items="${it}" var="a">
							<tr><td>${a}</td></tr>
							</c:forEach>							
							</c:if>
							
							</td>
							
						</tr>
						
						<tr>	
							<td><a href="#">
								
							</a><h4>ELEX</h4>
							
							<c:if test="${!empty elex}">
							<c:forEach items="${elex}" var="a">
							<tr><td>${a}</td></tr>
							</c:forEach>							
							</c:if>
							
							</td>
							
						</tr>
						
						<tr>	
							<td><a href="#">
								
							</a><h4>PROD</h4>
							
							<c:if test="${!empty prod}">
							<c:forEach items="${prod}" var="a">
							<tr><td>${a}</td></tr>
							</c:forEach>							
							</c:if>
							
							</td>
							
						</tr>
						
						</table> --%>






					<div class="row">

						<div class="col-xs-3">
							<center>
								<div class="table-header">Computer</div>

								<table id="simple-table"
									class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th><center>Roll.No</center></th>
										</tr>
									</thead>

									<tbody>
										<c:if test="${!empty comps}">
											<c:forEach items="${comps}" var="a">
												<tr>
													<td><center>
															<font color="blue">${a}</font>
														</center></td>
												</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>

							</center>
						</div>


						<div class="col-xs-3">
							<center>
								<div class="table-header">I.T</div>

								<table id="simple-table"
									class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th><center>Roll.No</center></th>
										</tr>
									</thead>

									<tbody>
										<c:if test="${!empty it}">
											<c:forEach items="${it}" var="a">
												<tr>
													<td><center>
															<font color="blue">${a}</font>
														</center></td>
												</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>

							</center>
						</div>

						<div class="col-xs-3">
							<center>
								<div class="table-header">Elex</div>

								<table id="simple-table"
									class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th><center>Roll.No</center></th>
										</tr>
									</thead>

									<tbody>
										<c:if test="${!empty elex}">
											<c:forEach items="${elex}" var="a">
												<tr>
													<td><center>
															<font color="blue">${a}</font>
														</center></td>
												</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>

							</center>
						</div>

						<div class="col-xs-3">
							<center>
								<div class="table-header">Prod</div>

								<table id="simple-table"
									class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th><center>Roll.No</center></th>
										</tr>
									</thead>

									<tbody>
										<c:if test="${!empty prod}">
											<c:forEach items="${prod}" var="a">
												<tr>
													<td><center>
															<font color="blue">${a}</font>
														</center></td>
												</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>

							</center>
						</div>

					</div>
				</div>



				<br> <br> <br> <br> <br> <br> <br>
				<br> <br> <br> <br> <br>
				<jsp:directive.include file="Footer.jsp" />
				<jsp:directive.include file="scripts.jsp" />


			</div>
		</div>
	</div>

	<!-- /.main-container -->

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
</body>
</html>