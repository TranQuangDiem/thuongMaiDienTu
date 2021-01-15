<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!doctype html>
<html lang="en">

<!-- signup42:17-->
<head>
<!-- Basic Page Needs
	================================================== -->
<title>Đăng Ký</title>
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
<link type="text/css" rel="stylesheet" id="jssDefault"
	href="${pageContext.request.contextPath}/resources/assets/css/colors/green-style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/custom-style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

</head>
<body class="simple-bg-screen"
	style="background-image:url(${pageContext.request.contextPath}/resources/assets/img/banner-10.jpg);">
	<div class="Loader"></div>
	<div class="wrapper">

		<!-- Title Header Start -->
		<section class="signup-screen-sec">
			<div class="container">
				<div class="signup-screen">
					<a href="${pageContext.request.contextPath}"><img
						src="${pageContext.request.contextPath}/resources/assets/img/logo.png"
						class="img-responsive" alt=""></a>
					<form id="form-register" action="${pageContext.request.contextPath}/register">
						<input type="text" name="fullnamenew" class="form-control"
							placeholder="Họ Và Tên"> <input type="email"
							name="emailnew" class="form-control" placeholder="Email">
						<input type="text" name="usernamenew" class="form-control"
							placeholder="Tài Khoản"> <input type="password"
							name="passwordnew" class="form-control" placeholder="Mật Khẩu">
						<div class="row row-signup">
							<div class="col-sm-3">
								<p class="permissions">Bạn là :</p>
							</div>
							<div class="col-sm-9" style="display: contents;">
								<input type="radio" value="2" name="role-new" id="radio-freelancer"
									checked="true"> 
									<label style="margin-right: 5px;" class="label-signup"
									for="radio-freelancer">Freelancer</label>
									 <input value="1" type="radio"
									name="role-new" id="radio-employer">
									 <label
									class="label-signup" for="radio-employer">Nhà Tuyển
									Dụng</label>
							</div>
						</div>
						<div id="show-error-register" class="m-5 text-center"
							style="font-size: 20px"></div>
						<button class="btn btn-login" type="submit">Đăng Ký</button>
						<span>Bạn đã có tài khoản? <a
							href="${pageContext.request.contextPath}/loginpage"> Login</a></span>
					</form>
				</div>
			</div>
		</section>
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
		<script type="text/javascript">
			$(document)
					.ready(
							function() {
								var showErrorRegister = function(isErr, message) {
									const showerror = $("#show-error-register");
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
								$("#form-register")
										.submit(
												function(e) {
													e.preventDefault();
													$
															.ajax({
																type : "POST",
																url : $(
																		"#form-register")
																		.attr(
																				"action"),
																data : $(
																		"#form-register")
																		.serialize(),
																success : function(
																		res) {
																	switch (res) {
																	case "erremptyfield":
																		showErrorRegister(
																				true,
																				"Không được để trống tất cả thông tin");
																		break;
																	case "errname":
																		showErrorRegister(
																				true,
																				"Họ và tên của bạn không hợp lệ");
																		break;
																	case "errpass":
																		showErrorRegister(
																				true,
																				"Mật khẩu phải nhiều hơn 8 ký tự,có ít nhất 1 ký thường,hoa,số,đặc biệt");
																		break;
																	case "errusername":
																		showErrorRegister(
																				true,
																				"Tên tài khoản có ít nhất 8 ký tự chỉ có số, chữ ");
																		break;
																	case "errusernameexit":
																		showErrorRegister(
																				true,
																				"Tên tài khoản đã tồn tại");
																		break;
																	case "errmail":
																		showErrorRegister(
																				true,
																				"Email của bạn không hợp lệ");
																		break;
																	case "error":
																		showErrorRegister(
																				true,
																				"Đã có lỗi xảy ra với hệ thống");
																		break;
																	case "success":
																		showErrorRegister(
																				false,
																				"Đăng ký thành công");
																		$(
																				location)
																				.attr(
																						"href",
																						"${pageContext.request.contextPath}");
																		break;
																	case "errmailexist":
																		showErrorRegister(
																				true,
																				"Email đã được sử dụng");
																		break;
																	default:
																		showErrorRegister(
																				true,
																				"Đã có lỗi xảy ra");
																		break;
																	}
																},
															});
												});
							});
		</script>
	</div>
</body>

<!-- signup42:17-->
</html>