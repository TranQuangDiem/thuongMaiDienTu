<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:importAttribute name="stylesheets"/>
<tiles:importAttribute name="javascripts"/>
<!doctype html>
<html lang="en">

<!-- job-apply-detail41:48-->
<head>
	<!-- Basic Page Needs
	================================================== -->
	<title>Job Stock - Responsive Job Portal Bootstrap Template</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- CSS -->
	<c:forEach var="css" items="${stylesheets}">
       <link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
    </c:forEach>
    <!-- Custom style -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/jquery.min.js"></script>
    
	
    
	</head>
	<body>
		<div class="Loader"></div>
		<div class="wrapper">  
			
			<!-- Start Navigation -->
			<nav class="navbar navbar-default navbar-fixed navbar-light white bootsnav">
				<tiles:insertAttribute name="header"></tiles:insertAttribute>
			</nav>
			<!-- End Navigation -->
			<div class="clearfix"></div>
			
			<!-- Title Header Start -->
			<section class="inner-header-page">
				<div class="container">
					
					<div class="col-md-8">
						<div class="left-side-container">
							<div class="freelance-image"><a href="company-detail.html"><img src='data:image/jpge;base64,<c:out value="${job.img}"></c:out>' class="img-responsive" alt=""></a></div>
							<div class="header-details">
								<h4>${job.jobTitle}</h4>
								<p>${job.ofAccount.fullname}</p>
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
									<li><img class="flag" src="${pageContext.request.contextPath}/resources/assets/img/gb.svg" alt=""> United Kingdom</li>
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
								<h4><span>Front End Developer</span> <img src="${pageContext.request.contextPath}/resources/assets/img/edit.png" alt=""></h4>
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
														<img src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg" class="img-job-box" alt="">
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
														<img src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg" class="img-job-box" alt="">
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
														<img src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg" class="img-job-box" alt="">
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
														<img src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg" class="img-job-box" alt="">
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
										<img src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg" class="img-responsive" alt="" />
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
			
			<tiles:insertAttribute name="subscribers" />
			
			

	

			<!-- Table End  -->

						
			<!-- Footer Section Start -->
			<footer class="footer">
				<tiles:insertAttribute name="footer"></tiles:insertAttribute>
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
									<img src="${pageContext.request.contextPath}/resources/assets/img/logo.png" class="img-responsive" alt="" />
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
								<img src="${pageContext.request.contextPath}/resources/assets/img/logo.png" class="img-responsive" alt="" />
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
			<c:forEach var="script" items="${javascripts}">
		        <script src="<c:url value="${script}"/>"></script>
		    </c:forEach> 
			
			
			
			
		</div>
	</body>

<!-- job-apply-detail41:48-->
</html>