
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- This JSP displays the List of the FTPC and the special tasks assigned to them 

 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<title>View Faculty Tasks</title>
<link rel="stylesheet" href="assets/css/table.css">
<meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">
</head>
<body class="no-skin">
			<jsp:directive.include file="Header.jsp" />
			<div class="main-content">
				<div class="main-content-inner"><div class="breadcrumbs" id="breadcrumbs">

				<jsp:directive.include file="searchheader.jsp" />
			</div>
					<div class="page-content">
						<div class="page-header">
							<h2 class="widget-title grey lighter">
								&nbsp; &nbsp; &nbsp; &nbsp; 
									View Faculty Tasks
							</h2>
						</div>
						<div class="space"></div>
						<div class="center">
							<c:if test="${!empty fusers}">
								<table border="3" class="table-fill">
								<thead>
								<tr>
									<th class="text-center"><h3 align="center"><b>User Name</b></h3></th>
									<th class="text-center"><h3 align="center"><b>User Work</b></h3></th>
								</tr>
								</thead>
								<tbody class="table-hover">
								<c:forEach items="${fusers}" var="fuser">
								<tr>
									<td class="text-center"><h4><c:out value="${fuser.userName}" /></h4></td>
									<td class="text-center"><h4><c:out value="${fuser.userWork}" /></h4></td>
								</tr>
								</c:forEach>
								</tbody>
								</table>
							</c:if>
						</div>
				<!-- /.page-header -->
				</div><!-- /.page-content -->
			</div>
		</div><!-- /.main-content -->
			<jsp:directive.include file="Footer.jsp" />
<jsp:directive.include file="scripts.jsp" />
</body>

</html>
