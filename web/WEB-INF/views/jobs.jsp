<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!doctype html>
<html lang="en">

<!-- search-new41:42-->
<head>
<!-- Basic Page Needs
	================================================== -->
<title><tiles:getAsString name="title"></tiles:getAsString></title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
	================================================== -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/css/plugins.css">

<!-- Custom style -->
<link
	href="${pageContext.request.contextPath}/resources/assets/css/style.css"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" id="jssDefault"
	href="${pageContext.request.contextPath}/resources//assets/css/colors/green-style.css">

</head>
<body>
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
		<section class="inner-header-title no-br advance-header-title"
			style="background-image:url(${pageContext.request.contextPath}/resources/assets/img/banner-10.jpg);">
			<div class="container">
				<h2>
					<span>Work There.</span> Find the dream job
				</h2>
				<p>
					<span>704</span> new job in the last <span>7</span> days.
				</p>
			</div>
		</section>
		<div class="clearfix"></div>
		<!-- Title Header End -->

		<!-- bottom form section start -->
		<section class="bottom-search-form">
			<div class="container">
				<form class="bt-form">
					<div class="col-md-3 col-sm-6">
						<input type="text" class="form-control"
							placeholder="Skills, Designations, Keyword">
					</div>
					<div class="col-md-3 col-sm-6">
						<input type="text" class="form-control"
							placeholder="Searc By location">
					</div>
					<div class="col-md-3 col-sm-6">
						<select class="form-control">
							<option>By Category</option>
							<option>Information Technology</option>
							<option>Mechanical</option>
							<option>Hardware</option>
						</select>
					</div>
					<div class="col-md-3 col-sm-6">
						<button type="submit" class="btn btn-primary">Search Job</button>
					</div>
				</form>
			</div>
		</section>
		<!-- Bottom Search Form Section End -->

		<!-- ========== Begin: Brows job Category ===============  -->
		<section class="brows-job-category gray-bg">
			<div class="container">
				<!-- Sidebar Start -->
				<div class="col-md-3 col-sm-12">
					<div class="sidebar right-sidebar">

						<div class="side-widget">
							<h2 class="side-widget-title">Job Alert</h2>
							<div class="job-alert">
								<div class="widget-text">
									<form>
										<input type="text" name="keyword" class="form-control"
											placeholder="Job Keyword"> <input type="email"
											name="email" class="form-control" placeholder="Email ID">
										<button type="submit" class="btn btn-alrt">Add Alert</button>
									</form>
								</div>
							</div>
						</div>

						<div class="side-widget">
							<h2 class="side-widget-title">Advertisment</h2>
							<div class="widget-text padd-0">
								<div class="ad-banner">
									<img
										src="${pageContext.request.contextPath}/resources/http://via.placeholder.com/320x285"
										class="img-responsive" alt="">
								</div>
							</div>
						</div>

						<div class="side-widget">
							<h2 class="side-widget-title">Compensation</h2>
							<div class="widget-text padd-0">
								<ul>
									<li><span class="custom-checkbox"> <input
											type="checkbox" id="1"> <label for="1"></label>
									</span> Under $10,000 <span class="pull-right">102</span></li>
									<li><span class="custom-checkbox"> <input
											type="checkbox" id="2"> <label for="2"></label>
									</span> $10,000 - $15,000 <span class="pull-right">78</span></li>
									<li><span class="custom-checkbox"> <input
											type="checkbox" id="3"> <label for="3"></label>
									</span> $15,000 - $20,000 <span class="pull-right">12</span></li>
									<li><span class="custom-checkbox"> <input
											type="checkbox" id="4"> <label for="4"></label>
									</span> $20,000 - $30,000 <span class="pull-right">85</span></li>
									<li><span class="custom-checkbox"> <input
											type="checkbox" id="5"> <label for="5"></label>
									</span> $30,000 - $40,000 <span class="pull-right">307</span></li>
								</ul>
							</div>
						</div>

						<div class="side-widget">
							<h2 class="side-widget-title">
								<a href="#designation" data-toggle="collapse">Designation<i
									class="pull-right fa fa-angle-double-down" aria-hidden="true"></i></a>
							</h2>
							<div class="widget-text padd-0 collapse" id="designation">
								<ul>
									<li><span class="custom-checkbox"> <input
											type="checkbox" id="1"> <label for="1"></label>
									</span> Logo Designer <span class="pull-right">102</span></li>

									<li><span class="custom-checkbox"> <input
											type="checkbox" id="2"> <label for="2"></label>
									</span> Banner Developer <span class="pull-right">78</span></li>

									<li><span class="custom-checkbox"> <input
											type="checkbox" id="3"> <label for="3"></label>
									</span> UX/UI Designer <span class="pull-right">12</span></li>

									<li><span class="custom-checkbox"> <input
											type="checkbox" id="4"> <label for="4"></label>
									</span> Graphic Designer <span class="pull-right">85</span></li>

								</ul>
							</div>
						</div>

						<div class="side-widget">
							<h2 class="side-widget-title">
								<a href="#job-location" data-toggle="collapse">Location<i
									class="pull-right fa fa-angle-double-down" aria-hidden="true"></i></a>
							</h2>
							<div class="widget-text padd-0 collapse" id="job-location">
								<ul>
									<li><span class="custom-checkbox"> <input
											type="checkbox" id="1"> <label for="1"></label>
									</span> District 1 <span class="pull-right">102</span></li>

									<li><span class="custom-checkbox"> <input
											type="checkbox" id="2"> <label for="2"></label>
									</span> District 2 <span class="pull-right">78</span></li>

									<li><span class="custom-checkbox"> <input
											type="checkbox" id="3"> <label for="3"></label>
									</span> District 3 <span class="pull-right">12</span></li>

									<li><span class="custom-checkbox"> <input
											type="checkbox" id="4"> <label for="4"></label>
									</span> District 4 <span class="pull-right">85</span></li>

									<li><span class="custom-checkbox"> <input
											type="checkbox" id="5"> <label for="5"></label>
									</span> District 5 <span class="pull-right">307</span></li>

									<li><span class="custom-checkbox"> <input
											type="checkbox" id="6"> <label for="6"></label>
									</span> District 12 <span class="pull-right">256</span></li>

								</ul>
							</div>
						</div>


					</div>
				</div>
				<!-- Sidebar End -->
				<div class="col-md-9 col-sm-12">
					<div class="full-card">

						<div class="card-header">
							<div class="row mrg-0">
								<div class="col-md-4 col-sm-4">
									<select class="selectpicker form-control" multiple
										title="Job Type">
										<option>Full Time</option>
										<option>Part Time</option>
										<option>Freelancer</option>
										<option>Internship</option>
									</select>
								</div>
								<div class="col-md-4 col-sm-4 small-padd">
									<select class="selectpicker form-control" multiple
										title="All Categories">
										<option>Teacher Jobs</option>
										<option>Consultant Jobs</option>
										<option>IT Jobs</option>
										<option>Sales Jobs</option>
										<option>Graphic Designer Jobs</option>
									</select>
								</div>
								<div class="col-md-4 col-sm-4">
									<ol class="breadcrumb pull-right">
										<li><a href="#"><i class="fa fa-home"></i></a></li>
										<li class="active">Jobs</li>
									</ol>
								</div>
							</div>
						</div>

						<div class="card-body">

							<article class="advance-search-job">
								<div class="row no-mrg">
									<div class="col-md-6 col-sm-6">
										<a href="new-job-detail.html" title="job Detail">
											<div class="advance-search-img-box">
												<img
													src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg"
													class="img-responsive" alt="">
											</div>
										</a>
										<div class="advance-search-caption">
											<a href="new-job-detail.html" title="Job Dtail"><h4>Product
													Designer</h4></a> <span>Google Ltd</span>
										</div>
									</div>
									<div class="col-md-4 col-sm-4">
										<div class="advance-search-job-locat">
											<p>
												<i class="fa fa-map-marker"></i>NL University
											</p>
										</div>
									</div>
									<div class="col-md-2 col-sm-2">
										<a href="javascript:void(0)" data-toggle="modal"
											data-target="#apply-job" class="btn advance-search"
											title="apply">Apply</a>
									</div>
								</div>
								<span class="tg-themetag tg-featuretag">Ultimate</span>
							</article>

							<article class="advance-search-job">
								<div class="row no-mrg">
									<div class="col-md-6 col-sm-6">
										<a href="new-job-detail.html" title="job Detail">
											<div class="advance-search-img-box">
												<img
													src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg"
													class="img-responsive" alt="">
											</div>
										</a>
										<div class="advance-search-caption">
											<a href="new-job-detail.html" title="Job Dtail"><h4>Product
													Designer</h4></a> <span>Google Ltd</span>
										</div>
									</div>
									<div class="col-md-4 col-sm-4">
										<div class="advance-search-job-locat">
											<p>
												<i class="fa fa-map-marker"></i>NL University
											</p>
										</div>
									</div>
									<div class="col-md-2 col-sm-2">
										<a href="javascript:void(0)" data-toggle="modal"
											data-target="#apply-job" class="btn advance-search"
											title="apply">Apply</a>
									</div>
								</div>
								<span class="tg-themetag tg-featuretag">Ultimate</span>
							</article>

							<article class="advance-search-job">
								<div class="row no-mrg">
									<div class="col-md-6 col-sm-6">
										<a href="new-job-detail.html" title="job Detail">
											<div class="advance-search-img-box">
												<img
													src="${pageContext.request.contextPath}/resources/assets/img/com-7.jpg"
													class="img-responsive" alt="">
											</div>
										</a>
										<div class="advance-search-caption">
											<a href="new-job-detail.html" title="Job Dtail"><h4>Database
													Designer</h4></a> <span>Twitter Ltd</span>
										</div>
									</div>
									<div class="col-md-4 col-sm-4">
										<div class="advance-search-job-locat">
											<p>
												<i class="fa fa-map-marker"></i>QBL Park, C40
											</p>
										</div>
									</div>
									<div class="col-md-2 col-sm-2">
										<a href="#" class="btn applied advance-search" title="applied"><i
											class="fa fa-check" aria-hidden="true"></i>Applied</a>
									</div>
								</div>
								<span class="tg-themetag tg-featuretag">Premium</span>
							</article>

							<article class="advance-search-job">
								<div class="row no-mrg">
									<div class="col-md-6 col-sm-6">
										<a href="new-job-detail.html" title="job Detail">
											<div class="advance-search-img-box">
												<img
													src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg"
													class="img-responsive" alt="">
											</div>
										</a>
										<div class="advance-search-caption">
											<a href="new-job-detail.html" title="Job Dtail"><h4>Product
													Designer</h4></a> <span>Google Ltd</span>
										</div>
									</div>
									<div class="col-md-4 col-sm-4">
										<div class="advance-search-job-locat">
											<p>
												<i class="fa fa-map-marker"></i>NL University
											</p>
										</div>
									</div>
									<div class="col-md-2 col-sm-2">
										<a href="javascript:void(0)" data-toggle="modal"
											data-target="#apply-job" class="btn advance-search"
											title="apply">Apply</a>
									</div>
								</div>
								<span class="tg-themetag tg-featuretag">Ultimate</span>
							</article>

							<article class="advance-search-job">
								<div class="row no-mrg">
									<div class="col-md-6 col-sm-6">
										<a href="new-job-detail.html" title="job Detail">
											<div class="advance-search-img-box">
												<img
													src="${pageContext.request.contextPath}/resources/assets/img/com-5.jpg"
													class="img-responsive" alt="">
											</div>
										</a>
										<div class="advance-search-caption">
											<a href="new-job-detail.html" title="Job Dtail"><h4>Human
													Resource</h4></a> <span>Skype Ltd</span>
										</div>
									</div>
									<div class="col-md-4 col-sm-4">
										<div class="advance-search-job-locat">
											<p>
												<i class="fa fa-map-marker"></i>QBL Park, C40
											</p>
										</div>
									</div>
									<div class="col-md-2 col-sm-2">
										<a href="#" class="btn applied advance-search" title="applied"><i
											class="fa fa-check" aria-hidden="true"></i>Applied</a>
									</div>
								</div>
							</article>

							<article class="advance-search-job">
								<div class="row no-mrg">
									<div class="col-md-6 col-sm-6">
										<a href="new-job-detail.html" title="job Detail">
											<div class="advance-search-img-box">
												<img
													src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg"
													class="img-responsive" alt="">
											</div>
										</a>
										<div class="advance-search-caption">
											<a href="new-job-detail.html" title="Job Dtail"><h4>Product
													Designer</h4></a> <span>Google Ltd</span>
										</div>
									</div>
									<div class="col-md-4 col-sm-4">
										<div class="advance-search-job-locat">
											<p>
												<i class="fa fa-map-marker"></i>NL University
											</p>
										</div>
									</div>
									<div class="col-md-2 col-sm-2">
										<a href="javascript:void(0)" data-toggle="modal"
											data-target="#apply-job" class="btn advance-search"
											title="apply">Apply</a>
									</div>
								</div>
								<span class="tg-themetag tg-featuretag">Ultimate</span>
							</article>

							<article class="advance-search-job">
								<div class="row no-mrg">
									<div class="col-md-6 col-sm-6">
										<a href="new-job-detail.html" title="job Detail">
											<div class="advance-search-img-box">
												<img
													src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg"
													class="img-responsive" alt="">
											</div>
										</a>
										<div class="advance-search-caption">
											<a href="new-job-detail.html" title="Job Dtail"><h4>Product
													Designer</h4></a> <span>Google Ltd</span>
										</div>
									</div>
									<div class="col-md-4 col-sm-4">
										<div class="advance-search-job-locat">
											<p>
												<i class="fa fa-map-marker"></i>NL University
											</p>
										</div>
									</div>
									<div class="col-md-2 col-sm-2">
										<a href="javascript:void(0)" data-toggle="modal"
											data-target="#apply-job" class="btn advance-search"
											title="apply">Apply</a>
									</div>
								</div>
								<span class="tg-themetag tg-featuretag">Ultimate</span>
							</article>

							<article class="advance-search-job">
								<div class="row no-mrg">
									<div class="col-md-6 col-sm-6">
										<a href="new-job-detail.html" title="job Detail">
											<div class="advance-search-img-box">
												<img
													src="${pageContext.request.contextPath}/resources/assets/img/com-4.jpg"
													class="img-responsive" alt="">
											</div>
										</a>
										<div class="advance-search-caption">
											<a href="new-job-detail.html" title="Job Dtail"><h4>Product
													Designer</h4></a> <span>Microsoft Ltd</span>
										</div>
									</div>
									<div class="col-md-4 col-sm-4">
										<div class="advance-search-job-locat">
											<p>
												<i class="fa fa-map-marker"></i>QBL Park, C40
											</p>
										</div>
									</div>
									<div class="col-md-2 col-sm-2">
										<a href="#" class="btn applied advance-search" title="applied"><i
											class="fa fa-check" aria-hidden="true"></i>Applied</a>
									</div>
								</div>
							</article>

							<article class="advance-search-job">
								<div class="row no-mrg">
									<div class="col-md-6 col-sm-6">
										<a href="new-job-detail.html" title="job Detail">
											<div class="advance-search-img-box">
												<img
													src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg"
													class="img-responsive" alt="">
											</div>
										</a>
										<div class="advance-search-caption">
											<a href="new-job-detail.html" title="Job Dtail"><h4>Product
													Designer</h4></a> <span>Google Ltd</span>
										</div>
									</div>
									<div class="col-md-4 col-sm-4">
										<div class="advance-search-job-locat">
											<p>
												<i class="fa fa-map-marker"></i>NL University
											</p>
										</div>
									</div>
									<div class="col-md-2 col-sm-2">
										<a href="javascript:void(0)" data-toggle="modal"
											data-target="#apply-job" class="btn advance-search"
											title="apply">Apply</a>
									</div>
								</div>
								<span class="tg-themetag tg-featuretag">Ultimate</span>
							</article>

							<article class="advance-search-job">
								<div class="row no-mrg">
									<div class="col-md-6 col-sm-6">
										<a href="new-job-detail.html" title="job Detail">
											<div class="advance-search-img-box">
												<img
													src="${pageContext.request.contextPath}/resources/assets/img/com-1.jpg"
													class="img-responsive" alt="">
											</div>
										</a>
										<div class="advance-search-caption">
											<a href="new-job-detail.html" title="Job Dtail"><h4>Web
													Designer</h4></a> <span>Autodesk Ltd</span>
										</div>
									</div>
									<div class="col-md-4 col-sm-4">
										<div class="advance-search-job-locat">
											<p>
												<i class="fa fa-map-marker"></i>QBL Park, C40
											</p>
										</div>
									</div>
									<div class="col-md-2 col-sm-2">
										<a href="#" class="btn applied advance-search" title="applied"><i
											class="fa fa-check" aria-hidden="true"></i>Applied</a>
									</div>
								</div>
							</article>

						</div>
					</div>

					<div class="row">
						<ul class="pagination">
							<li><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#"><i class="fa fa-ellipsis-h"></i></a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
					</div>

					<!-- Ad banner -->
					<div class="row">
						<div class="ad-banner">
							<img
								src="${pageContext.request.contextPath}/resources/http://via.placeholder.com/728x90"
								class="img-responsive" alt="">
						</div>
					</div>
				</div>



			</div>
		</section>
		<!-- ========== Begin: Brows job Category End ===============  -->

		<!-- Footer Section Start -->
		<footer class="footer">
			<tiles:insertAttribute name="footer"></tiles:insertAttribute>
		</footer>
		<div class="clearfix"></div>
		<!-- Footer Section End -->


		<!-- End Apply Form -->
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

		<!-- Custom Js -->
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

<!-- search-new41:42-->
</html>