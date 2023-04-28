<!-- 
description: contains the list of all the companies -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Companies Page</title>

<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<style>
#img {
position:absolute;
display: none;
}
</style>	
	
<script src="http://code.jquery.com/jquery-1.4.4.min.js" type="text/javascript"></script>

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
					<h1>Companies</h1>
				</div>

			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col">#</th>
			      <th scope="col">Company Name</th>
			      <th scope="col">View Details</th>
			    </tr>
			  </thead>
			  <tbody>
				 <c:forEach items="${companies}" var="company">
					  <tr>
					  	<td  style="font-size:16px; font-weight:bold;"><c:out value="${company.company_id}"/></td>
					    <td  style="font-size:16px; font-weight:bold;"><c:out value="${company.company_name}"/></td>
						<td ><a href="Company?companyname=${company.company_name}"><button class="btn btn-info btn-lg">View Details</button></a></td>
					  </tr>
				</c:forEach>				
				
			  </tbody>
			</table>
			
			<!-- 	<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS
						<div>
							<ul class="ace-thumbnails ">

							
								<li><a href="Company?companyname=Accenture" > <img  id="Accenture"
										width="200" height="150" alt="Accenture"

										src="assets/images/companies/Accenture.jpg" />

								</a></li>
								<li><a href="Company?companyname=Argusoft"> <img id="Argusoft"
										width="200" height="150" alt="Argusoft"
										src="assets/images/companies/Argusoft.jpg" />
								</a></li>
								<li><a href="Company?companyname=Capgemini"> <img id="Capgemini"
										width="200" height="150" alt="Capgemini"
										src="assets/images/companies/Capgemini.jpg" />
								</a></li>

								
								<li><a href="Company?companyname=Godrej"> <img
										width="200" height="150" alt="Godrej"
										src="assets/images/companies/Godrej.jpg" />
								</a></li>
								
								<li><a href="Company?companyname=Genesys"> <img id="Genesys"

										width="200" height="150" alt="Genesys"
										src="assets/images/companies/Genesys.jpg" />
								</a></li>

								<li><a href="Company?companyname=Godrej Infotech"> <img id="Godrej Infotech"
												width="200" height="150" alt="Godrej Infotech"
												src="assets/images/companies/Godrej Infotech.jpg" />
								</a></li>
						


								<li><a href="Company?companyname=Google">
										<img  id="TataConsultancyServices"
										width="200" height="150" alt="Google"
										src="assets/images/companies/Google.jpg" />
								</a></li>

								

								<li><a href="Company?companyname=HP"> <img id="HP"
										width="200" height="150" alt="HP"
										src="assets/images/companies/HP.jpg" />
								</a></li>

								<li><a href="Company?companyname=IBM"> <img id="IBM"
										width="200" height="150" alt="IBM"
										src="assets/images/companies/IBM.jpg" />
								</a></li>

								
								
								<li><a href="Company?companyname=Infor"> <img id="Infor"
										width="200" height="150" alt="Infor"
										src="assets/images/companies/Infor.png" />
								</a></li>


								<li><a href="Company?companyname=Infosys"> <img id="Infosys"
										width="200" height="150" alt="Infosys"
										src="assets/images/companies/Infosys.jpg" />
								</a></li>
								
								<li><a href="Company?companyname=Intuitive Cloud"> <img id="Intuitive Cloud"
										width="200" height="150" alt="Intuitive Cloud"
										src="assets/images/companies/Intuitive Cloud.jpg" />
								</a></li>
								
								
								<li><a href="Company?companyname=JP Morgan">
										<img id="Google"
										width="200" height="150" alt="JP Morgan"
										src="assets/images/companies/JP Morgan.jpg" />
								</a></li>
								
								

								<li><a
									href="Company?companyname=Laursen & Tubro">
										<img id="Laursen & Tubro" 
										width="200" height="150"
										alt="Laursen & Tubro"
										src="assets/images/companies/Laursen & Tubro.jpg" />
								</a></li>

								<li><a href="Company?companyname=Morgan Stanley"> <img id="Morgan Stanley"
										width="200" height="150" alt="Morgan Stanley"
										src="assets/images/companies/Morgan Stanley.jpg" />
								</a></li>

								<li><a href="Company?companyname=Quinnox"> <img id="Quinnox"
										width="200" height="150" alt="Quinnox"
										src="assets/images/companies/Quinnox.jpg" />
								</a></li>
								

								<li><a href="Company?companyname=Rt Camp"> <img id="Rt Camp"
										width="200" height="150" alt="Rt Camp"
										src="assets/images/companies/Rt Camp.png" />
								</a></li>
								
								<li><a href="Company?companyname=Sophos"> <img id="Sophos"
										width="200" height="150" alt="Sophos"
										src="assets/images/companies/Sophos.png" />
								</a></li>
								
								<li><a href="Company?companyname=TCS">
										<img id="TCS" 
										width="200" height="150" alt="TCS"
										src="assets/images/companies/TCS.jpg" />
								</a></li>
								

								<li><a href="Company?companyname=Tech Mahindra"> <img id="Tech Mahindra"
										width="200" height="150" alt="Tech Mahindra"
										src="assets/images/companies/Tech Mahindra.jpg" />
								</a></li>

								<li><a href="Company?companyname=Wipro"> <img id="Wipro"
										width="200" height="150" alt="Wipro"
										src="assets/images/companies/Wipro.jpg" />
								</a></li>
								

							</ul>
						</div>
						PAGE CONTENT ENDS
					</div>
					
				</div> -->
				<!-- /.row -->

				<jsp:directive.include file="scripts.jsp" />
				<jsp:directive.include file="Footer.jsp" />




			</div>
			<!-- /.page-content -->
		</div>
	</div>
	<!-- /.main-content -->

	<!-- /.page-header -->



	<!-- inline scripts related to this page -->

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>



<!-- script to fade the images onload -->
<script type="text/javascript">
$(document).ready(function() { 
	
	// $('#img'+2).fadeTo(1000, 0.2);
	 
		$.ajax({
			url: 'getValuesToFed' ,
			
			dataType : 'json',
			success : function(data){
				
				console.log(data.length);
				for (i = 0; i < data.length; i++)
					console.log(data[i]);
				
				/*
				$.each(data , function(key,value){
					
					 console.log("key:"+key);
					    $.each(value, function (index, data) {
					        console.log(index, data)
					       // console.log("data: "+ data)
					     
					         if(data == 0){
					        	console.log();
					        	
					        	$('#'+(key)).fadeTo(1000, 0.2);

					        } 
					    })
					
				});
				*/
				
				for(var index in data){
					//console.log(data[index]);
					
					if(data[index] == 0){
			        	
			        	var ind = index.toString();
			        	//console.log("ind="+ind);
			        	
			        	var arr = ind.split(" ");
			        	//console.log("arr="+arr);
			        	
			        	
			        	
			        	var id="";
			        	for(var i in arr){
			        		if(arr[i]== '&'){
			        			arr[i] = '-';
			        		}
			        			
			        		id = id+arr[i];
			        		
			        	}
			        				        	
			        	console.log("id="+id);
			        	
			        	$('#'+(id)).fadeTo(1000, 0.2);

			        }
					
				}
			} 
		});
});
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
		});
	</script>

</body>
</html>