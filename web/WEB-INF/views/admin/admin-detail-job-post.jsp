<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<jsp:useBean id="dateHelper" class="customutil.DateHelper" />
<jsp:useBean id="jobModel" class="model.Job" />
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

			<div class="main-content container-fluid">
				<div class="page-title">
					<div class="row">
						<div class="col-12 col-md-6 order-md-1 order-last">
							<h3>Chi Tiết Bài Đăng</h3>
						</div>
						<div class="col-12 col-md-6 order-md-2 order-first">
							<nav aria-label="breadcrumb" class='breadcrumb-header'>
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Trang
											chủ</a></li>
									<li class="breadcrumb-item active" aria-current="page">Bài
										đăng</li>
								</ol>
							</nav>
						</div>
					</div>

				</div>
				<!-- Hoverable rows start -->
				<div class="row" id="table-hover-row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">Bài đăng</h4>
							</div>
							<div class="card-content">
								<div class="card-body">
									<form class="form">
										<div class="row">
											<div class="col-md-4 col-12">
												<div class="form-group">
													<label for="first-name-column">Người đăng</label> <input
														type="text" id="first-name-column" class="form-control"
														placeholder="<c:out value="${job.ofAccount.fullname}"></c:out>"
														name="tenCongTy-column" disabled="trending-up">
												</div>
											</div>
											<div class="col-md-4 col-12">
												<div class="form-group">
													<label for="first-name-column">Tên công việc</label> <input
														type="text" id="first-name-column" class="form-control"
														placeholder="<c:out value="${job.jobTitle}"></c:out>"
														name="chuyenNganh-column" disabled="trending-up">
												</div>
											</div>
											<div class="col-md-4 col-12">
												<div class="form-group">
													<label for="first-name-column">Số lượng tuyển</label> <input
														type="text" id="first-name-column" class="form-control"
														placeholder="<c:out value="${job.soluongtuyen}"></c:out>"
														name="email-column" disabled="trending-up">
												</div>
											</div>
											<div class="col-md-4 col-12">
												<div class="form-group">
													<label for="first-name-column">Ngày đăng</label> <input
														type="text" id="first-name-column" class="form-control"
														placeholder="<c:out value="${dateHelper.parseToString(job.createday)}">
																	</c:out>"
														name="sDT-column" disabled="trending-up">
												</div>
											</div>
											<div class="col-md-4 col-12">
												<div class="form-group">
													<label for="first-name-column">Ngày kết thúc</label> <input
														type="text" id="first-name-column" class="form-control"
														placeholder="<c:out value="${dateHelper.parseToString(job.finishday)}">
																	</c:out>"
														name="sDT-column" disabled="trending-up"> </select>
												</div>
											</div>
											<div class="col-md-4 col-12">
												<div class="form-group">
													<label for="first-name-column">Lượt xem</label> <input
														type="text" id="first-name-column" class="form-control"
														placeholder="<c:out value="${job.view}"></c:out>"
														name="sDT-column" disabled="trending-up"> </select>
												</div>
											</div>
											<div class="col-md-4 col-12">
												<div class="form-group">
													<label for="first-name-column">Chuyên môn</label> <input
														type="text" id="first-name-column" class="form-control"
														placeholder="<c:out value="${job.major}"></c:out>"
														name="sDT-column" disabled="trending-up"> </select>
												</div>
											</div>
											<div class="col-md-4 col-12">
												<div class="form-group">
													<label for="first-name-column">Ngôn ngữ</label> <input
														type="text" id="first-name-column" class="form-control"
														placeholder="<c:out value="${job.language}"></c:out>"
														name="diaChi-column" disabled="trending-up">
												</div>
											</div>
											<div class="col-md-4 col-12">
												<div class="form-group">
													<label for="first-name-column">Kinh nghiệm</label> <input
														type="text" id="first-name-column" class="form-control"
														placeholder="<c:out value="${job.exp}"></c:out>"
														name="diaChi-column" disabled="trending-up">
												</div>
											</div>
											<div class="col-md-6 col-12">
												<div class="form-group">
													<label for="first-name-column">Mô tả công việc</label>
													<textarea type="text" id="first-name-column"
														class="form-control" rows="15"
														placeholder="<c:out value="${job.jobDescription}"></c:out>"
														name="info-column" disabled></textarea>
												</div>
											</div>

											<div class="col-md-6 col-12" >
												<div class="form-group">
													<label for="first-name-column">Ảnh</label> <img
														class="img-fluid" alt=""
														src="data:image/jpge;base64,<c:out value="${job.img}"></c:out>">
												</div>
											</div>
											<div class="col-md-4 col-12">
												<div class="form-group">
													<label for="first-name-column">Công ty</label> <input
														type="text" id="first-name-column" class="form-control"
														placeholder="<c:out value="${job.ofAccount.name}"></c:out>"
														name="diaChi-column" disabled="trending-up">
												</div>
											</div>
											<div class="col-md-4 col-12">
												<div class="form-group">
													<label for="first-name-column">Loại công việc</label> <input
														type="text" id="first-name-column" class="form-control"
														placeholder="<c:out value="${jobModel.toStringOfJobType(job.jobType)}">
																	</c:out>"
														name="diaChi-column" disabled="trending-up">
												</div>
											</div>
											<div class="col-md-4 col-12">
												<div class="form-group">
													<label for="first-name-column">Trạng thái</label> <input
														type="text" id="first-name-column" class="form-control"
														placeholder="<c:out value="${jobModel.toStringOfStatus(job.status)}">
																	</c:out>"
														name="diaChi-column" disabled="trending-up">
												</div>
											</div>
											<div id="show-result" class="col-md-12 col-12 text-center">
												Sofm</div>
											<div class="col-md-4 col-12"></div>
											<div class="col-12 d-flex justify-content-end">
												<div class="form-group checkbox-1 mr-3 mt-3">
													<label for="first-name-column">Ẩn</label> <label
														class="checkbox-2" name="block-column"> <c:choose>
															<c:when test="${job.status==3}">
																<input checked name="isHide" type="checkbox">
															</c:when>
															<c:otherwise>
																<input name="isHide" type="checkbox">
															</c:otherwise>
														</c:choose> <span class="background"></span> <span class="mask"></span>
													</label>
												</div>
												<button id="btn-save" type="submit"
													class="btn btn-primary mr-1 mb-1">Lưu</button>
												<button id="btn-back" type="submit"
													class="btn btn-primary mr-1 mb-1">Quay lại</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Hoverable rows end -->
			</div>
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
							e.preventDefault();
							$
									.ajax({
										type : "POST",
										url : "${pageContext.request.contextPath}/admin-hide-post",
										data : $("#form-login").serialize(),
										success : function(res) {
											switch (res) {
											case "error":
												showErrorLogin(true,
														"Bạn đã sai tài khoản hoặc mật khẩu");
												break;
											case "success":
												$(location)
														.attr("href",
																"${pageContext.request.contextPath}");
												break;
											default:
												showErrorLogin(true,
														"Đã có lỗi xảy ra");
												break;
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
	</script>
</body>

</html>