<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<jsp:useBean id="accessHelper" class="customutil.AccessHelper" />
<tiles:importAttribute name="stylesheets"/>
<tiles:importAttribute name="javascripts"/>
<html lang="en">

<!-- job-apply-detail41:48-->
<head>
<!-- Basic Page Needs
	================================================== -->
<title>Job Stock - Responsive Job Portal Bootstrap Template</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<!-- CSS -->
	<c:forEach var="css" items="${stylesheets}">
       <link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
    </c:forEach>


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
		<section class="inner-header-page">
			<div class="container">

				<div class="col-md-8">
					<div class="left-side-container">
						<div class="freelance-image">
							<a href="company-detail.html"><img
								src='data:image/jpge;base64,<c:out value="${job.img}"></c:out>'
								class="img-responsive" alt=""></a>
						</div>
						<div class="header-details">
							<h4>${job.jobTitle}</h4>
							<p>${job.ofAccount.fullname}</p>
							<ul>
								<li><a href="#"><i class="fa fa-user"></i> ${job.soluongtuyen} Position</a></li>
								<li><i class="fa fa-map-marker"></i> ${job.city}</li>
								<li><div class="verified-action">Verified</div></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-md-4 bl-1 br-gary">
					<div class="right-side-detail">
						<ul>
							<li><span class="detail-info">Trình độ</span>${job.education}</li>
							<li><span class="detail-info">Kinh nghiệm</span>${job.exp}</li>
							<li><span class="detail-info">Ngoại ngữ</span>${job.language}</li>
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
							<h4>
								<span>${job.jobTitle}</span> <img src="/img/edit.png" alt="">
							</h4>
							<a href="company-detail.html" class="cl-success"><span><i
									class="fa fa-building"></i>Google</span></a> <span><i
								class="fa fa-map-marker"></i>${job.city}</span>
						</div>

						<div class="apply-job-detail">
							<p>${job.jobDescription}</p>
						</div>

						<div class="apply-job-detail">
							<h5>chuyên môn</h5>
							<ul class="skills">
								<li>${job.major}</li>
								<!-- <li>Html5</li>
								<li>Photoshop</li>
								<li>Wordpress</li>
								<li>PHP</li>
								<li>Java Script</li>
								 -->
							</ul>
						</div>

						<div class="apply-job-detail">
							<h5>Yêu cầu</h5>
							<ul class="job-requirements">
								<!-- <li><span>Availability</span> Hourly</li> -->
								<li><span>Trình độ học vấn</span>${job.education}</li>
								<!-- 	<li><span>Age</span> 25+</li> -->
								<li><span>Kinh nghiệm</span> ${job.exp}</li>
								<li><span>Ngoại ngữ</span> ${job.language}</li>
							</ul>
						</div>

						<a href="#" class="btn btn-success">Apply Ngay</a>
						<c:if test="${not empty sessionScope.currentAccount && sessionScope.currentAccount.role == 2}">
						<c:if test="${kiemtra==false}">
						<button id="save" onclick="save()" class="btn btn-success"
							value="lưu">Lưu</button></c:if>
							<c:if test="${kiemtra==true}">
						<button id="save" style="background:red" onclick="save()" class="btn btn-success"
							value="Đã lưu">Đã lưu</button></c:if>
