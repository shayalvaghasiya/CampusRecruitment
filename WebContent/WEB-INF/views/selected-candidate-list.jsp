
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%-- <!--<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>-->
 --%>
  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Applicants' List</title>
<style>
table, th, td {
    border: 1px solid black;
}
</style>
</head>
<body>
<h1>List of Applicants</h1>
<h2>${company}</h2>
<table style="width:100%">
			<tr>
				<th>Roll number:</th>
				<th>Name :</th>
				<th>Branch :</th>
			</tr>
<c:forEach items="${userList}" var="user" varStatus="loop">
			<tr>
				<td>
				<c:out value="${user.username}" /></td>
				<td>
				<c:out value="${personalProfileBeanList[loop.index].name}" /></td>
				<td>
				<c:out value="${professionalProfileBeanList[loop.index].branch}" /></td>
				</tr>
				
</c:forEach>
</table>
<br><br>
<a href="views.html">Back</a>
</body>
</html>