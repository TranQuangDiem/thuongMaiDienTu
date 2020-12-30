<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vis Wallet</title>

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
</head>

<body>
	<div class="Loader"></div>
	<div class="wrapper">

		<!-- Start Navigation -->
		<nav
			class="navbar navbar-default navbar-fixed navbar-light white bootsnav">
		<div class="container">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbar-menu">
				<i class="fa fa-bars"></i>
			</button>
			<div class="navbar-header">
				<a class="navbar-brand" href="index-6.jsp"><img
					src="assets/img/logo.png" class="logo logo-scrolled" alt=""></a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-menu">
				<ul class="nav navbar-nav navbar-left" data-in="fadeInDown"
					data-out="fadeOutUp">

					<li class="dropdown megamenu-fw">
					<li><a href="search-new.html">Jobs</a></li>
					<li><a href="create-job.html">Creata Job</a></li>
					<li><a href="blog.html">Blog</a></li>

				</ul>
				<ul class="nav navbar-nav navbar-right" data-in="fadeInDown"
					data-out="fadeOutUp">

					<li><a href="pricing.html"><i class="fa fa-sign-in"
							aria-hidden="true"></i>Pricing</a></li>
					<li><a href="payment-methode.html"><i class="fa fa-dollar"
							aria-hidden="true"></i>Payment</a></li>
					<li><a href="signup.html"><i class="" aria-hidden="true"></i>Sign
							Up Now</a></li>
					<li class="left-br"><a href="javascript:void(0)"
						data-toggle="modal" data-target="#signup" class="signin">Sign
							In Now</a></li>

				</ul>
			</div>
		</div>
		</nav>
		<!-- End Navigation -->
		<div class="clearfix"></div>

		<!-- Title Header Start -->
		<section class="inner-header-title"
			style="background-image:url(assets/img/banner-10.jpg);">
		<div class="container">
			<h1>Ví Tiền Của Tôi</h1>
		</div>
		</section>
		<div class="clearfix"></div>
		<!-- Title Header End -->

		<!-- Candidate Profile Start -->
		<section class="detail-desc advance-detail-pr gray-bg">
		<div class="container white-shadow">
			<div class="row">
				<!--User Avatar -->
				<div class="detail-pic">
					<img src="assets/img/avatar.png" class="img" alt="" /><a href="#"
						class="detail-edit" title="edit"><i class="fa fa-pencil"></i></a>
				</div>
				<!--   <div class="detail-status"><span>Active Now</span></div> -->
			</div>

			<div class="row bottom-mrg">
				<div class="col-md-12 col-sm-12">
					<div class="advance-detail detail-desc-caption">
						<h4>${sessionScope.taikhoan.fullname}</h4>
						<span class="designation"></span>
						<ul>
							<li><strong class="j-view"></strong></li>
							<li><strong class="j-applied">${vitien.tongTien}</strong>Balance</li>
							<li><strong class="j-shared"></strong></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="row no-padd">
				<div class="detail pannel-footer">
					<div class="col-md-5 col-sm-5">
						<ul class="detail-footer-social">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram"></i></a></li>
						</ul>
					</div>
					<div class="col-md-7 col-sm-7">
						<div class="detail-pannel-footer-btn pull-right">
							<a href="<c:url value="/thanhtoan"/>" class="footer-btn grn-btn"
								title="">Recharge</a>
						</div>
						<!-- data-toggle="modal" data-target="#apply-job" -->
					</div>
				</div>
			</div>

		</div>
		<section class="full-detail-description full-detail gray-bg">
		<div class="container">
			<div class="col-md-12 col-sm-12">
				<div class="full-card">
					<div class="deatil-tab-employ tool-tab">
						<ul class="nav simple nav-tabs" id="simple-design-tab">
							<li><a href="#messages">History <span class="info-bar">3</span></a></li>
						</ul>
						<!-- Start All Sec -->
						<div class="tab-content">


							<!-- Start Message -->
							<div id="messages" class="tab-pane fade">
								<div class="inbox-body inbox-widget">
									<c:if test="${not empty hoadon}">
										<c:forEach var="hoadon" items="${hoadon}">
											<div class="mail-card">
												<header class="card-header cursor-pointer collapsed"
													data-toggle="collapse" data-target="#full-message"
													aria-expanded="false">
												<div class="card-title flexbox">
													<img class="img-responsive img-circle avatar"
														src="${pageContext.request.contextPath}/resources/assets/img/check.png" alt="...">
													<div>
														<h6>${hoadon.tengoi}</h6>
														<small>${hoadon.ngayMua}</small> <small><a
															class="text-info collapsed" href="#detail-view"
															data-toggle="collapse" aria-expanded="false">xem chi tiết</a></small>

														<div class="no-collapsing cursor-text collapse"
															id="detail-view" aria-expanded="false"
															style="height: 0px;">
															<small class="d-inline-block">From:</small> <small>${sessionScope.taikhoan.fullname}</small>
															<br> <small class="d-inline-block">To:</small> <small>Web
																site</small>
														</div>
													</div>
												</div>
												</header>
												<div class="collapse" id="full-message"
													aria-expanded="false" style="height: 0px;">
													<div class="card-body">

														<p style="color: red">-${hoadon.giaTri}</p>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:if>
								<!-- 	<div class="mail-card unread">
										<header class="card-header cursor-pointer collapsed"
											data-toggle="collapse" data-target="#meaages-2"
											aria-expanded="false">
										<div class="card-title flexbox">
											<img class="img-responsive img-circle avatar"
												src="assets/img/check.png" alt="...">
											<div>
												<h6>Apply Job</h6>
												<small>Today at 07:34 AM</small> <small><a
													class="text-info collapsed" href="#detail-view1"
													data-toggle="collapse" aria-expanded="false">View
														Detail</a></small>

												<div class="no-collapsing cursor-text collapse"
													id="detail-view1" aria-expanded="false"
													style="height: 0px;">
													<small class="d-inline-block">From:</small> <small>User</small>
													<br> <small class="d-inline-block">To:</small> <small>Web
														site</small>
												</div>
											</div>
										</div>
										</header>
										<div class="collapse" id="meaages-2" aria-expanded="false"
											style="height: 0px;">
											<div class="card-body">
												<p style="color: red">-10$</p>
											</div>
										</div>
									</div>

									<div class="mail-card">
										<header class="card-header cursor-pointer collapsed"
											data-toggle="collapse" data-target="#meaages-3"
											aria-expanded="false">
										<div class="card-title flexbox">
											<img class="img-responsive img-circle avatar"
												src="assets/img/xx.png" alt="...">
											<div>
												<h6>Refund</h6>
												<small>Today at 07:34 AM</small> <small><a
													class="text-info collapsed" href="#detail-view2"
													data-toggle="collapse" aria-expanded="false">View
														Detail</a></small>

												<div class="no-collapsing cursor-text collapse"
													id="detail-view2" aria-expanded="false"
													style="height: 0px;">
													<small class="d-inline-block">From:</small> <small>Web
														site</small> <br> <small class="d-inline-block">To:</small> <small>User</small>
												</div>
											</div>
										</div>
										</header>
										<div class="collapse" id="meaages-3" aria-expanded="false"
											style="height: 0px;">
											<div class="card-body">
												<p style="color: green">+10$</p>
												<p>Apply request was denied</p>
											</div>
										</div>
									</div>
 -->

									<!-- End Message -->

								</div>
								<!-- Start All Sec -->
							</div>
						</div>
					</div>
				</div>
		</section> </section>
	</div>
	<!-- Start All Sec -->
	</div>
	</div>
	</div>
	</div>
	</section>

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
						<p>Sed ut perspiciatis unde omnis iste natus error sit
							voluptatem.</p>
						<p>
							7860 North Park Place<br> San Francisco, CA 94120
						</p>
						<p>
							<strong>Email:</strong> Support@careerdesk
						</p>
						<p>
							<strong>Call:</strong> <a href="tel:+15555555555">555-555-1234</a>
						</p>
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
								<li><a href="manage-company.html" title="">Front-end
										Design</a></li>
								<li><a href="manage-company.html" title="">Android
										Developer</a></li>
								<li><a href="manage-company.html" title="">CMS
										Development</a></li>
								<li><a href="manage-company.html" title="">PHP
										Development</a></li>
								<li><a href="manage-company.html" title="">IOS
										Developer</a></li>
								<li><a href="manage-company.html" title="">Iphone
										Developer</a></li>
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
							<li><a href="manage-company.html" title="">Front-end
									Design</a></li>
							<li><a href="manage-company.html" title="">Android
									Developer</a></li>
							<li><a href="manage-company.html" title="">CMS
									Development</a></li>
							<li><a href="manage-company.html" title="">PHP
									Development</a></li>
							<li><a href="manage-company.html" title="">IOS Developer</a></li>
							<li><a href="manage-company.html" title="">Iphone
									Developer</a></li>
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
			<p>
				<a target="_blank" href="https://www.templateshub.net">Templates
					Hub</a>
			</p>
		</div>
	</div>
	</footer>
	<div class="clearfix"></div>
	<!-- Footer Section End -->

	<!-- Sign Up Window Code -->
	<div class="modal fade" id="signup" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel2" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<div class="tab" role="tabpanel">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#login"
								role="tab" data-toggle="tab">Sign In</a></li>
							<li role="presentation"><a href="#register" role="tab"
								data-toggle="tab">Sign Up</a></li>
						</ul>
						<!-- Tab panes -->
						<div class="tab-content" id="myModalLabel2">
							<div role="tabpanel" class="tab-pane fade in active" id="login">
								<img src="assets/img/logo.png" class="img-responsive" alt="" />
								<div class="subscribe wow fadeInUp">
									<form class="form-inline" method="post">
										<div class="col-sm-12">
											<div class="form-group">
												<input type="email" name="email" class="form-control"
													placeholder="Username" required=""> <input
													type="password" name="password" class="form-control"
													placeholder="Password" required="">
												<div class="center">
													<button type="submit" id="login-btn" class="submit-btn">
														Login</button>
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
											<input type="text" name="email" class="form-control"
												placeholder="Your Name" required=""> <input
												type="email" name="email" class="form-control"
												placeholder="Your Email" required=""> <input
												type="email" name="email" class="form-control"
												placeholder="Username" required=""> <input
												type="password" name="password" class="form-control"
												placeholder="Password" required="">
											<div class="center">
												<button type="submit" id="subscribe" class="submit-btn">
													Create Account</button>
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

	<button class="w3-button w3-teal w3-xlarge w3-right"
		onclick="openRightMenu()">
		<i class="spin fa fa-cog" aria-hidden="true"></i>
	</button>
	<div class="w3-sidebar w3-bar-block w3-card-2 w3-animate-right"
		style="display: none; right: 0;" id="rightMenu">
		<button onclick="closeRightMenu()"
			class="w3-bar-item w3-button w3-large">Close &times;</button>
		<ul id="styleOptions" title="switch styling">
			<li><a href="javascript: void(0)" class="cl-box blue"
				data-theme="colors/blue-style"></a></li>
			<li><a href="javascript: void(0)" class="cl-box red"
				data-theme="colors/red-style"></a></li>
			<li><a href="javascript: void(0)" class="cl-box purple"
				data-theme="colors/purple-style"></a></li>
			<li><a href="javascript: void(0)" class="cl-box green"
				data-theme="colors/green-style"></a></li>
			<li><a href="javascript: void(0)" class="cl-box dark-red"
				data-theme="colors/dark-red-style"></a></li>
			<li><a href="javascript: void(0)" class="cl-box orange"
				data-theme="colors/orange-style"></a></li>
			<li><a href="javascript: void(0)" class="cl-box sea-blue"
				data-theme="colors/sea-blue-style "></a></li>
			<li><a href="javascript: void(0)" class="cl-box pink"
				data-theme="colors/pink-style"></a></li>
		</ul>
	</div>

	<!-- Scripts
			================================================== -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/plugins/js/viewportchecker.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/bootsnav.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/select2.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/plugins/js/wysihtml5-0.3.0.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/plugins/js/bootstrap-wysihtml5.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/plugins/js/datedropper.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/dropzone.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/loader.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/plugins/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/slick.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/gmap3.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/plugins/js/jquery.easy-autocomplete.min.js"></script>
	<!-- Custom Js -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/custom.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jQuery.style.switcher.js"></script>
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

</body>
</html>