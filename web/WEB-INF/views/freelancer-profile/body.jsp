<%@ page language="java" pageEncoding="UTF-8"%>

<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

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
					src="${pageContext.request.contextPath}/resources/assets/img/logo.png"
					class="logo logo-scrolled" alt=""></a>
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
		style="background-image:url(${pageContext.request.contextPath}/resources/assets/img/banner-10.jpg);">
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
					<img
						src="${pageContext.request.contextPath}/resources/assets/img/rong.png"
						class="img" alt="" /><a href="#" class="detail-edit" title="edit"></a>
				</div>
				<div class="detail-status">
					<span id="span-hire-freelancer">Đang tuyển dụng</span>
				</div>
			</div>

			<div class="row bottom-mrg">
				<div class="col-md-12 col-sm-12">
					<div class="advance-detail detail-desc-caption">
						<h4>Nguyễn Văn A</h4>
						<span class="designation">Design Logo</span>
						<ul>
							<li><strong class="j-view">742</strong>Công việc đã nhận</li>
							<li><strong class="j-applied">570</strong>Công Việc Hoàn
								Thành</li>
							<li><strong class="j-shared rate-custom">4,5 <i
									class="fa fa-star"></i></strong>Đánh Giá</li>
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
							<li><a title="Trang Web" href="#"><i class="fa fa-globe"></i></i></a></li>
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
							<li class="active"><a href="#about">Thông Tin Cá Nhân</a></li>
							<li><a href="#address">Địa Chỉ</a></li>
							<li><a href="#post-job">Công Việc Đã Hoàn Thành</a></li>
							<li><a style="display: none;" href="#friends">Friends</a></li>
							<li><a href="#rate">Đánh Giá <span class="info-bar">5</span></a></li>
							<li><a href="#settings">Cài Đặt</a></li>
						</ul>
						<!-- Start All Sec -->
						<div class="tab-content">
							<!-- Start About Sec -->
							<div id="about" class="tab-pane fade in active">
								<h3>About Adam Declizer</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Nulla interdum sed diam ac fermentum. Mauris nec pellentesque
									neque. Cras nec diam euismod, congue sapien eu, fermentum
									libero. Vestibulum quis sem.</p>
							</div>
							<!-- End About Sec -->

							<!-- Start Address Sec -->
							<div id="address" class="tab-pane fade">
								<h3>Thông tin liên hệ</h3>
								<ul class="job-detail-des">
									<li><span>Tỉnh:</span>Đại học Nông Lâm</li>
									<li><span>Tỉnh / Thành Phố:</span>Hồ Chí Minh</li>
									<li><span>Quận / Huyện:</span>Thủ Đức</li>
									<li><span>Phường / Xã:</span>Linh Trung</li>
									<li><span>Điện Thoại:</span>+84 012 345 789</li>
									<li><span>Email:</span>youremail@gmail.com</li>
								</ul>
							</div>
							<!-- End Address Sec -->

							<!-- Start Job List -->
							<div id="post-job" class="tab-pane fade">
								<h3>You have 22 job post</h3>
								<div class="row">
									<article>
										<div class="mng-company">
											<div class="col-md-2 col-sm-2">
												<div class="mng-company-pic">
													<img
														src="${pageContext.request.contextPath}/resources/assets/img/com-1.jpg"
														class="img-responsive" alt="">
												</div>
											</div>

											<div class="col-md-5 col-sm-5">
												<div class="mng-company-name">
													<h4>
														Autodesk <span class="cmp-tagline">(Software
															Company)</span>
													</h4>
													<span class="cmp-time">10 Hour Ago</span>
												</div>
											</div>

											<div class="col-md-4 col-sm-4">
												<div class="mng-company-location">
													<p>
														<i class="fa fa-map-marker"></i> Street #210, Make New
														London
													</p>
												</div>
											</div>

											<div class="col-md-1 col-sm-1">
												<div class="mng-company-action">
													<a href="#"><i class="fa fa-edit"></i></a><a href="#"><i
														class="fa fa-trash-o"></i></a>
												</div>
											</div>

										</div>
										<span class="tg-themetag tg-featuretag">Premium</span>
									</article>

									<article>
										<div class="mng-company">
											<div class="col-md-2 col-sm-2">
												<div class="mng-company-pic">
													<img
														src="${pageContext.request.contextPath}/resources/assets/img/com-2.jpg"
														class="img-responsive" alt="">
												</div>
											</div>

											<div class="col-md-5 col-sm-5">
												<div class="mng-company-name">
													<h4>
														Google <span class="cmp-tagline">(Software Company)</span>
													</h4>
													<span class="cmp-time">10 Hour Ago</span>
												</div>
											</div>

											<div class="col-md-4 col-sm-4">
												<div class="mng-company-location">
													<p>
														<i class="fa fa-map-marker"></i> Street #210, Make New
														London
													</p>
												</div>
											</div>

											<div class="col-md-1 col-sm-1">
												<div class="mng-company-action">
													<a href="#"><i class="fa fa-edit"></i></a><a href="#"><i
														class="fa fa-trash-o"></i></a>
												</div>
											</div>

										</div>
									</article>

									<article>
										<div class="mng-company">
											<div class="col-md-2 col-sm-2">
												<div class="mng-company-pic">
													<img
														src="${pageContext.request.contextPath}/resources/assets/img/com-3.jpg"
														class="img-responsive" alt="">
												</div>
											</div>

											<div class="col-md-5 col-sm-5">
												<div class="mng-company-name">
													<h4>
														Honda <span class="cmp-tagline">(Motor Agency)</span>
													</h4>
													<span class="cmp-time">10 Hour Ago</span>
												</div>
											</div>

											<div class="col-md-4 col-sm-4">
												<div class="mng-company-location">
													<p>
														<i class="fa fa-map-marker"></i> Street #210, Make New
														London
													</p>
												</div>
											</div>

											<div class="col-md-1 col-sm-1">
												<div class="mng-company-action">
													<a href="#"><i class="fa fa-edit"></i></a><a href="#"><i
														class="fa fa-trash-o"></i></a>
												</div>
											</div>

										</div>
									</article>

									<article>
										<div class="mng-company">
											<div class="col-md-2 col-sm-2">
												<div class="mng-company-pic">
													<img
														src="${pageContext.request.contextPath}/resources/assets/img/com-4.jpg"
														class="img-responsive" alt="">
												</div>
											</div>

											<div class="col-md-5 col-sm-5">
												<div class="mng-company-name">
													<h4>
														Microsoft <span class="cmp-tagline">(Software
															Company)</span>
													</h4>
													<span class="cmp-time">10 Hour Ago</span>
												</div>
											</div>

											<div class="col-md-4 col-sm-4">
												<div class="mng-company-location">
													<p>
														<i class="fa fa-map-marker"></i> Street #210, Make New
														London
													</p>
												</div>
											</div>

											<div class="col-md-1 col-sm-1">
												<div class="mng-company-action">
													<a href="#"><i class="fa fa-edit"></i></a><a href="#"><i
														class="fa fa-trash-o"></i></a>
												</div>
											</div>

										</div>
										<span class="tg-themetag tg-featuretag">Premium</span>
									</article>

									<article>
										<div class="mng-company">
											<div class="col-md-2 col-sm-2">
												<div class="mng-company-pic">
													<img
														src="${pageContext.request.contextPath}/resources/assets/img/com-5.jpg"
														class="img-responsive" alt="">
												</div>
											</div>

											<div class="col-md-5 col-sm-5">
												<div class="mng-company-name">
													<h4>
														Skype <span class="cmp-tagline">(Software Company)</span>
													</h4>
													<span class="cmp-time">10 Hour Ago</span>
												</div>
											</div>

											<div class="col-md-4 col-sm-4">
												<div class="mng-company-location">
													<p>
														<i class="fa fa-map-marker"></i> Street #210, Make New
														London
													</p>
												</div>
											</div>

											<div class="col-md-1 col-sm-1">
												<div class="mng-company-action">
													<a href="#"><i class="fa fa-edit"></i></a><a href="#"><i
														class="fa fa-trash-o"></i></a>
												</div>
											</div>

										</div>
									</article>

									<article>
										<div class="mng-company">
											<div class="col-md-2 col-sm-2">
												<div class="mng-company-pic">
													<img
														src="${pageContext.request.contextPath}/resources/assets/img/com-6.jpg"
														class="img-responsive" alt="">
												</div>
											</div>

											<div class="col-md-5 col-sm-5">
												<div class="mng-company-name">
													<h4>
														Virtue <span class="cmp-tagline">(Development
															Company)</span>
													</h4>
													<span class="cmp-time">10 Hour Ago</span>
												</div>
											</div>

											<div class="col-md-4 col-sm-4">
												<div class="mng-company-location">
													<p>
														<i class="fa fa-map-marker"></i> Street #210, Make New
														London
													</p>
												</div>
											</div>

											<div class="col-md-1 col-sm-1">
												<div class="mng-company-action">
													<a href="#"><i class="fa fa-edit"></i></a><a href="#"><i
														class="fa fa-trash-o"></i></a>
												</div>
											</div>

										</div>
									</article>

									<article>
										<div class="mng-company">
											<div class="col-md-2 col-sm-2">
												<div class="mng-company-pic">
													<img
														src="${pageContext.request.contextPath}/resources/assets/img/com-7.jpg"
														class="img-responsive" alt="">
												</div>
											</div>

											<div class="col-md-5 col-sm-5">
												<div class="mng-company-name">
													<h4>
														Twitter <span class="cmp-tagline">(Social Media
															Company)</span>
													</h4>
													<span class="cmp-time">10 Hour Ago</span>
												</div>
											</div>

											<div class="col-md-4 col-sm-4">
												<div class="mng-company-location">
													<p>
														<i class="fa fa-map-marker"></i> Street #210, Make New
														London
													</p>
												</div>
											</div>

											<div class="col-md-1 col-sm-1">
												<div class="mng-company-action">
													<a href="#"><i class="fa fa-edit"></i></a><a href="#"><i
														class="fa fa-trash-o"></i></a>
												</div>
											</div>

										</div>
										<span class="tg-themetag tg-featuretag">Premium</span>
									</article>
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
							<!-- End Job List -->

							<!-- Start Friend List -->
							<div id="friends" class="tab-pane fade">
								<div class="row">
									<div class="col-md-4 col-sm-4">
										<div class="manage-cndt">
											<div class="cndt-status pending">Pending</div>
											<div class="cndt-caption">
												<div class="cndt-pic">
													<img
														src="${pageContext.request.contextPath}/resources/assets/img/can-1.png"
														class="img-responsive" alt="">
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
													<img
														src="${pageContext.request.contextPath}/resources/assets/img/can-2.png"
														class="img-responsive" alt="">
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
													<img
														src="${pageContext.request.contextPath}/resources/assets/img/can-3.png"
														class="img-responsive" alt="">
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
													<img
														src="${pageContext.request.contextPath}/resources/assets/img/can-4.png"
														class="img-responsive" alt="">
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
													<img
														src="${pageContext.request.contextPath}/resources/assets/img/can-2.png"
														class="img-responsive" alt="">
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
													<img
														src="${pageContext.request.contextPath}/resources/assets/img/can-1.png"
														class="img-responsive" alt="">
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
													<img
														src="${pageContext.request.contextPath}/resources/assets/img/can-3.png"
														class="img-responsive" alt="">
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
													<img
														src="${pageContext.request.contextPath}/resources/assets/img/can-4.png"
														class="img-responsive" alt="">
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
													<img
														src="${pageContext.request.contextPath}/resources/assets/img/can-1.png"
														class="img-responsive" alt="">
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

							<tiles:insertAttribute name="message" />

							<!-- End Message -->

							<!-- Start Settings -->
							<div id="settings" class="tab-pane fade">
								<div class="row no-mrg">
									<h3>Chỉnh Sửa Thông Tin</h3>
									<div class="edit-pro">
										<div class="col-md-4 col-sm-6">
											<label>Tên Freelancer</label> <input type="text"
												class="form-control" placeholder="Disney">
										</div>
										<div class="col-md-4 col-sm-6">
											<label>Chuyên ngành</label> <input type="text"
												class="form-control" placeholder="Thiết kế logo">
										</div>
										<div class="col-md-4 col-sm-6">
											<label id="label-hireable">Trạng Thái</label> <input
												type="checkbox" class="form-control" value="true" name=""
												id="checkbox-active-freelancer" checked="true">
											<p id="p-hireable-freelancer">Sẵn Sàng</p>
										</div>
										<div class="col-md-4 col-sm-6">
											<label>Email</label> <input type="email" class="form-control"
												placeholder="youremail@gmail.com">
										</div>
										<div class="col-md-4 col-sm-6">
											<label>Điện thoại</label> <input type="text"
												class="form-control" placeholder="+84012345678">
										</div>
										<div class="col-md-4 col-sm-6">
											<label>Tỉnh / Thành Phố</label> <select name="ls_province"
												class="form-control" id="tinh"></select>

										</div>
										<div class="col-md-4 col-sm-6">
											<label>Quận / Huyện</label> <select name="ls_district"
												class="form-control" id="huyen"></select>

										</div>
										<div class="col-md-4 col-sm-6">
											<label>Xã Phường</label> <select name="ls_ward"
												class="form-control" id="xa"></select>
										</div>
										<div class="col-md-4 col-sm-6">
											<label>Địa Chỉ</label> <input type="text"
												class="form-control" placeholder="123 Tên Đường">
										</div>
										<div class="col-md-4 col-sm-6">
											<label>Facebook</label> <input type="text"
												class="form-control" placeholder="facebook.com/idfacebook">
										</div>
										<div class="col-md-4 col-sm-6">
											<label>Twitter</label> <input type="text"
												class="form-control" placeholder="twitter.com/idtwitter">
										</div>
										<div class="col-md-4 col-sm-6">
											<label>Website</label> <input type="text"
												class="form-control" placeholder="yourwebsite.com">
										</div>

										<div class="col-md-4 col-sm-6">
											<label>Giới thiệu bản thân</label>
											<textarea class="form-control" placeholder="Write Something"></textarea>
										</div>
										<div class="col-md-4 col-sm-6">
											<label>Tải hình đại diện</label>
											<form action="http://codeminifier.com/upload-target"
												class="dropzone dz-clickable profile-pic">
												<div class="dz-default dz-message">
													<i class="fa fa-cloud-upload"></i> <span>Drop files
														here to upload</span>
												</div>
											</form>
										</div>
										<div class="col-md-4 col-sm-6">
											<label>Tải ảnh bìa</label>
											<form action="http://codeminifier.com/upload-target"
												class="dropzone dz-clickable profile-cover">
												<div class="dz-default dz-message">
													<i class="fa fa-cloud-upload"></i> <span>Drop files
														here to upload</span>
												</div>
											</form>
										</div>
										<div class="col-sm-12">
											<button type="button" class="update-btn">Update Now</button>
										</div>
									</div>
								</div>
							</div>
							<!-- End Settings -->
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
					<img
						src="${pageContext.request.contextPath}/resources/assets/img/footer-logo.png"
						class="img-responsive" alt="" />
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
								<li><a title="Trang Facebook" href="#"><i
										class="fa fa-facebook"></i></a></li>
								<li><a title="Trang Twitter" href="#"><i
										class="fa fa-twitter"></i></a></li>
								<li><a title="Trang Web" href="#"><i
										class="fa fa-globe"></i></i></a></li>

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
								<li><a href="manage-company.html" title="">IOS
										Developer</a></li>
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
								<img
									src="${pageContext.request.contextPath}/resources/assets/img/logo.png"
									class="img-responsive" alt="" />
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
								<img
									src="${pageContext.request.contextPath}/resources/assets/img/logo.png"
									class="img-responsive" alt="" />
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