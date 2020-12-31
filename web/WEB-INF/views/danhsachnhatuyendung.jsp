<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Quản lý nhà tuyển dụng</title>

<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/admin/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="${pageContext.request.contextPath}/resources/admin/css/metisMenu.min.css"
	rel="stylesheet">

<!-- Timeline CSS -->
<link
	href="${pageContext.request.contextPath}/resources/admin/css/timeline.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="${pageContext.request.contextPath}/resources/admin/css/startmin.css"
	rel="stylesheet">

<!-- Morris Charts CSS -->
<link
	href="${pageContext.request.contextPath}/resources/admin/css/morris.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="${pageContext.request.contextPath}/resources/admin/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<div id="wrapper">

		<!-- Navigation -->
		<jsp:include page="AdminHeader.jsp" />

		<!-- /.navbar-top-links -->

		<jsp:include page="adminMenu.jsp" />

		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Home > quản lý nhà tuyển dụng</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<!-- /.row -->
				<div class="row" style="margin-top: 20px">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading" style="font-size: 25px; height: 60px">
								<p style="width: 200px; float: left">Danh sách</p>

								<a
									href="http://localhost:8080/Demo/Nhom25_WebBanGiayNam/Admin/Admin/pages/addKhachhang.jsp"><i
									class="fa fa-plus" style="margin-left: 20px"> New </i> </a>

							</div>
							<!-- /.panel-heading -->
							<div class="panel-body">
								<div class="table-responsive" style="font-size: 20px">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
											<!-- 	<th>ID</th> -->
												<th>Tên</th>
												<th>Email</th>
												<th>Sđt</th>
												<th>Số bài đăng</th>
												<th>trạng thái</th>
												<th>tác vụ</th>
											</tr>
										</thead>
										<tbody>
											<c:if test="${not empty nhatuyendung}">
												<c:forEach var="nhatuyendung" items="${nhatuyendung}">
													<tr>
														<!-- <td>${nhatuyendung.id}</td> -->
														<td>${nhatuyendung.fullname}</td>
														<td>${nhatuyendung.email}</td>
														<td>${nhatuyendung.phone}</td>
														<td>${nhatuyendung.soluongbaidang} bài</td>

														<td>
															<!-- 
                                            <a href="<c:url value="/editkhachhang"/>?id=${khachhang.id}"><i class="fa fa-edit " style="color:green;" ></i></a>
                                            <a OnClick="return confirm('Are you sure')" href="<c:url value="/deleteKhachhang"/>?id=${khachhang.id}"><i class="fa fa-trash " style="color:Red;" ></i></a> -->
                                            <select>
                                            <option value="none">none</option>
                                            <option value="block">block</option>
                                            
                                            </select>
														</td>
														<td><a>update</a>/
														<a OnClick="return confirm('Are you sure')" href="<c:url value="/nhatuyendung/delete"/>?id=${nhatuyendung.id}"><i class="fa fa-trash " style="color:Red;" ></i></a></td>
													</tr>
												</c:forEach>
											</c:if>
										</tbody>
									</table>
								</div>
								<!-- /.table-responsive -->
							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>
					<!-- /.col-lg-6 -->

					<!-- /.col-lg-6 -->
				</div>
				<!-- /.row -->

				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/dataTables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/dataTables/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/startmin.js"></script>
	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		});
	</script>

</body>
</html>
