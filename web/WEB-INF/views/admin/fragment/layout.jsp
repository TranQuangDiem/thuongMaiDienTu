<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quản Lý Chuyên Môn</title>
<tiles:importAttribute name="stylesheets" />
<tiles:importAttribute name="javascripts" />

	================================================== -->
<!-- CSS -->
<c:forEach var="css" items="${stylesheets}">
	<link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
</c:forEach>



<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/ui-admin/assets/images/favicon.svg"
	type="image/x-icon">
</head>

<body>
	<div id="app">
		<div id="sidebar" class='active'>
			<div class="sidebar-wrapper active">
				<div class="sidebar-header">
					<img
						src="${pageContext.request.contextPath}/resources/ui-admin/assets/images/logo.svg"
						alt="" srcset="">
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
								<li><a href="${pageContext.request.contextPath}/admin-manager-employer">Employer</a></li>
								<li><a href="${pageContext.request.contextPath}/admin-manager-freelancer">Freelancer</a></li>
							</ul></li>
						<li class="sidebar-item  has-sub active"><a href="#"
							class='sidebar-link'> <i data-feather="briefcase" width="20"></i>
								<span>Quản Lý Gói</span>
						</a>
							<ul class="submenu ">
								<li><a href='<c:url value="admin-list-job-post"></c:url>'>Bài Đăng</a></li>
								<li><a href="quanLyGoiBaiDang.html">Gói Bài Đăng</a></li>
							</ul></li>
						<li class="sidebar-item "><a
							href="${pageContext.request.contextPath}/admin-list-major"
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

				<tiles:insertAttribute name="main-content"></tiles:insertAttribute>
			
		</div>
	</div>
	<!-- Scripts
			================================================== -->
		<c:forEach var="script" items="${javascripts}">
			<script src="<c:url value="${script}"/>"></script>
		</c:forEach>
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
		<script
		src="${pageContext.request.contextPath}/resources/ui-admin/assets/js/jquery.min.js"></script>
	<script type="text/javascript" charset="UTF-8">
		
	</script>
	<tiles:insertAttribute name="jquerry"></tiles:insertAttribute>

</body>

</html>