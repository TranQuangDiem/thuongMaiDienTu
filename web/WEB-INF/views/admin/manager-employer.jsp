<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<div class="main-content container-fluid">
	<div class="page-title">
		<div class="row">
			<div class="col-12 col-md-6 order-md-1 order-last">
				<h3>Employer</h3>
			</div>
			<div class="col-12 col-md-6 order-md-2 order-first">
				<nav aria-label="breadcrumb" class='breadcrumb-header'>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">Trang
								chủ</a></li>
						<li class="breadcrumb-item active" aria-current="page">Employer</li>
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
					<h4 class="card-title">Nhà tuyển dụng</h4>
				</div>
				<div class="card-content">
					<!-- table hover -->
					<div class="table-responsive">
						<table class="table table-hover mb-0">
							<thead>
								<tr>
									<th>id</th>
									<th>Tên đăng nhập</th>
									<th>Email</th>
									<th>Đánh giá</th>
									<th>Bài đăng</th>
									<th>Report</th>
									<th>Chỉnh sửa</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="account" items="${listAccounts}">
									<tr>
									<td class="text-bold-500">${account.id}</td>
									<td>${account.username}</td>
									<td>${account.email}</td>
									<td class="font-to"><i class="fa fa-star"
										style="color: #f1c40f;"></i>${account.starAverage}</td>
									<td class="font-to">${account.countJobFinish}</td>
									<td class="font-to"><a href="">${account.countEvaluate}</td>
									
									<td><a href='<c:url value="admin-edit-employer?id=${account.id}"/>'><i
											class="fa fa-external-link" style="color: #cecccc"></i></a></td>
								</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Hoverable rows end -->
	<nav aria-label="Page navigation example">
		<c:if test="${totalPage>1}">
			<ul class="pagination" style="left: 40%;
    position: relative;">
				<c:if test="${pageIndex!=-1 }">
					<li class="page-item"><a class="page-link"
						href='<c:url value="admin-manager-employer"></c:url>'>Trang
							đầu</a></li>
				</c:if>
				<c:if test="${previousPage!=-1}">
					<li class="page-item"><a class="page-link"
						href="<c:url value="admin-manager-employer?page=${pageIndex-1}"></c:url>">&lt;</a></li>
				</c:if>
				<c:forEach var="i" begin="${startPageIndex}"
					end="${endPageIndex}">
					<c:if test="${i==pageIndex }">
						<li class="page-item active"><a class="page-link"
							href="<c:url value="admin-manager-employer?page=${i}"></c:url>"><c:out
									value="${i}"></c:out></a></li>
					</c:if>
					<c:if test="${i!=pageIndex }">
						<li class="page-item"><a class="page-link"
							href="<c:url value="admin-manager-employer?page=${i}"></c:url>"><c:out
									value="${i}"></c:out></a></li>
					</c:if>
				</c:forEach>
				<c:if test="${nextPage!=-1}">
					<li class="page-item"><a class="page-link"
						href="<c:url value="admin-manager-employer?page=${pageIndex+1}"></c:url>">&gt;</a></li>
				</c:if>
				<c:if test="${pageIndex !=totalPage }">
					<li class="page-item"><a class="page-link"
						href="<c:url value="admin-manager-employer?page=${totalPage}"></c:url>">Trang
							cuôi</a></li>
				</c:if>
			</ul>
		</c:if>
	</nav>
</div>




