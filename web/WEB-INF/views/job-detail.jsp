<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<!-- job-apply-detail41:48-->
<head>
	<!-- Basic Page Needs
	================================================== -->
	<title>Job Stock - Responsive Job Portal Bootstrap Template</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS==================================================-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/plugins/css/plugins.css">
<link
	href="${pageContext.request.contextPath}/resources/assets/css/style.css"
	rel="stylesheet">
<link type="text/css"
	rel="${pageContext.request.contextPath}/resources/stylesheet"
	id="jssDefault"
	href="${pageContext.request.contextPath}/resources/assets/css/colors/green-style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/css-header.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/plugins/js/jquery.min.js"></script>
    
	</head>
	<body>
		<div class="Loader"></div>
		<div class="wrapper">  
			
			<!-- Start Navigation -->
			<nav class="navbar navbar-default navbar-fixed navbar-light white bootsnav">
				<div class="container">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu"><i
							class="fa fa-bars"></i></button>
					<div class="navbar-header"><a class="navbar-brand" href="index-6.html"><img src="assets/img/logo.png"
																								class="logo logo-scrolled"
																								alt=""></a></div>
					<div class="collapse navbar-collapse" id="navbar-menu">
						<ul class="nav navbar-nav navbar-left" data-in="fadeInDown" data-out="fadeOutUp">

							<li class="dropdown megamenu-fw">
							<li><a href="search-new.html">Jobs</a></li>
							<li><a href="create-job.html">Creata Job</a></li>
							<li><a href="blog.html">Blog</a></li>

						</ul>
						<ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">

							<li><a href="pricing.html"><i class="fa fa-sign-in" aria-hidden="true"></i>Pricing</a></li>
							<li><a href="payment-methode.html"><i class="fa fa-dollar" aria-hidden="true"></i>Payment</a></li>
							<li><a href="signup.html"><i class="" aria-hidden="true"></i>Sign Up Now</a></li>
							<li class="left-br"><a href="javascript:void(0)" data-toggle="modal" data-target="#signup"
												   class="signin">Sign In Now</a></li>

						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navigation -->
			<div class="clearfix"></div>
			
			<!-- Title Header Start -->
			<section class="inner-header-page">
				<div class="container">
					
					<div class="col-md-8">
						<div class="left-side-container">
							<div class="freelance-image"><a href="company-detail.html"><img src="assets/img/com-2.jpg" class="img-responsive" alt=""></a></div>
							<div class="header-details">
								<h4>Front End Developer</h4>
								<p>Google</p>
								<ul>
									<li><a href="#"><i class="fa fa-user"></i> 7 Vacancy</a></li>
									<li>
										<div class="star-rating" data-rating="4.2">
											<span class="fa fa-star fill"></span>
											<span class="fa fa-star fill"></span>
											<span class="fa fa-star fill"></span>
											<span class="fa fa-star fill"></span>
											<span class="fa fa-star-half fill"></span>
										</div>
									</li>
									<li><img class="flag" src="assets/img/gb.svg" alt=""> United Kingdom</li>
									<li><div class="verified-action">Verified</div></li>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="col-md-4 bl-1 br-gary">
						<div class="right-side-detail">
							<ul>
								<li><span class="detail-info">Status</span></li>
								<li><span class="detail-info">Experience</span>5 Year</li>
								<li><span class="detail-info">Age</span>22+ Year</li>
							</ul>
							<ul class="social-info">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
							</ul>
						</div>
					</div>
					
				</div>
			</section>
			<div class="clearfix"></div>
			<!-- Title Header End -->
			
			<!-- Job Detail Start -->
			<section>
				<div class="container">
					
					<div class="col-md-8 col-sm-8">
						<div class="container-detail-box">
						
							<div class="apply-job-header">
								<h4><span>Front End Developer</span> <img src="/img/edit.png" alt=""></h4>
								<a href="company-detail.html" class="cl-success"><span><i class="fa fa-building"></i>Google</span></a>
								<span><i class="fa fa-map-marker"></i>United Kingdom</span>
							</div>
							
							<div class="apply-job-detail">
								<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
								<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.</p>
							</div>
							
							<div class="apply-job-detail">
								<h5>Skills</h5>
								<ul class="skills">
									<li>Css3</li>
									<li>Html5</li>
									<li>Photoshop</li>
									<li>Wordpress</li>
									<li>PHP</li>
									<li>Java Script</li>
								</ul>
							</div>
							
							<div class="apply-job-detail">
								<h5>Requirements</h5>
								<ul class="job-requirements">
									<li><span>Availability</span> Hourly</li>
									<li><span>Education</span> Graduate</li>
									<li><span>Age</span> 25+</li>
									<li><span>Experience</span> Intermidiate (3 - 5Year)</li>
									<li><span>Language</span> English, Hindi</li>
								</ul>
							</div>
							
							<a href="#" class="btn btn-success">Apply For This Job</a>
							<a href="<c:url value="/savejob" />?idjob=1" class="btn btn-success">Save Job</a>
							
						</div>
						
						<!-- Similar Jobs -->
						<div class="container-detail-box">
						
							<div class="row">
								<div class="col-md-12">
									<h4>Similar Jobs</h4>
								</div>
							</div>
							
							<div class="row">
								<div class="grid-slide-2">
									
									<!-- Single Freelancer & Premium job -->
									<div class="freelance-box">
										<div class="popular-jobs-container">
											<div class="popular-jobs-box">
												<span class="popular-jobs-status bg-success">hourly</span>
												<h4 class="flc-rate">$17/hr</h4>
												<div class="popular-jobs-box">
													<div class="popular-jobs-box-detail">
														<img src="assets/img/com-2.jpg" class="img-job-box" alt="">
														<h4>Google Inc</h4>
														<span class="desination">Software Designer</span>
													</div>
												</div>
												<div class="popular-jobs-box-extra">
													<ul>
														<li>Php</li>
														<li>Android</li>
														<li>Html</li>
														<li class="more-skill bg-primary">+3</li>
													</ul>
													<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui.</p>
												</div>
											</div>
											<a href="#" class="btn btn-popular-jobs bt-1">View Detail</a>
										</div>
									</div>
									
									<!-- Single Freelancer & Premium job -->
									<div class="freelance-box">
										<div class="popular-jobs-container">
											<div class="popular-jobs-box">
												<span class="popular-jobs-status bg-warning">Monthly</span>
												<h4 class="flc-rate">$570/Mo</h4>
												<div class="popular-jobs-box">
													<div class="popular-jobs-box-detail">
														<img src="assets/img/com-2.jpg" class="img-job-box" alt="">
														<h4>Duff Beer</h4>
														<span class="desination">Marketting</span>
													</div>
												</div>
												<div class="popular-jobs-box-extra">
													<ul>
														<li>Php</li>
														<li>Android</li>
														<li>Html</li>
														<li class="more-skill bg-primary">+3</li>
													</ul>
													<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui.</p>
												</div>
											</div>
											<a href="#" class="btn btn-popular-jobs bt-1">View Detail</a>
										</div>
									</div>
									
									<!-- Single Freelancer & Premium job -->
									<div class="freelance-box">
										<div class="popular-jobs-container">
											<div class="popular-jobs-box">
												<span class="popular-jobs-status bg-info">Weekly</span>
												<h4 class="flc-rate">$200/We</h4>
												<div class="popular-jobs-box">
													<div class="popular-jobs-box-detail">
														<img src="assets/img/com-2.jpg" class="img-job-box" alt="">
														<h4>Cyberdyne Systems</h4>
														<span class="desination">Human Resource</span>
													</div>
												</div>
												<div class="popular-jobs-box-extra">
													<ul>
														<li>Php</li>
														<li>Android</li>
														<li>Html</li>
														<li class="more-skill bg-primary">+3</li>
													</ul>
													<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui.</p>
												</div>
											</div>
											<a href="#" class="btn btn-popular-jobs bt-1">View Detail</a>
										</div>
									</div>
									
									<!-- Single Freelancer & Premium job -->
									<div class="freelance-box">
										<div class="popular-jobs-container">
											<div class="popular-jobs-box">
												<span class="popular-jobs-status bg-danger">Yearly</span>
												<h4 class="flc-rate">$2000/Pa</h4>
												<div class="popular-jobs-box">
													<div class="popular-jobs-box-detail">
														<img src="assets/img/com-2.jpg" class="img-job-box" alt="">
														<h4>Wayne Enterprises</h4>
														<span class="desination">App Designer</span>
													</div>
												</div>
												<div class="popular-jobs-box-extra">
													<ul>
														<li>Php</li>
														<li>Android</li>
														<li>Html</li>
														<li class="more-skill bg-primary">+3</li>
													</ul>
													<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui.</p>
												</div>
											</div>
											<a href="#" class="btn btn-popular-jobs bt-1">View Detail</a>
										</div>
									</div>
							
								</div>
							</div>
							
						</div>
					</div>
					
					<!-- Sidebar Start-->
					<div class="col-md-4 col-sm-4">
						
						<!-- Job Detail -->
						<div class="sidebar-container">
							<div class="sidebar-box">
								<span class="sidebar-status">Full Time</span>
								<h4 class="flc-rate">20K - 30K</h4>
								<div class="sidebar-inner-box">
									<div class="sidebar-box-thumb">
										<img src="assets/img/com-2.jpg" class="img-responsive" alt="" />
									</div>
									<div class="sidebar-box-detail">
										<h4>Google Info</h4>
										<span class="desination">App Designer</span>
									</div>
								</div>
								<div class="sidebar-box-extra">
									<ul>
										<li>Php</li>
										<li>Android</li>
										<li>Html</li>
										<li class="more-skill bg-primary">+3</li>
									</ul>
									<ul class="status-detail">
										<li class="br-1"><strong>Canada</strong>Location</li>
										<li class="br-1"><strong>748</strong>View</li>
										<li><strong>03</strong>Post</li>
									</ul>
								</div>
							</div>
							<a href="#" class="btn btn-sidebar bt-1 bg-success">Apply For This</a>
						</div>
						
						<!-- Share This Job -->
						<div class="sidebar-wrapper">
							<div class="sidebar-box-header bb-1">
								<h4>Share This Job</h4>
							</div>
						
							<ul class="social-share">
								<li><a href="#" class="fb-share"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" class="tw-share"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" class="gp-share"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#" class="in-share"><i class="fa fa-instagram"></i></a></li>
								<li><a href="#" class="li-share"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#" class="be-share"><i class="fa fa-behance"></i></a></li>
							</ul>
						</div>
						
					</div>
					<!-- End Sidebar -->
					
				</div>
			</section>
			<!-- Job Detail End -->

			<!-- Table Start  -->
			<div class="container table-section" style="padding-left: 30px;">
				<h3>Subscribers</h3>
				<div class="table" style="max-height: 50vh; overflow-y: auto;">
					<table>
						<thead>
							<tr>
								<th>
									<p></p>
								</th>
								<th>
									<p>Full name</p>
								</th>
								<th>
									<p>Describe</p>
								</th>
								<th>
									<p>Date apply</p>
								</th>
								<th>
									<p>Evaluate</p>
								</th>
								<th>
									<p>Accept</p>
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="image-text">
										<img src="assets/img/com-2.jpg" alt="">
									</div>
								</td>
								<td>
									<p>Mike Dawson</p>
								</td>
								<td>
									<p>Mike Dawson</p>
								</td>
								<td>
									<p>22/11/2020</p>
								</td>
								<td>
									<strong class="j-shared rate-custom">4,5 <i class="fa fa-star"></i></strong>
								</td>
								<td>
								<div class="tag">Accept</div>
								<div class="tag-delete">Delete</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="image-text">
										<img src="assets/img/com-2.jpg" alt="">
									</div>
								</td>
								<td>
									<p>Mike Dawson</p>
								</td>
								<td>
									<p>Mike Dawson</p>
								</td>
								<td>
									<p>22/11/2020</p>
								</td>
								<td>
									<strong class="j-shared rate-custom">4,5 <i class="fa fa-star"></i></strong>
								</td>
								<td>
								<div class="tag">Accept</div>
								<div class="tag-delete">Delete</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="image-text">
										<img src="assets/img/com-2.jpg" alt="">
									</div>
								</td>
								<td>
									<p>Mike Dawson</p>
								</td>
								<td>
									<p>Mike Dawson</p>
								</td>
								<td>
									<p>22/11/2020</p>
								</td>
								<td>
									<strong class="j-shared rate-custom">4,5 <i class="fa fa-star"></i></strong>
								</td>
								<td>
								<div class="tag">Accept</div>
								<div class="tag-delete">Delete</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="image-text">
										<img src="assets/img/com-2.jpg" alt="">
									</div>
								</td>
								<td>
									<p>Mike Dawson</p>
								</td>
								<td>
									<p>Mike Dawson</p>
								</td>
								<td>
									<p>22/11/2020</p>
								</td>
								<td>
									<strong class="j-shared rate-custom">4,5 <i class="fa fa-star"></i></strong>
								</td>
								<td>
								<div class="tag">Accept</div>
								<div class="tag-delete">Delete</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="image-text">
										<img src="assets/img/com-2.jpg" alt="">
									</div>
								</td>
								<td>
									<p>Mike Dawson</p>
								</td>
								<td>
									<p>Mike Dawson</p>
								</td>
								<td>
									<p>22/11/2020</p>
								</td>
								<td>
									<strong class="j-shared rate-custom">4,5 <i class="fa fa-star"></i></strong>
								</td>
								<td>
								<div class="tag">Accept</div>
								<div class="tag-delete">Delete</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="image-text">
										<img src="assets/img/com-2.jpg" alt="">
									</div>
								</td>
								<td>
									<p>Mike Dawson</p>
								</td>
								<td>
									<p>Mike Dawson</p>
								</td>
								<td>
									<p>22/11/2020</p>
								</td>
								<td>
									<strong class="j-shared rate-custom">4,5 <i class="fa fa-star"></i></strong>
								</td>
								<td>
								<div class="tag">Accept</div>
								<div class="tag-delete">Delete</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="image-text">
										<img src="assets/img/com-2.jpg" alt="">
									</div>
								</td>
								<td>
									<p>Mike Dawson</p>
								</td>
								<td>
									<p>Mike Dawson</p>
								</td>
								<td>
									<p>22/11/2020</p>
								</td>
								<td>
									<strong class="j-shared rate-custom">4,5 <i class="fa fa-star"></i></strong>
								</td>
								<td>
								<div class="tag">Accept</div>
								<div class="tag-delete">Delete</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="image-text">
										<img src="assets/img/com-2.jpg" alt="">
									</div>
								</td>
								<td>
									<p>Mike Dawson</p>
								</td>
								<td>
									<p>Mike Dawsonaaaaaaaaaaaaaaaaaaaaa</p>
								</td>
								<td>
									<p>22/11/2020</p>
								</td>
								<td>
									<strong class="j-shared rate-custom">4,5 <i class="fa fa-star"></i></strong>
								</td>
								<td>
								<div class="tag">Accept</div>
								<div class="tag-delete">Delete</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			

	

			<!-- Table End  -->

						
			<!-- Footer Section Start -->
			<footer class="footer">
				<div class="row lg-menu">
					<div class="container">
						<div class="col-md-4 col-sm-4">
							<img src="assets/img/footer-logo.png" class="img-responsive" alt="" /> 
						</div>
						<div class="col-md-8 co-sm-8 pull-right">
							<ul>
								<li><a href="index-2.html" title="">Home</a></li>
								<li><a href="blog.html" title="">Blog</a></li>
								<li><a href="404.html" title="">404</a></li>
								<li><a href="faq.html" title="">FAQ</a></li>
								<li><a href="contact.html" title="">Contact Us</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row no-padding">
					<div class="container">
						<div class="col-md-3 col-sm-12">
							<div class="footer-widget">
							<h3 class="widgettitle widget-title">About Job Stock</h3>
							<div class="textwidget">
							<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>
							<p>7860 North Park Place<br>
							San Francisco, CA 94120</p>
							<p><strong>Email:</strong> Support@careerdesk</p>
							<p><strong>Call:</strong> <a href="tel:+15555555555">555-555-1234</a></p>
							<ul class="footer-social">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
							</div>
							</div>
						</div>
						
						<div class="col-md-3 col-sm-4">
							<div class="footer-widget">
							<h3 class="widgettitle widget-title">All Navigation</h3>
							<div class="textwidget">
								<div class="textwidget">
								<ul class="footer-navigation">
									<li><a href="manage-company.html" title="">Front-end Design</a></li>
									<li><a href="manage-company.html" title="">Android Developer</a></li>
									<li><a href="manage-company.html" title="">CMS Development</a></li>
									<li><a href="manage-company.html" title="">PHP Development</a></li>
									<li><a href="manage-company.html" title="">IOS Developer</a></li>
									<li><a href="manage-company.html" title="">Iphone Developer</a></li>
								</ul>
							</div>
							</div>
							</div>
						</div>
						
						<div class="col-md-3 col-sm-4">
							<div class="footer-widget">
							<h3 class="widgettitle widget-title">All Categories</h3>
							<div class="textwidget">
								<ul class="footer-navigation">
									<li><a href="manage-company.html" title="">Front-end Design</a></li>
									<li><a href="manage-company.html" title="">Android Developer</a></li>
									<li><a href="manage-company.html" title="">CMS Development</a></li>
									<li><a href="manage-company.html" title="">PHP Development</a></li>
									<li><a href="manage-company.html" title="">IOS Developer</a></li>
									<li><a href="manage-company.html" title="">Iphone Developer</a></li>
								</ul>
							</div>
							</div>
						</div>
							
						<div class="col-md-3 col-sm-4">
							<div class="footer-widget">
							<h3 class="widgettitle widget-title">Connect Us</h3>
							<div class="textwidget">
							<form class="footer-form">
								<input type="text" class="form-control" placeholder="Your Name"> 
								<input type="text" class="form-control" placeholder="Email">
								<textarea class="form-control" placeholder="Message"></textarea>
								<button type="submit" class="btn btn-primary">Login</button>
							</form>
							</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row copyright">
					<div class="container">
						<p><a target="_blank" href="https://www.templateshub.net">Templates Hub</a></p>
					</div>
				</div>
			</footer>
			<div class="clearfix"></div>
			<!-- Footer Section End -->
			
			<!-- Sign Up Window Code -->
			<div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-body">
							<div class="tab" role="tabpanel">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#login" role="tab" data-toggle="tab">Sign In</a></li>
								<li role="presentation"><a href="#register" role="tab" data-toggle="tab">Sign Up</a></li>
							</ul>
							<!-- Tab panes -->
							<div class="tab-content" id="myModalLabel2">
								<div role="tabpanel" class="tab-pane fade in active" id="login">
									<img src="assets/img/logo.png" class="img-responsive" alt="" />
									<div class="subscribe wow fadeInUp">
										<form class="form-inline" method="post">
											<div class="col-sm-12">
												<div class="form-group">
													<input type="email"  name="email" class="form-control" placeholder="Username" required="">
													<input type="password" name="password" class="form-control"  placeholder="Password" required="">
													<div class="center">
													<button type="submit" id="login-btn" class="submit-btn"> Login </button>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>

								<div role="tabpanel" class="tab-pane fade" id="register">
								<img src="assets/img/logo.png" class="img-responsive" alt="" />
									<form class="form-inline" method="post">
											<div class="col-sm-12">
												<div class="form-group">
													<input type="text"  name="email" class="form-control" placeholder="Your Name" required="">
													<input type="email"  name="email" class="form-control" placeholder="Your Email" required="">
													<input type="email"  name="email" class="form-control" placeholder="Username" required="">
													<input type="password" name="password" class="form-control"  placeholder="Password" required="">
													<div class="center">
													<button type="submit" id="subscribe" class="submit-btn"> Create Account </button>
													</div>
												</div>
											</div>
										</form>
								</div>
							</div>
							</div>
						</div>
						</div>
				</div>
			</div>   
			<!-- End Sign Up Window -->
			<button class="w3-button w3-teal w3-xlarge w3-right" onclick="openRightMenu()"><i class="spin fa fa-cog" aria-hidden="true"></i></button>
			<div class="w3-sidebar w3-bar-block w3-card-2 w3-animate-right" style="display:none;right:0;" id="rightMenu">
				<button onclick="closeRightMenu()" class="w3-bar-item w3-button w3-large">Close &times;</button>
				<ul id="styleOptions" title="switch styling">
					<li>
						<a href="javascript: void(0)" class="cl-box blue" data-theme="colors/blue-style"></a>
					</li>
					<li>
						<a href="javascript: void(0)" class="cl-box red" data-theme="colors/red-style"></a>
					</li>
					<li>
						<a href="javascript: void(0)" class="cl-box purple" data-theme="colors/purple-style"></a>
					</li>
					<li>
						<a href="javascript: void(0)" class="cl-box green" data-theme="colors/green-style"></a>
					</li>
					<li>
						<a href="javascript: void(0)" class="cl-box dark-red" data-theme="colors/dark-red-style"></a>
					</li>
					<li>
						<a href="javascript: void(0)" class="cl-box orange" data-theme="colors/orange-style"></a>
					</li>
					<li>
						<a href="javascript: void(0)" class="cl-box sea-blue" data-theme="colors/sea-blue-style "></a>
					</li>
					<li>
						<a href="javascript: void(0)" class="cl-box pink" data-theme="colors/pink-style"></a>
					</li>
				</ul>
			</div>
			
			<!-- Scripts
			================================================== -->
		<!-- Scripts==================================================-->
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/jquery.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/viewportchecker.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/bootstrap.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/bootsnav.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/select2.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/wysihtml5-0.3.0.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/bootstrap-wysihtml5.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/datedropper.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/dropzone.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/loader.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/owl.carousel.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/slick.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/gmap3.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/jquery.easy-autocomplete.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/js/custom.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/js/jQuery.style.switcher.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#styleOptions').styleSwitcher();
			});
		</script>
		<script>
			function openRightMenu() {
				document.getElementById("rightMenu").style.display = "block";
			}
			function closeRightMenu() {
				document.getElementById("rightMenu").style.display = "none";
			}
		</script>
		</div>
	</body>

<!-- job-apply-detail41:48-->
</html>