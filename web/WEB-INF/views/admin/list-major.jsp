<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
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
						<li class="breadcrumb-item"><a
							href='<c:url value="admin-index"></c:url>'>Trang Chủ</a></li>
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
											<label for="roundText">Thêm Chuyên Môn</label> <input
												type="text" id="roundText" name="major"
												class="form-control round"
												placeholder="Nhập Chuyên Môn Muốn Thêm">
										</div>
										<div id="show-result" class="text-center"
											style="font-size: 20px"></div>
										<a class="btn btn-primary round" id="btn-addmajor">Thêm</a>

									</div>
									</dialog>
								</div>

								<div id="container-major" class="card-body mt-5">
									<c:forEach items="${listMajor}" var="major">
										<div
											data-major-delete="<c:out value="${major.id}">
																		</c:out>"
											class="alert alert-primary alert-dismissible
																		fade show">
											<c:out value="${major.name }"></c:out>
											<button data-major='<c:out value="${major.id }"></c:out>'
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