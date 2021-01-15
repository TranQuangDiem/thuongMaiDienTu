
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:importAttribute name="stylesheets"/>
<tiles:importAttribute name="javascripts"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Job Stock - Responsive Job Portal Bootstrap Template</title>

	<!-- CSS -->
	<c:forEach var="css" items="${stylesheets}">
       <link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
    </c:forEach>
</head>
<body>
	<c:url value="/hoadon" var="urlThanhtoan" />
	<div class="Loader"></div>
	<div class="wrapper">

		<!-- Start Navigation -->
		<nav
			class="navbar navbar-default navbar-fixed navbar-light white bootsnav">
			<tiles:insertAttribute name="header"></tiles:insertAttribute>
		</nav>
		<!-- End Navigation -->
		<div class="clearfix"></div>

		<!-- Title Header Start -->
		<section class="inner-header-title"
			style="background-image: url(${pageContext.request.contextPath}/resources/assets/img/banner-10.jpg);">
		<div class="container">
			<h1>Our Package</h1>
		</div>
		</section>
		<div class="clearfix"></div>
		<!-- Title Header End -->

		<!-- pricing Section Start -->
		<section class="pricing">
		<div class="container">
			<c:if test="${not empty danhsachgoi}">
				<c:forEach var="goi" items="${danhsachgoi}">
					<div class="col-md-4 col-sm-4">
						<div class="pr-table">
							<div class="pr-header active">
								<div class="pr-plan">
									<h4>${goi.tengoi}</h4>
								</div>
								<div class="pr-price">
									<h3>
										${goi.gia}<sub>VNĐ</sub>
									</h3>
								</div>
							</div>
							<div class="pr-features">
								<ul>
									<li>Thời hạn : ${goi.thoihan} ngày</li>
									<li>Giới hạn bài đăng : ${goi.soluongbaidang} bài</li>
									<li>${goi.mota}</li>
								</ul>
							</div>
							<div class="pr-buy-button">
								<a onclick="thongbao()" href="${urlThanhtoan}?id=${goi.id}" class="pr-btn active"
									title="Price Button">Mua</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>

		</div>
		</section>
		<!-- End Pricing Section -->

		<!-- Footer Section Start -->
		<footer class="footer">
			<tiles:insertAttribute name="footer"></tiles:insertAttribute>
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
		<script type="text/javascript" src="assets/plugins/js/jquery.min.js"></script>
		<script type="text/javascript"
			src="assets/plugins/js/viewportchecker.js"></script>
		<script type="text/javascript"
			src="assets/plugins/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="assets/plugins/js/bootsnav.js"></script>
		<script type="text/javascript" src="assets/plugins/js/select2.min.js"></script>
		<script type="text/javascript"
			src="assets/plugins/js/wysihtml5-0.3.0.js"></script>
		<script type="text/javascript"
			src="assets/plugins/js/bootstrap-wysihtml5.js"></script>
		<script type="text/javascript"
			src="assets/plugins/js/datedropper.min.js"></script>
		<script type="text/javascript" src="assets/plugins/js/dropzone.js"></script>
		<script type="text/javascript" src="assets/plugins/js/loader.js"></script>
		<script type="text/javascript"
			src="assets/plugins/js/owl.carousel.min.js"></script>
		<script type="text/javascript" src="assets/plugins/js/slick.min.js"></script>
		<script type="text/javascript" src="assets/plugins/js/gmap3.min.js"></script>
		<script type="text/javascript"
			src="assets/plugins/js/jquery.easy-autocomplete.min.js"></script>

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
			function thongbao() {
				 confirm("Bạn chắc chắn muốn mua gói bài đăng này");
			}
		</script>
	</div>
</body>
</html>