</c:if>
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
								<c:if test="${not empty joblienquan}">
									<c:forEach var="listjob1" items="${joblienquan}">
										<div style="padding-top: 8px" class="freelance-box">
											<div class="popular-jobs-container">
												<div style="padding-top: 0px" class="popular-jobs-box">
													<div style="padding-top: 7px" class="popular-jobs-box">
														<div style="padding-top: 0px"
															class="popular-jobs-box-detail">
															<img style="border-radius: 100%; margin: auto"
																src='data:image/jpge;base64,${listjob1.img}' width=60px
																height=60px class="img-job-box" alt="">
									
															<span class="desination">${listjob1.jobTitle}</span>
														</div>
													</div>
													<div class="popular-jobs-box-extra">
														<ul>
															<li>${listjob1.major}</li>
															
															<li class="more-skill bg-primary">+${listjob1.soluongtuyen}</li>
														</ul>
														<p>${listjob1.major}</p>
													</div>
												</div>
												<a
													href="${pageContext.request.contextPath}/job-detail?id_job=${listjob1.id}"
													class="btn btn-popular-jobs bt-1">View Detail</a>
											</div>
										</div>
									</c:forEach>
								</c:if>
								<!-- Single Freelancer & Premium job -->
							</div>
						</div>

					</div>
				</div>

				<!-- Sidebar Start-->
				<div class="col-md-4 col-sm-4">

					<!-- Job Detail -->
					<c:if test="${not empty job1}">
							<div class="sidebar-container">

								<div class="sidebar-box">
									<div class="sidebar-inner-box">
										<div class="sidebar-box-thumb">
											<img src='data:image/jpge;base64,${job1.img}'  class="img-responsive"  alt=""  />
										</div>
										<div class="sidebar-box-detail">
											<h4>Google Info</h4>
											<span class="desination">${job1.jobTitle}</span>
										</div>
									</div>
									<div class="sidebar-box-extra">
										<ul>
											<li>${job1.major}</li>
																					</ul>
										<ul class="status-detail">
											<li class="br-1"><strong>${job1.city}</strong>Location</li>
											<li class="br-1"><strong>${job1.view}</strong>View</li>
											<li><strong>${job1.soluongtuyen}</strong>Position</li>
										</ul>
									</div>
								</div>
								<a href="#" class="btn btn-sidebar bt-1 bg-success">Apply
									For This</a>
							</div>
					</c:if>
					<!-- Share This Job -->
					<div class="sidebar-wrapper">
						<div class="sidebar-box-header bb-1">
							<h4>Share This Job</h4>
						</div>

						<ul class="social-share">
							<li><a href="#" class="fb-share"><i
									class="fa fa-facebook"></i></a></li>
							<li><a href="#" class="tw-share"><i
									class="fa fa-twitter"></i></a></li>
							<li><a href="#" class="gp-share"><i
									class="fa fa-google-plus"></i></a></li>
							<li><a href="#" class="in-share"><i
									class="fa fa-instagram"></i></a></li>
							<li><a href="#" class="li-share"><i
									class="fa fa-linkedin"></i></a></li>
							<li><a href="#" class="be-share"><i
									class="fa fa-behance"></i></a></li>
						</ul>
					</div>

				</div>
				<!-- End Sidebar -->

			</div>
		</section>
		<!-- Job Detail End -->
		
		<!-- Table Start  -->
		<c:if test="${accessHelper.accessManagerApply(sessionScope.currentAccount,job)}">
			<tiles:insertAttribute name="subscribers" />
		</c:if>
		


		<!-- Table End  -->

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
			var request;
			function save() {
				var a = document.getElementById('save').value;
				if (a.length > 5) {
					var url = '<c:url value="/deletesavejob?id_job="/>${job.id}';
				} else {
					var url = '<c:url value="/savejob?id_job="/>${job.id}';
				}
				if (window.XMLHttpRequest) {
					request = new XMLHttpRequest();
				} else if (window.ActiveXObject) {
					request = new ActiveXObject("Microsoft.XMLHTTP");
				}

				try {
					request.onreadystatechange = getInfo;
					request.open("GET", url, true);
					request.send();
				} catch (e) {
					alert("Unable to connect to server");
				}
			}

			function getInfo() {
				if (request.readyState == 4 || request.readyState == 200) {
					var val = request.responseText;
					if (val.length > 2) {
						var a = document.getElementById('save').value;
						if (a.length > 5) {
							document.getElementById('save').innerHTML = val;
							document.getElementById('save').style.background = '#11b719'
							document.getElementById('save').value = val;
						} else {
							document.getElementById('save').innerHTML = val;
							document.getElementById('save').style.background = 'red'
							document.getElementById('save').value = val;
						}
					} else {
						confirm("Vui lòng đăng nhập");
					}

				}
			}
		</script>
	</div>
</body>

<!-- job-apply-detail41:48-->
</html>