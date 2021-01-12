<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Chi Tiết Bài Đăng</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ui-admin/assets/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ui-admin/assets/css/all.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ui-admin/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ui-admin/assets/css/app.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/ui-admin/assets/images/favicon.svg"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/ui-admin/assets/css/chitietQuanLyBaiDang.css">
</head>

<body>
	<div id="app">
		<div id="sidebar" class='active'>
			<div class="sidebar-wrapper active">
				<div class="sidebar-header">
					<img src="assets/images/logo.svg" alt="" srcset="">
				</div>
				<div class="sidebar-menu">
					<ul class="menu">
						<li class='sidebar-title'>Main Menu</li>
						<li class="sidebar-item "><a href="index.html"
							class='sidebar-link'> <i data-feather="home" width="20"></i>
								<span>Trang chủ</span>
						</a></li>
						<li class="sidebar-item  has-sub"><a href="#"
							class='sidebar-link'> <i data-feather="triangle" width="20"></i>
								<span>Quản Lý Tài Khoản</span>
						</a>
							<ul class="submenu ">
								<li><a href="quanLyNTD.html">Employer</a></li>
								<li><a href="quanLyFreelancer.html">Freelancer</a></li>
							</ul></li>
						<li class="sidebar-item  has-sub active"><a href="#"
							class='sidebar-link'> <i data-feather="briefcase" width="20"></i>
								<span>Quản Lý Gói</span>
						</a>
							<ul class="submenu ">
								<li><a href='<c:url value="admin-list-job-post"></c:url>'>Bài
										Đăng</a></li>
								<li><a href="quanLyGoiBaiDang.html">Gói Bài Đăng</a></li>
							</ul></li>
						<li class="sidebar-item "><a
							href='<c:url value="admin-list-major"></c:url>'
							class='sidebar-link'> <i data-feather="grid" width="20"></i>
								<span>Quản Lý Chuyên Môn</span>
						</a></li>
						<li class="sidebar-item  "><a href="quanLyDanhGia.html"
							class='sidebar-link'> <i data-feather="layers" width="20"></i>
								<span>Quản Lý Đánh Giá</span>
						</a></li>
						<li class="sidebar-item"><a href="quanLyReport.html"
							class='sidebar-link'> <i data-feather="alert-circle"
								width="20"></i> <span>Quản Lý Reports</span>
						</a></li>
					</ul>
				</div>
				<button class="sidebar-toggler btn x">
					<i data-feather="x"></i>
				</button>
			</div>
		</div>
		<div id="main">
			<nav class="navbar navbar-header navbar-expand navbar-light">
				<tiles:insertAttribute name="header"></tiles:insertAttribute>
			</nav>

			<tiles:insertAttribute name="content"></tiles:insertAttribute>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/plugins/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/plugins/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets/plugins/js/bootsnav.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/ui-admin/assets/js/feather-icons/feather.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/ui-admin/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/ui-admin/assets/js/app.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/ui-admin/assets/js/main.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							const urlParams = new URLSearchParams(
									window.location.search);
							const id = urlParams.get('id');
							console.log(id);
							var showResult = function(isErr, message) {
								const showerror = $("#show-result");
								if (showerror.hasClass("text-danger"))
									showerror.removeClass("text-danger");
								if (showerror.hasClass("text-success"))
									showerror.removeClass("text-success");
								if (isErr == true)
									showerror.addClass("text-danger");
								else
									showerror.addClass("text-success");
								showerror.hide().text(message).fadeIn("slow");
							};

							$("#btn-save")
									.click(
											function(e) {
												var isHide = $("input[name='isHide']")[0].checked;
												console.log(isHide);
												e.preventDefault();
												$
														.ajax({
															type : "POST",
															url : "${pageContext.request.contextPath}/admin-hide-post",
															data : {
																'id' : id,
																isHide : isHide
															},
															success : function(
																	res) {
																if (res
																		.includes('ok')) {
																	showResult(
																			false,
																			"Lưu thành công");
																} else {
																	showResult(
																			true,
																			"Đã có lỗi xảy ra với hệ thống");
																}
															},
														});
											});

							$("#btn-back")
									.click(
											function(e) {
												e.preventDefault();
												window.location.href = '${pageContext.request.contextPath}/admin-list-job-post';
											});
						});
	</script>
</body>

</html>