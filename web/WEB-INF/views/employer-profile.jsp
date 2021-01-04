<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:importAttribute name="stylesheets" />
<tiles:importAttribute name="javascripts" />
<!doctype html>
<html lang="en">

<!-- employer-profile41:42-->
<head>
<!-- Basic Page Needs
	================================================== -->
<title>Job Stock - Responsive Job Portal Bootstrap Template</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS
	================================================== -->
<!-- CSS -->
<c:forEach var="css" items="${stylesheets}">
	<link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
</c:forEach>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/plugins/js/jquery.min.js"></script>
</head>
<body>
	<c:url value="/employer-profile/update" var="update" />
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
			style="background-image: url('data:image/png;base64,${employer.backgroundBase64}');">
			<div class="container">
				<h1></h1>
			</div>
		</section>
		<div class="clearfix"></div>
		<!-- Title Header End -->

		<!-- Candidate Profile Start -->
		<section class="detail-desc advance-detail-pr gray-bg">
			<div class="container white-shadow">
				<div class="row">
					<div class="detail-pic">
						<img src="data:image/png;base64,${employer.imageBase64}"
							class="img" alt="" /><a href="#" class="detail-edit"
							title="edit"></a>
					</div>
					<div class="detail-status">
						<span id="span-hire">Đang tuyển dụng</span>
					</div>
				</div>

				<div class="row bottom-mrg">
					<div class="col-md-12 col-sm-12">
						<div class="advance-detail detail-desc-caption">
							<h4>${employer.name}</h4>
							<span class="designation">${employer.major}</span>
							<ul>
								<li><strong class="j-view">${employer.soluongbaidang}</strong>Công
									việc đã đăng</li>
								<li><strong class="j-applied">570</strong>Đã tuyển dụng</li>
								<li><strong class="j-shared rate-custom">${employer.starAverage}
										<i class="fa fa-star"></i>
								</strong>Đánh Giá</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="row no-padd">
					<div class="detail pannel-footer">
						<div class="col-md-5 col-sm-5">
							<ul class="detail-footer-social">
								<li><a title="Trang Facebook" href="#"><i
										class="fa fa-facebook"></i></a></li>
								<li><a title="Trang Twitter" href="#"><i
										class="fa fa-twitter"></i></a></li>
								<li><a title="Trang Web" href="#"><i
										class="fa fa-globe"></i></i></a></li>
							</ul>
						</div>
						<div class="col-md-7 col-sm-7">
							<div class="detail-pannel-footer-btn pull-right">
								<a href="javascript:void(0)" data-toggle="modal"
									data-target="#apply-job" class="footer-btn grn-btn"
									style="display: none;" title="">Chỉnh Sửa</a><a href="#"
									class="footer-btn blu-btn" style="display: none;" title="">Save
									Draft</a>
							</div>
						</div>
					</div>
				</div>

			</div>
		</section>

		<section class="full-detail-description full-detail gray-bg">
			<div class="container">
				<div class="col-md-12 col-sm-12">
					<div class="full-card">
						<div class="deatil-tab-employ tool-tab">
							<ul class="nav simple nav-tabs" id="simple-design-tab">
								<li class="active"><a href="#about">Thông Tin Công Ty</a></li>
								<li><a href="#address">Địa Chỉ</a></li>
								<li><a href="#post-job">Công Việc Đã Đăng</a></li>
								<li><a style="display: none;" href="#friends">Friends</a></li>
								<li><a href="#rate">Đánh Giá <span class="info-bar">5</span></a></li>
								<li><a href="#settings">Cài Đặt</a></li>
								<li><a class="report-tabname" href="#report"><i class="fa fa-exclamation-triangle"></i> Báo Cáo</a></li>
							</ul>
							<!-- Start All Sec -->
							<div class="tab-content">
								<!-- Start About Sec -->
								<div id="about" class="tab-pane fade in active">
									<h3>About Company ${employer.name}</h3>
									${employer.about}
								</div>
								<!-- End About Sec -->

								<!-- Start Address Sec -->
								<div id="address" class="tab-pane fade">
									<h3>Thông tin liên hệ</h3>
									<ul class="job-detail-des">
										<li><span>Tên công ty:</span>${employer.name}</li>
										<li><span>Tỉnh / Thành Phố:</span>${employer.address.province}</li>
										<li><span>Quận / Huyện:</span>${employer.address.district}</li>
										<li><span>Phường / Xã:</span>${employer.address.ward}</li> 
										<li><span>Địa chỉ:</span>${employer.address.detailAddress}</li>
										<li><span>Điện Thoại:</span>+84 ${employer.phone}</li>
										<li><span>Email:</span>${employer.email}</li>
									</ul>
								</div>
								<!-- End Address Sec -->

								<!-- Start Job List -->
								<tiles:insertAttribute name="job-list"/>
								<!-- End Job List -->
								

								<!-- Start Friend List -->
								<div id="friends" class="tab-pane fade">
									<div class="row">
										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status pending">Pending</div>
												<div class="cndt-caption">
													<div class="cndt-pic">
														<img src="assets/img/can-1.png" class="img-responsive"
															alt="">
													</div>
													<h4>Charles Hopman</h4>
													<span>Web designer</span>
													<p>Our analysis team at Megriosft use end to end
														innovation proces</p>
												</div>
												<a href="#" title="" class="cndt-profile-btn">View
													Profile</a>
											</div>
										</div>

										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status available">Available</div>
												<div class="cndt-caption">
													<div class="cndt-pic">
														<img src="assets/img/can-2.png" class="img-responsive"
															alt="">
													</div>
													<h4>Ethan Marion</h4>
													<span>IOS designer</span>
													<p>Our analysis team at Megriosft use end to end
														innovation proces</p>
												</div>
												<a href="#" title="" class="cndt-profile-btn">View
													Profile</a>
											</div>
										</div>

										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status pending">Pending</div>
												<div class="cndt-caption">
													<div class="cndt-pic">
														<img src="assets/img/can-3.png" class="img-responsive"
															alt="">
													</div>
													<h4>Zara Clow</h4>
													<span>UI/UX designer</span>
													<p>Our analysis team at Megriosft use end to end
														innovation proces</p>
												</div>
												<a href="#" title="" class="cndt-profile-btn">View
													Profile</a>
											</div>
										</div>

										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status pending">Pending</div>
												<div class="cndt-caption">
													<div class="cndt-pic">
														<img src="assets/img/can-4.png" class="img-responsive"
															alt="">
													</div>
													<h4>Henry Crooks</h4>
													<span>PHP Developer</span>
													<p>Our analysis team at Megriosft use end to end
														innovation proces</p>
												</div>
												<a href="#" title="" class="cndt-profile-btn">View
													Profile</a>
											</div>
										</div>

										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status available">Available</div>
												<div class="cndt-caption">
													<div class="cndt-pic">
														<img src="assets/img/can-2.png" class="img-responsive"
															alt="">
													</div>
													<h4>Joseph Macfarlan</h4>
													<span>App Developer</span>
													<p>Our analysis team at Megriosft use end to end
														innovation proces</p>
												</div>
												<a href="#" title="" class="cndt-profile-btn">View
													Profile</a>
											</div>
										</div>

										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status pending">Pending</div>
												<div class="cndt-caption">
													<div class="cndt-pic">
														<img src="assets/img/can-1.png" class="img-responsive"
															alt="">
													</div>
													<h4>Zane Joyner</h4>
													<span>Html Expert</span>
													<p>Our analysis team at Megriosft use end to end
														innovation proces</p>
												</div>
												<a href="#" title="" class="cndt-profile-btn">View
													Profile</a>
											</div>
										</div>

										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status pending">Pending</div>
												<div class="cndt-caption">
													<div class="cndt-pic">
														<img src="assets/img/can-3.png" class="img-responsive"
															alt="">
													</div>
													<h4>Anna Hoysted</h4>
													<span>UI/UX Designer</span>
													<p>Our analysis team at Megriosft use end to end
														innovation proces</p>
												</div>
												<a href="#" title="" class="cndt-profile-btn">View
													Profile</a>
											</div>
										</div>

										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status available">Available</div>
												<div class="cndt-caption">
													<div class="cndt-pic">
														<img src="assets/img/can-4.png" class="img-responsive"
															alt="">
													</div>
													<h4>Spencer Birdseye</h4>
													<span>SEO Expert</span>
													<p>Our analysis team at Megriosft use end to end
														innovation proces</p>
												</div>
												<a href="#" title="" class="cndt-profile-btn">View
													Profile</a>
											</div>
										</div>

										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status pending">Pending</div>
												<div class="cndt-caption">
													<div class="cndt-pic">
														<img src="assets/img/can-1.png" class="img-responsive"
															alt="">
													</div>
													<h4>Eden Macaulay</h4>
													<span>Web designer</span>
													<p>Our analysis team at Megriosft use end to end
														innovation proces</p>
												</div>
												<a href="#" title="" class="cndt-profile-btn">View
													Profile</a>
											</div>
										</div>

										<div class="row">
											<ul class="pagination">
												<li><a href="#">«</a></li>
												<li class="active"><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#"><i class="fa fa-ellipsis-h"></i></a></li>
												<li><a href="#">»</a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- End Friend List -->

								<!-- Start Message -->
								<tiles:insertAttribute name="evaluate" />
								<!-- End Message -->
								<!-- Start Settings -->
								<tiles:insertAttribute name="settings" />
								<!-- End Settings -->
								
								<!-- Start Report -->
