<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<jsp:useBean id="dateHelper" class="customutil.DateHelper" />
<jsp:useBean id="stringHelper" class="customutil.StringHelper" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quản Lý Bài Đăng</title>

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
	href="${pageContext.request.contextPath}/resources/ui-admin/assets/css/quanLyBaiDang.css">

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
							<h3>Bài Đăng</h3>
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
								<!-- table hover -->
								<div class="table-responsive">
									<table class="table table-hover mb-0">
										<thead>
											<tr>
												<th>id</th>
												<th>Người đăng</th>
												<th>Tên công việc</th>
												<!-- 												<th>Lượt xem</th>-->
												<th>Ngày đăng</th>
												<th>Ngày kết thúc</th>
												<th>Trạng thái</th>
												<th>Xem thêm</th>

											</tr>
										</thead>
										<tbody>
											<c:forEach var="job" items="${listJobs}">
												<tr>
													<td class="text-bold"><c:out value="${job.id}"></c:out></td>
													<td class="text-bold"><c:out
															value="${stringHelper.limitWords(job.ofAccount.fullname,20)}"></c:out></td>
													<td class="text-bold"><c:out
															value="${stringHelper.limitWords(job.jobTitle,20)}"></c:out></td>
													<%-- 	<td class="text-bold"><c:out value="${job.view}"></c:out></td> --%>
													<td class="text-bold"><c:out
															value="${dateHelper.parseToString(job.createday)}"></c:out></td>
													<td class="text-bold"><c:out
															value="${dateHelper.parseToString(job.finishday)}"></c:out></td>
													<td><span class="badge bg-success"> </span></td>
													<td class="text-bold"><a
														href='<c:url value="admin-detail-job-post?id=${job.id}"></c:url>'
														class="btn green mr0 btn-search-text-single btnSearchMore">
															<i class="fa fa-ellipsis-h"></i>
													</a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<c:if test="">
				<!-- Hoverable rows end -->
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#">Trang đầu</a></li>
						
						<li class="page-item"><a class="page-link" href="#">&lt;</a></li>
						
						<li class="page-item active"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						
						<li class="page-item"><a class="page-link" href="#">&gt;</a></li>
						
						<li class="page-item"><a class="page-link" href="#">Trang cuôi</a></li>
					</ul>
				</nav>
				</c:if>
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
		
	</script>
</body>
</html>
