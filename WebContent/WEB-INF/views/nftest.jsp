<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NF TEST</title>

<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
 
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.1/angular.min.js"></script>


</head>
<body>

<div>


SIMPLE GET NOTIFICATION 

<c:if test="${!empty nf}">

<c:forEach items="${nf}" var="a">
On ${a.dateTime}<br/>
${a.type} notification for ${a.userOrGroupId}:<br/>
${a.message}<br/>
<a href="${a.url}">View</a><br/><br/>
</c:forEach>

</c:if>

</div>

<hr>

<div>
AJAX SUPPORTED SIMPLE GET NOTIFICATION

<script type="text/javascript">
 		function doLooseNotification(){
	 		$.getJSON("looseNotification",
	 				"",	 					 				
	 				function(data){
	 					console.log(data);
	 					$('#nfresult').text('');
	 					
	 					$('#nfresult').append('<ul>');
	 					
	 					for(var index in data){
	 						$('#nfresult').append('<p>'+data[index].userName+'-'+data[index].name+'<p>');
	 						
	 						$('#nfresult').append('<li>On '+data[index].dateTime+'<br/>'+
	 								data[index].type+' notification for '+
	 								data[index].userOrGroupId+':<br/>'+
	 								data[index].message+'<br/>'+
	 								'<a href="'+data[index].url+'">View</a><br/><br/>'+
	 								'</li>');
	 					}
	 					
	 					$('#nfresult').append('</ul>');
	 				});
 		}
 		
 		
 		function clear(){
 			console.log("clear notifications");
 			$('#nfresult').text('');
 		}
</script>

<input type ="button" id="box" value="get notification" onClick="doLooseNotification();"/>
        <div id="nfresult"></div>
        
        


</div>
</body>
</html>