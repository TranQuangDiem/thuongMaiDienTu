<%@ page language="java" pageEncoding="UTF-8" %>
	<%@ page contentType="text/html;charset=UTF-8" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
			<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
				<!DOCTYPE html>
				<html lang="en">

				<head>
					<meta charset="UTF-8">
					<meta name="viewport" content="width=device-width, initial-scale=1.0">
					<title>Quản Lý Chuyên Môn</title>

					<link rel="stylesheet"
						href="${pageContext.request.contextPath}/resources/ui-admin/assets/css/bootstrap.css">

					<link rel="stylesheet"
						href="${pageContext.request.contextPath}/resources/ui-admin/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
					<link rel="stylesheet"
						href="${pageContext.request.contextPath}/resources/ui-admin/assets/css/app.css">
					<link rel="shortcut icon"
						href="${pageContext.request.contextPath}/resources/ui-admin/assets/images/favicon.svg"
						type="image/x-icon">
				</head>

				<body>
					<div id="app">
						<div id="sidebar" class='active'>
							<div class="sidebar-wrapper active">
								<div class="sidebar-header">
									<img src="${pageContext.request.contextPath}/resources/ui-admin/assets/images/logo.svg"
										alt="" srcset="">
								</div>
								<div class="sidebar-menu">
									<ul class="menu">
										<li class='sidebar-title'>Main Menu</li>
										<li class="sidebar-item "><a href="index.html" class='sidebar-link'> <i
													data-feather="home" width="20"></i>
												<span>Trang chủ</span>
											</a></li>
										<li class="sidebar-item  has-sub"><a href="#" class='sidebar-link'> <i
													data-feather="triangle" width="20"></i>
												<span>Quản Lý Tài Khoản</span>
											</a>
											<ul class="submenu ">
												<li><a href="quanLyNTD.html">Employer</a></li>
												<li><a href="quanLyFreelancer.html">Freelancer</a></li>
											</ul>
										</li>
										<li class="sidebar-item  has-sub"><a href="#" class='sidebar-link'> <i
													data-feather="briefcase" width="20"></i>
												<span>Quản Lý Gói</span>
											</a>
											<ul class="submenu ">
												<li><a href="quanLyBaiDang.html">Bài Đăng</a></li>
												<li><a href="quanLyGoiBaiDang.html">Gói Bài Đăng</a></li>
											</ul>
										</li>
										<li class="sidebar-item active "><a
												href='<c:url value="admin-list-major"></c:url>' class='sidebar-link'> <i
													data-feather="grid" width="20"></i>
												<span>Quản Lý Chuyên Môn</span>
											</a></li>
										<li class="sidebar-item  "><a href="quanLyDanhGia.html" class='sidebar-link'> <i
													data-feather="layers" width="20"></i>
												<span>Quản Lý Đánh Giá</span>
											</a></li>
										<li class="sidebar-item"><a href="quanLyReport.html" class='sidebar-link'> <i
													data-feather="alert-circle" width="20"></i> <span>Quản Lý
													Reports</span>
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
											<h3>Danh Sách Chuyên Môn</h3>
											<p class="text-subtitle text-muted"></p>
										</div>
										<div class="col-12 col-md-6 order-md-2 order-first">
											<nav aria-label="breadcrumb" class='breadcrumb-header'>
												<ol class="breadcrumb">
													<li class="breadcrumb-item"><a href="index.html">Trang
															Chủ</a></li>
													<li class="breadcrumb-item active" aria-current="page">Quản
														lý chuyên môn</li>
												</ol>
											</nav>
										</div>
									</div>

								</div>
								<!-- list group Checkboxes and radios start -->
								<section id="list-group-icons">
									<div class="row match-height">
										<div class="col-lg-6 col-md-12">
											<div class="card">
												<div class="card-content">
													<div class="card-body">
														<div class="card">
															<div class="card-header">
																<button type="button" class="button-add-cm"
																	style="background: url('${pageContext.request.contextPath}/resources/ui-admin/assets/images/add-icon.png'); height: 55px; width: 55px; float: right;"
																	onclick="showDialog()"></button>
																<dialog id="myDialog">
																	<div class="col-sm-12">
																		<div class="form-group">
																			<label for="roundText">Thêm Chuyên
																				Môn</label> <input type="text"
																				id="roundText" name="major"
																				class="form-control round"
																				placeholder="Nhập Chuyên Môn Muốn Thêm">
																		</div>
																		<div id="show-result" class="text-center"
																			style="font-size: 20px"></div>
																		<a class="btn btn-primary round"
																			id="btn-addmajor">Thêm</a>

																	</div>
																</dialog>
															</div>

															<div id="container-major" class="card-body mt-5">
																<c:forEach items="${listMajor}" var="major">
																	<div data-major-delete="<c:out value="${major.id}">
																		</c:out>"
																		class="alert alert-primary alert-dismissible
																		fade show">
																		<c:out value="${major.name }"></c:out>
																		<button
																			data-major='<c:out value="${major.id }"></c:out>'
																			type="button" onclick="deleteMajor(this)" class="close">
																			<span aria-hidden="true">&times;</span>
																		</button>
																	</div>
																</c:forEach>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</section>
								<!-- list group Checkboxes and radios end -->

							</div>
							<footer>
								<div class="footer clearfix mb-0 text-muted">
									<div class="float-left">
										<p>2020 &copy; Voler</p>
									</div>
									<div class="float-right">
										<p>
											Crafted with <span class='text-danger'><i data-feather="heart"></i></span>
											by <a href="http://ahmadsaugi.com">Ahmad
												Saugi</a>
										</p>
									</div>
								</div>
							</footer>
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
					<script src="${pageContext.request.contextPath}/resources/ui-admin/assets/js/app.js"></script>
					<script src="${pageContext.request.contextPath}/resources/ui-admin/assets/js/main.js"></script>
					<script>
						function showDialog() {
							var x = document.getElementById("myDialog");
							x.setAttribute("style", " width: 100%;");
							x.open = true;
						}
					</script>
					<script>
						function hideDialog() {
							var x = document.getElementById("myDialog");
							x.open = false;
						}
						function deleteMajor(button) {
							var idMajor = $(button).data('major');
							$.ajax({
								type: "GET",
								url: '<c:url value="admin-deletemajor"></c:url>',
								data: { id: idMajor },
								success: function (res) {
									if (res.includes('fail')) {
										alert("Có lỗi đã xảy ra");
									} else {
										$("div[data-major-delete=" + idMajor + "]").remove();
									}
								},
							});
						}
					</script>
					<script type="text/javascript" charset="UTF-8">
						$(document).ready(function () {
							var showResult = function (isErr, message) {
								const showerror = $("#show-result");
								if (showerror.hasClass("text-danger")) showerror.removeClass("text-danger");
								if (showerror.hasClass("text-success"))
									showerror.removeClass("text-success");
								if (isErr == true) showerror.addClass("text-danger");
								else showerror.addClass("text-success");
								showerror.hide().text(message).fadeIn("slow");
							};

							
							var setUp = () => {
								$("#btn-addmajor").click(function (e) {
									e.preventDefault();
									var major = $("input[name='major']").val();
									console.log(major);
									$.ajax({
										type: "GET",
										url: '<c:url value="admin-addmajor"></c:url>',
										data: { major: major },
										success: function (res) {
											if (res.includes('empty')) {
												showResult(true, "Bạn không được để trống trường trên");
											}
											else if (res.includes('exitst')) {
												showResult(true, "Dữ liệu đã tồn tại");
											} else if (res.includes('fail')) {
												showResult(true, "Có lỗi với hệ thống");
											} else {
												var newMajorId = res.split('  ')[0];
												var newMajorName = res.split('  ')[1];
												var newDiv = $('<div></div>').text(major.trim());
												var newBtn = $('<button></button>');
												newDiv.attr('data-major-delete', newMajorId);
												newBtn.attr('data-major', newMajorId);
												newBtn.attr( 'onclick','deleteMajor(this)');
												newBtn.attr('type', 'button');
												newBtn.addClass('close');
												newBtn.wrapInner("<span aria-hidden='true'>&times;</span>");
												newDiv.addClass('alert alert-primary alert-dismissible fade show');
												newDiv.append(newBtn);
												$('#container-major').append(newDiv);
											}
										}
									})
								});
							};
							setUp();

						});
					</script>

				</body>

				</html>