<div id="report" class="tab-pane fade">
	<div class="row no-mrg">
		<h3 style="margin-bottom: 30px;">Báo cáo</h3>
		<div class="edit-pro">
			<form>
				<input class="form-control" id="input-title" type="text" placeholder="Tiêu đề báo cáo">
				<textarea class="form-control" placeholder="nội dung chi tiết báo cáo"></textarea>
				<div class="row" style="margin-bottom: 45px;">
					<div class="col-sm-2">
						<div class="image-upload-wrap" id="image-upload-wrap1">
						<input class="file-upload-input" id="file-upload-input1" type='file' onchange="readURL(this,'image1','image-upload-wrap1','file-upload-content1','image-title1');" accept="image/*" />
						<div class="drag-text">
						  <h6>Drag and drop a file or select add Image</h6>
						</div>
					  </div>
					  <div class="file-upload-content" id="file-upload-content1">
						<img class="file-upload-image"  id="image1" src="#" alt="your image" />
						<div class="image-title-wrap">
						  <button type="button" onclick="removeUpload('file-upload-input1','image-upload-wrap1','file-upload-content1')" class="remove-image">Remove <span id="image-title1" class="image-title">Uploaded Image</span></button>
						</div>
					  </div>
					</div>
					<div class="col-sm-2">
						<div class="image-upload-wrap" id="image-upload-wrap2">
						<input class="file-upload-input" id="file-upload-input2" type='file' onchange="readURL(this,'image2','image-upload-wrap2','file-upload-content2','image-title2');" accept="image/*" />
						<div class="drag-text">
						  <h6>Drag and drop a file or select add Image</h6>
						</div>
					  </div>
					  <div class="file-upload-content" id="file-upload-content2">
						<img class="file-upload-image" id="image2" src="#" alt="your image" />
						<div class="image-title-wrap">
						  <button type="button" onclick="removeUpload('file-upload-input2','image-upload-wrap2','file-upload-content2')" class="remove-image">Remove <span id="image-title2" class="image-title">Uploaded Image</span></button>
						</div>
					  </div>
					</div>
					<div class="col-sm-2">
						<div class="image-upload-wrap" id="image-upload-wrap3">
						<input class="file-upload-input" id="file-upload-input3" type='file' onchange="readURL(this,'image3','image-upload-wrap3','file-upload-content3','image-title3');" accept="image/*" />
						<div class="drag-text">
						  <h6>Drag and drop a file or select add Image</h6>
						</div>
					  </div>
					  <div class="file-upload-content" id="file-upload-content3">
						<img class="file-upload-image" id="image3" src="#" alt="your image" />
						<div class="image-title-wrap">
						  <button type="button" onclick="removeUpload('file-upload-input3','image-upload-wrap3','file-upload-content3')" class="remove-image">Remove <span id="image-title3" class="image-title">Uploaded Image</span></button>
						</div>
					  </div>
					</div>
				</div>
					<button type="button" class="update-btn btn-report" data-toggle="modal" data-target="#modal-report" >Gửi</button>
			</form>
		</div>
	</div>
</div>
<div class="modal fade" id="modal-report" role="dialog">
	<div class="modal-dialog modal-lg">
	  <div class="modal-content">
		<div class="modal-header">
		  <button type="button" class="close" data-dismiss="modal">&times;</button>
		  <h4 class="modal-title title-modal-report">Thành Công</h4>
		</div>
		<div class="modal-body">
			<img id="img-success-report" src="assets/img/success.png" alt="success.png">
		  <p>Báo cáo của bạn đã được báo cáo thành công gửi thành công</p>
		</div>
		<div class="modal-footer">
		  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
	  </div>
	</div>
  </div>
<!-- End Report -->
							</div>
							<!-- Start All Sec -->
						</div>
					</div>
				</div>
			</div>
		</section>
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
		<c:forEach var="script" items="${javascripts}">
			<script src="<c:url value="${script}"/>"></script>
		</c:forEach>
		
		<script type="text/javascript">
	
	function updateAddress(){
		$(document).ready(function(){
			$("select[name='major']").val('${employer.major}');
			$("input[name='ready']").prop('checked', ${employer.ready});
			$("input[name='ready']").val('${employer.ready}').change();
			
			
		});
		
	}
	
</script>
	</div>
</body>

<!-- employer-profile41:42-->
</html>