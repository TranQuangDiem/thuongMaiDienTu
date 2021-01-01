<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">

<!-- create-job41:39-->

<head>
<!-- Basic Page Needs
	================================================== -->
<title><tiles:getAsString name="title"></tiles:getAsString></title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
	================================================== -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/plugins/css/plugins.css">

<!-- Custom style -->
<link
	href="${pageContext.request.contextPath}/resources/assets/css/style.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/css/style1.css"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" id="jssDefault"
	href="${pageContext.request.contextPath}/resources/assets/css/colors/green-style.css">

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

		<!-- Header Title Start -->
		<section class="inner-header-title blank">
			<div class="container">
				<h1>Đăng Công Việc</h1>
			</div>
		</section>
		<div class="clearfix"></div>
		<!-- Header Title End -->
		<form:form enctype="multipart/form-data"
			modelAttribute="formcreatejob" id="form-createjob"
			action="${pageContext.request.contextPath}/createjob">
			<!-- General Detail Start -->
			<div class="detail-desc section">
				<div class="container white-shadow">
					<div class="row">
						<div class="detail-pic js">
							<div class="box">
								<input type="file" name="img" id="upload-pic" class="inputfile" />
								<label for="upload-pic"><i class="fa fa-upload"
									aria-hidden="true"></i><span></span></label>
							</div>
						</div>
					</div>
					<div class="row bottom-mrg">
						<div class="add-feild">
							<div class="col-md-12 col-sm-12">
								<div class="input-group">
									<input type="text" name="jobname" class="form-control"
										placeholder="Tên Công Việc">
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="input-group">
									<select name="jobtype" class="form-control input-lg">
										<option value="" disabled selected hidden>Hình thức
											làm việc</option>
										<option value="1">Làm Việc Online</option>
										<option value="2">Làm Việc Offline</option>
									</select>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="input-group">
									<select name="major" class="form-control input-lg">
										<option value="" disabled selected hidden>Kĩ năng yêu
											cầu</option>
										<c:forEach var="major" items="${listMajors}">
											<option value='<c:out value="${major.id}"></c:out>'>
												<c:out value="${major.name}"></c:out>
											</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="col-md-12 col-sm-12">

								<select name="address.province" class="form-control" id="tinh"></select>
							</div>
							<div hidden="true" class="col-md-4 col-sm-6">
								<label>Quận / Huyện</label> <select name="address.district"
									class="form-control" id="huyen"></select>

							</div>
							<div hidden="true" class="col-md-4 col-sm-6">
								<label>Xã Phường</label> <select name="address.ward"
									class="form-control" id="xa"></select>
							</div>
							<div class="col-md-12 col-sm-12">
								<div class="input-group">
									<input type="text" name="finishday" id="company-dob"
										data-lang="en" data-large-mode="true" data-min-year="2020"
										data-max-year="2021"
										data-disabled-days="08/17/2017,08/18/2017"
										data-id="datedropper-0" data-theme="my-style"
										class="form-control" readonly="">
								</div>
							</div>

							<div class="col-md-12 col-sm-12">
								<textarea class="form-control" name="jobdescription"
									placeholder="Mô tả công việc"></textarea>
							</div>
						</div>
					</div>
					<div class="row no-padd">
						<div class="detail pannel-footer">
							<div class="col-md-12 col-sm-12">
								<div class="detail-pannel-footer-btn pull-right">
									<a href="#" class="footer-btn choose-cover">Chọn ảnh</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- General Detail End -->

			<!-- Basic Full Detail Form Start -->
			<section class="full-detail">
				<div class="container">
					<h2 class="detail-title">Yêu Cầu Công Việc</h2>

					<div class="col-md-6 col-sm-6">
						<div class="input-group">
							<input type="number" value="1" min=1 class="form-control"
								name="quantity" placeholder="Số lượng Freelancer">
						</div>
					</div>

					<div class="col-md-6 col-sm-6">
						<div class="input-group">

							<input type="text" class="form-control" name="education"
								placeholder="Trình độ học vấn">
						</div>
					</div>

					<div class="col-md-6 col-sm-6">
						<div class="input-group">
							<input type="text" class="form-control" name="exp"
								placeholder="Kinh nghiệm">
						</div>
					</div>

					<div class="col-md-6 col-sm-6">
						<div class="input-group">
							<input type="text" class="form-control" name="language"
								placeholder="Khả năng ngôn ngữ">
						</div>
					</div>


				</div>
				<div style="font-size: 20px; margin: 20px" id="show-result"
					class="col-md-12 col-sm-12 m-5 text-center"></div>
				<div class="col-md-12 col-sm-12">
					<button class="btn btn-success btn-primary small-btn">Đăng
						Tin</button>
				</div>

			</section>
		</form:form>


		<!-- Basic Full Detail Form End -->

		<!-- Footer Section Start -->

		<footer class="footer">
			<tiles:insertAttribute name="footer"></tiles:insertAttribute>
		</footer>
		<div class="clearfix"></div>
		<!-- Footer Section End -->


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
		<script>
											function updateAddress() {
												
	
											}
										</script>
		<!-- Date dropper js-->

		<script src="${pageContext.request.contextPath}/resources/#"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/js/vietnamlocalselector.js"></script>
		<!-- Custom Js -->
		<script
			src="${pageContext.request.contextPath}/resources/assets/js/custom.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/js/js-custom.js"></script>
		<script>
										$('#company-dob').dateDropper();
									</script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/js/jQuery.style.switcher.js"></script>
		<script type="text/javascript">
										$(document).ready(function () {
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
		<script>
										$(document).ready(
											function () {
												var showResult = function (isErr, message) {
													const showerror = $("#show-result");
													if (showerror.hasClass("text-danger"))
														showerror.removeClass("text-danger");
													if (showerror.hasClass("text-success"))
														showerror.removeClass("text-success");
													if (isErr == true)
														showerror.addClass("text-danger");
													else
														showerror.addClass("text-success");
													showerror.hide().text(message).fadeIn(
														"slow");
												};
												$('#form-createjob').submit(
													function (e) {
														e.preventDefault();

														var formData = new FormData(
															$('#form-createjob')[0]);
														formData.append('ls_province', formData.get('address.province'));
														formData.delete('address.province');

														showResult(false,
															'Đang xử lý ...');
														$.ajax({
															type: "POST",
															url: $("#form-createjob").attr("action"),
															data: formData,
															enctype: 'multipart/form-data',
															contentType: false,
															processData: false,
															cache: false,
															success: function (
																res) {
																switch (res) {
																	case 'empty':
																		showResult(
																			true,
																			"Bạn phải điền đầy đủ các trường form và upload hình ảnh");
																		break;
																	case 'fail':
																		showResult(
																			true,
																			"Hệ thống xảy ra lỗi");
																		break;
																	case 'ok':
																		window.location.href = "${pageContext.request.contextPath}/create-job";
																		break;
																	default:
																		showResult(
																			true,
																			'Có lỗi xảy ra hoặc bạn đã để trống các trường bắt buộc');
																		break;
																}
															}
														});
													});
											});
									</script>
	</div>
</body>

<!-- create-job41:40-->

</html>