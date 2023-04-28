<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!--  <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
 		function doCriteriaCheck(){
 			
 			console.log($('#userName').val());
 			
	 		$.getJSON("doCriteriaCheck",
	 				
	 				{CHARS:$('#userName').val()},
	 				
	 				function(data){
	 					console.log(data);
	 					$('#searchresult').text('');
	 					for(var index in data){
	 						$('#searchresult').append('<p>'+data[index].userName+'-'+data[index].name+'</p>');
	 					}
	 				});
 		}
</script>-->



<title>Insert title here</title>
</head>
<body>



these are the criteria details

Eligible branches:${criteria.eligible_branches } 
<br>

Year of passing:${criteria.year_of_passing } 

hsc marks should : ${criteria.hsc_or_dip_percentage }         or higher

ssc marks should :	${criteria.ssc_percentage } 		or higher


<form method="post" action="/PMS_v1/applyforjob?c_id=${criteria.criteria_id }">
 <input type="hidden" name="j_id" value="${job_id }" /> 
		<input type="submit" value="APPLY" >
	</form>


${msg }

</body>
</html>