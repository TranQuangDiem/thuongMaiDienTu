<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Title</title>
</head>
<body>
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu" style="font-size: 20px;">
				<li class="sidebar-search">
					<%--                <p style="font-size:25px; color: red; margin:auto;">Xin chào Admin </p>--%>
					<%--                <h2 style="margin:auto;">Kiên</h2>--%> <!-- /input-group -->
				</li>
				<li><a href="<c:url value="/homeAdmin"/>" class="active"><i
						class="fa fa-dashboard fa-fw"></i> Dashboard </a></li>
				<li><a href=""><i class="fa fa-edit fa-fw"></i> Quản lý gói
						bài đăng</span></a></li>
				<li><a href=""><i class="fa fa-edit fa-fw"></i> Quản lý
						công việc</span></a></li>
				<li><a href=""><i class="fa fa-users fa-fw"></i> Quản lý ứng
						viên</a> <!-- /.nav-second-level --></li>

				<li><a href="<c:url value="/nhatuyendung"/>"><i class="fa fa-users fa-fw"></i>Quản lý nhà
						tuyển dụng</a></li>

			</ul>
		</div>
	</div>
</body>
</html>
