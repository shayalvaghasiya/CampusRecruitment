<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>About Us</title>
<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
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
					<h1>About Us</h1>					
				</div>
				
				<div class="row">
					<div class="col-xs-12">
					<p class="lead">A dynamic team of young minds who came together  
					to create Magic !</p>
					
					<blockquote class="pull-left">
					<p>
					Some nice quote
					</p>
					
					</blockquote>
					</div>
				</div>
				<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div>
									<ul class="ace-thumbnails clearfix">
										<li>
											<a href="assets/profile/shayal.jpg" title="Photo Title" data-rel="colorbox">
												<img width="150" height="150" alt="150x150" src="assets/profile/shayal.jpg" />
											</a>

											<div class="tags">
												<span class="label-holder">
													<span class="label label-info" width="500">Shayal </span>
												</span>
											</div>

											
										</li>
										<li>
											<a href="assets/profile/dhruv.jpg" title="Photo Title" data-rel="colorbox">
												<img width="150" height="150" alt="150x150" src="assets/profile/dhruv.jpg" />
											</a>

											<div class="tags">
												<span class="label-holder">
													<span class="label label-info">Dhruv</span>
												</span>

											</div>

											
										</li>
										<li>
											<a href="assets/profile/aniket.jpg" title="Photo Title" data-rel="colorbox">
												<img width="150" height="150" alt="150x150" src="assets/profile/aniket.jpg" />
											</a>

											<div class="tags">
												<span class="label-holder">
													<span class="label label-info">Aniket</span>
												</span>

											</div>

											
										</li>
										<li>
											<a href="assets/profile/milind.jpg" title="Photo Title" data-rel="colorbox">
												<img width="150" height="150" alt="150x150" src="assets/profile/milind.jpg" />
											</a>

											<div class="tags">
												<span class="label-holder">
													<span class="label label-info">Milind </span>
												</span>

											</div>

											
										</li>
																				

									</ul>
								</div><!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
				
					<div >
						<div class="thumbnail search-thumbnail">
							<!-- <img class="media-object" data-src="holder.js/100px200?theme=social" /> -->
							<!-- <p align="center"> <i class="fa fa-user fa-5x" aria-hidden="true"></i></p> -->>
							
							<div class="caption">
								<h3 class="search-title">
									<p class="blue" align="center">Mentor</p>
								</h3>
								<p>Thanks to your support,we made it this far</p>
								<ul>
									<li>Prof. Vaishali Patel </li>																	
								</ul>	
								
							</div>
						</div>
					</div>
				</div>
			</div>
				<div class="space-3"></div>					
									
 				<jsp:directive.include file="scripts.jsp" />			
				<jsp:directive.include file="Footer.jsp" />
			</div>
			<!-- /.page-content -->
		</div>
	</div>
	
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>	
	
</body>
</html>