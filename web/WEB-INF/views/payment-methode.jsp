<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:importAttribute name="stylesheets"/>
<tiles:importAttribute name="javascripts"/>
<!doctype html>
<html lang="en">

<!-- payment-methode41:48-->
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
			<section class="inner-header-title gray-bg">
				<div class="container">
					<h2 class="cl-default">Nạp tiền vào tài khoản</h2>
				</div>
			</section>
			<div class="clearfix"></div>
			<!-- Title Header End -->
			
			<!-- Accordion Design Start -->
			<section class="accordion">
				<div class="container">
					<div class="row">
						
						<!-- Billing Address -->
						<div class="col-md-6 col-sm-6">
							<div class="sidebar-wrapper">
							
							<div class="sidebar-box-header bb-1">
								<h4>Billing Information</h4>
							</div>
							
							<form class="billing-form">
								<div class="row">
									<div class="col-xs-12">
										<label>Full Name</label>
										<input type="text" class="form-control" />
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<label>Address</label>
										<input type="text" class="form-control" />
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<label>City</label>
										<input type="text" class="form-control" />
									</div>
								</div>
								<div class="row">
									<div class="col-xs-6">
										<label>State</label>
										<select class="form-control input-lg">
											<option>State</option>
											<option>Punjab</option>
											<option>Haryana</option>
											<option>Madhya Pradesh</option>
										</select>
									</div>
									<div class="col-xs-6">
										<label>Zip Code</label>
										<input type="text" class="form-control" />
									</div>
								</div>
							</form>
							
							</div>
						</div>
						
						<!-- Payment Detail -->
						<div class="col-md-6 col-sm-6">
							<div class="sidebar-wrapper">
							
							<div class="sidebar-box-header bb-1">
								<h4>Credit Card Information</h4>
							</div>
							
							<form class="billing-form">
								<div class="row">
									<div class="col-xs-12">
										<label>Nmae Of Card</label>
										<input type="text" class="form-control" />
									</div>
								</div>
								<div class="row">
									<div class="col-xs-8">
										<label>Card Number</label>
										<input type="text" class="form-control" />
									</div>
									<div class="col-xs-4">
										<img src="assets/img/debit.png" class="img-responsive payment-img" alt="">
									</div>
								</div>
								<div class="row">
									<div class="col-sm-8">
										<label>Expiration Date</label>
										<div class="row">
											<div class="col-xs-6">
												<select class="form-control input-lg">
													<option>January</option>
													<option>February</option>
													<option>March</option>
													<option>April</option>
												</select>
											</div>
											<div class="col-xs-6">
												<select class="form-control input-lg">
													<option>2020</option>
													<option>2021</option>
													<option>2022</option>
													<option>2023</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<label>CVC/CVV</label>
										<input type="text" class="form-control" />
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<label>Coupon Code(If Available)</label>
										<input type="text" class="form-control" />
									</div>
								</div>
							</form>
							
							</div>
						</div>
						
					</div>
					
					<div class="row">
						<div class="col-md-12 text-center">
							<a href="#" class="btn btn-success">Proceed...</a>
							<a href="<c:url value="/vitien"/>" class="btn btn-default">Cancel...</a>
						</div>
					</div>
				</div>
			</section>
			<!-- Accordion Design End -->
			
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
			<script type="text/javascript" src="assets/plugins/js/jquery.min.js"></script>
			<script type="text/javascript" src="assets/plugins/js/viewportchecker.js"></script>
			<script type="text/javascript" src="assets/plugins/js/bootstrap.min.js"></script>
			<script type="text/javascript" src="assets/plugins/js/bootsnav.js"></script>
			<script type="text/javascript" src="assets/plugins/js/select2.min.js"></script>
			<script type="text/javascript" src="assets/plugins/js/wysihtml5-0.3.0.js"></script>
			<script type="text/javascript" src="assets/plugins/js/bootstrap-wysihtml5.js"></script>
			<script type="text/javascript" src="assets/plugins/js/datedropper.min.js"></script>
			<script type="text/javascript" src="assets/plugins/js/dropzone.js"></script>
			<script type="text/javascript" src="assets/plugins/js/loader.js"></script>
			<script type="text/javascript" src="assets/plugins/js/owl.carousel.min.js"></script>
			<script type="text/javascript" src="assets/plugins/js/slick.min.js"></script>
			<script type="text/javascript" src="assets/plugins/js/gmap3.min.js"></script>
			<script type="text/javascript" src="assets/plugins/js/jquery.easy-autocomplete.min.js"></script>
			
			<!-- Custom Js -->
			<script src="assets/js/custom.js"></script>
			<script src="assets/js/jQuery.style.switcher.js"></script>
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

<!-- payment-methode41:49-->
</html>