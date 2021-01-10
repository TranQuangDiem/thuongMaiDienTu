<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
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
								<span>Trang chá»§</span>
						</a></li>




						<li class="sidebar-item  has-sub"><a href="#"
							class='sidebar-link'> <i data-feather="triangle" width="20"></i>
								<span>Quáº£n LÃ½ TÃ i Khoáº£n</span>
						</a>

							<ul class="submenu ">

								<li><a href="quanLyNTD.html">Employer</a></li>

								<li><a href="quanLyFreelancer.html">Freelancer</a></li>
							</ul></li>




						<li class="sidebar-item  has-sub active"><a href="#"
							class='sidebar-link'> <i data-feather="briefcase" width="20"></i>
								<span>Quáº£n LÃ½ GÃ³i</span>
						</a>

							<ul class="submenu ">

								<li><a href="quanLyBaiDang.html">BÃ i ÄÄng</a></li>

								<li><a href="quanLyGoiBaiDang.html">GÃ³i BÃ i ÄÄng</a></li>

							</ul></li>
						<li class="sidebar-item  "><a href="quanLyChuyenMon.html"
							class='sidebar-link'> <i data-feather="grid" width="20"></i>
								<span>Quáº£n LÃ½ ChuyÃªn MÃ´n</span>
						</a></li>




						<li class="sidebar-item  "><a href="quanLyDanhGia.html"
							class='sidebar-link'> <i data-feather="layers" width="20"></i>
								<span>Quáº£n LÃ½ ÄÃ¡nh GiÃ¡</span>
						</a></li>

						<li class="sidebar-item"><a href="quanLyReport.html"
							class='sidebar-link'> <i data-feather="alert-circle"
								width="20"></i> <span>Quáº£n LÃ½ Reports</span>
						</a></li>




					</ul>
				</div>
				<button class="sidebar-toggler btn x">
					<i data-feather="x"></i>
				</button>
			</div>
		</div>
		<div id="main">
			<nav class="navbar navbar-header navbar-expand navbar-light"></nav>

			<div class="main-content container-fluid">
				<div class="page-title">
					<div class="row">
						<div class="col-12 col-md-6 order-md-1 order-last">
							<h3>BÃ i ÄÄng</h3>
						</div>
						<div class="col-12 col-md-6 order-md-2 order-first">
							<nav aria-label="breadcrumb" class='breadcrumb-header'>
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Trang
											chá»§</a></li>
									<li class="breadcrumb-item active" aria-current="page">BÃ i
										ÄÄng</li>
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
								<h4 class="card-title">BÃ i ÄÄng</h4>
							</div>
							<div class="card-content">
								<!-- table hover -->
								<div class="table-responsive">
									<table class="table table-hover mb-0">
										<thead>
											<tr>
												<th>id</th>
												<th>NgÆ°á»i ÄÄng</th>
												<th>TÃªn cÃ´ng viá»c</th>
												<th>LÆ°á»£t xem</th>
												<th>NgÃ y ÄÄng</th>
												<th>NgÃ y káº¿t thÃºc</th>
												<th>Tráº¡ng thÃ¡i</th>
												<th>Xem thÃªm</th>

											</tr>
										</thead>
										<tbody>

											<tr>
												<td class="text-bold">1</td>
												<td class="text-bold">Nguyá»n VÄn A</td>
												<td class="text-bold">Chá»nh sá»­a video</td>
												<td class="text-bold">35</td>
												<td class="text-bold">1/1/2021</td>
												<td class="text-bold">10/1/2021</td>
												<td><span class="badge bg-success">Hiá»n</span></td>
												<td class="text-bold"><a
													href="chiTietQuanLyBaiDang.html"
													class="btn green mr0 btn-search-text-single btnSearchMore">
														<i class="fa fa-ellipsis-h"></i>
												</a></td>
											</tr>

											<tr>
												<td class="text-bold">1</td>
												<td class="text-bold">Nguyá»n VÄn A</td>
												<td class="text-bold">Chá»nh sá»­a video</td>
												<td class="text-bold">35</td>
												<td class="text-bold">1/1/2021</td>
												<td class="text-bold">10/1/2021</td>
												<td><span class="badge bg-danger">áº¨n</span></td>
												<td class="text-bold"><a
													href="chiTietQuanLyBaiDang.html"
													class="btn green mr0 btn-search-text-single btnSearchMore">
														<i class="fa fa-ellipsis-h"></i>
												</a></td>
											</tr>

											<tr>
												<td class="text-bold">1</td>
												<td class="text-bold">Nguyá»n VÄn A</td>
												<td class="text-bold">Chá»nh sá»­a video</td>
												<td class="text-bold">35</td>
												<td class="text-bold">1/1/2021</td>
												<td class="text-bold">10/1/2021</td>
												<td><span class="badge bg-success">Hiá»n</span></td>
												<td class="text-bold"><a
													href="chiTietQuanLyBaiDang.html"
													class="btn green mr0 btn-search-text-single btnSearchMore">
														<i class="fa fa-ellipsis-h"></i>
												</a></td>
											</tr>

											<tr>
												<td class="text-bold">1</td>
												<td class="text-bold">Nguyá»n VÄn A</td>
												<td class="text-bold">Chá»nh sá»­a video</td>
												<td class="text-bold">35</td>
												<td class="text-bold">1/1/2021</td>
												<td class="text-bold">10/1/2021</td>
												<td><span class="badge bg-danger">áº¨n</span></td>
												<td class="text-bold"><a
													href="chiTietQuanLyBaiDang.html"
													class="btn green mr0 btn-search-text-single btnSearchMore">
														<i class="fa fa-ellipsis-h"></i>
												</a></td>
											</tr>

											</tr>


										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Hoverable rows end -->
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#">Prev</a></li>
						<li class="page-item active"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</nav>
			</div>


		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/resources/ui-admin/assets/js/feather-icons/feather.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/ui-admin/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/ui-admin/assets/js/app.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/ui-admin/assets/js/main.js"></script>
</body>
</html>
