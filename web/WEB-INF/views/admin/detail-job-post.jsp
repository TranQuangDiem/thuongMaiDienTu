<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<jsp:useBean id="dateHelper" class="customutil.DateHelper" />
<jsp:useBean id="jobModel" class="model.Job" />
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
											placeholder="<c:out value=" ${job.soluongtuyen}"></c:out>"
											name="email-column" disabled="trending-up">
									</div>
								</div>
								<div class="col-md-4 col-12">
									<div class="form-group">
										<label for="first-name-column">Ngày đăng</label> <input
											type="text" id="first-name-column" class="form-control"
											placeholder="<c:out value="${dateHelper.parseToString(job.createday)}"></c:out>"
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

								<div class="col-md-6 col-12">
									<div class="form-group">
										<label for="first-name-column">Ảnh</label> <img
											class="img-fluid" alt=""
											src="data:image/jpge;base64,<c:out value="${job.img}"></c:out>">
									</div>
								</div>
								
								<div class="col-md-6 col-12">
									<div class="form-group">
										<label for="first-name-column">Loại công việc</label> <input
											type="text" id="first-name-column" class="form-control"
											placeholder="<c:out value="${jobModel.toStringOfJobType(job.jobType)}">
														</c:out>"
											name="diaChi-column" disabled="trending-up">
									</div>
								</div>
								<div class="col-md-6 col-12">
									<div class="form-group">
										<label for="first-name-column">Trạng thái</label> <input
											type="text" id="first-name-column" class="form-control"
											placeholder="<c:out value="${jobModel.toStringOfStatus(job.status,job.active)}">
														</c:out>"
											name="diaChi-column" disabled="trending-up">
									</div>
								</div>
								<div id="show-result" class="col-md-12 col-12 text-center"></div>
								<div class="col-md-4 col-12"></div>
								<div class="col-12 d-flex justify-content-end">
									<div class="form-group checkbox-1 mr-3 mt-3">
										<label for="first-name-column">Ẩn</label> <label
											class="checkbox-2" name="block-column"> <c:choose>
												<c:when test="${job.active==2}">
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
