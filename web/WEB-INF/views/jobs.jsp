<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!doctype html>
<html lang="en">

<!-- search-new41:42-->

<head>
<!-- Basic Page Needs
	================================================== -->
<title><tiles:getAsString name="title"></tiles:getAsString></title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
	================================================== -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/plugins/css/plugins.css">

<!-- Custom style -->
<link
	href="${pageContext.request.contextPath}/resources/assets/css/style.css"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" id="jssDefault"
	href="${pageContext.request.contextPath}/resources//assets/css/colors/green-style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/css-header.css">
</head>

<body>

	<div class="Loader"></div>
	<div class="wrapper">
		<!-- Start Navigation -->
		<nav
			class="navbar navbar-default navbar-fixed navbar-light white bootsnav">
			<tiles:insertAttribute name="header"></tiles:insertAttribute>
		</nav>
		<!-- End Navigation -->
		<div class="clearfix"></div>

		<!-- Title Header Start -->
		<section class="inner-header-title no-br advance-header-title"
			style="background-image:url(${pageContext.request.contextPath}/resources/assets/img/banner-10.jpg);">
			<div class="container">
				<h2>
					<span>Job Stock</span> Trang Freelancer cho Designer hàng đầu Việt
					Nam
				</h2>
				<p>
					Hiện tại chúng tôi đang có <span> <c:out
							value="${numberJobIsOpen}"></c:out> Công Việc
					</span> đang chờ bạn ứng tuyển.
				</p>
			</div>
		</section>
		<div class="clearfix"></div>
		<!-- Title Header End -->

		<!-- bottom form section start -->
		<section class="bottom-search-form">
			<div class="container">
				<form id="form-category" class="bt-form"
					action='<c:url value="/jobs"></c:url>'>
					<div class="col-md-3 col-sm-6">
						<c:if test="${jobtitle eq '' }">
							<input type="text" class="form-control" name="jobtitle"
								placeholder="Tên Công Việc">
						</c:if>
						<c:if test="${jobtitle ne '' }">
							<input type="text" class="form-control" value="${jobtitle }"
								name="jobtitle" placeholder="Tên Công Việc">
						</c:if>

					</div>
					<div hidden="true" class="col-md-4 col-sm-6">
						<label>Quận / Huyện</label> <select name="address.district"
							class="form-control" id="huyen"></select>

					</div>
					<div hidden="true" class="col-md-4 col-sm-6">
						<label>Xã Phường</label> <select name="address.ward"
							class="form-control" id="xa"></select>
					</div>
					<div class="col-md-3 col-sm-6">
						<select name="address.province" class="form-control" id="tinh"></select>
					</div>

					<div class="col-md-3 col-sm-6">
						<select name="major" class="form-control">
							<option value="" disabled selected hidden>Chọn Lĩnh Vực</option>
							<c:forEach var="major" items="${listMajors}">
								<option value='<c:out value="${major.id}"></c:out>'>
									<c:out value="${major.name}"></c:out>
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-md-3 col-sm-6">
						<button type="submit" class="btn btn-primary">Tìm Kiếm</button>
					</div>
				</form>
			</div>
		</section>
		<!-- Bottom Search Form Section End -->

		<!-- ========== Begin: Brows job Category ===============  -->
		<section class="brows-job-category gray-bg">
			<div class="container">
				<!-- Sidebar Start -->
				<div class="col-md-3 col-sm-12">
					<div class="sidebar right-sidebar">

						<div class="side-widget">
							<h2 class="side-widget-title">Sắp xếp</h2>
							<div class="job-alert">
								<div class="widget-text">
									<form id="form-sort" action='<c:url value="jobs"></c:url>'>
										<select name="sortby" class="form-control">
											<option value="" disabled selected hidden>Sắp xếp
												theo</option>
											<option value="1">Theo lượt xem</option>
											<option value="2">Theo ngày đăng</option>
											<option value="3">Theo ngày kết thúc</option>
										</select> <select name="sortorder" class="form-control">
											<option value="" disabled selected hidden>Theo thứ
												tự</option>
											<option value="1">Tăng dần</option>
											<option value="2">Giảm dần</option>
										</select>
										<button type="submit" class="btn btn-alrt">Sắp xếp</button>
									</form>
								</div>
							</div>
						</div>

						<div class="side-widget">
							<h2 class="side-widget-title">Advertisment</h2>
							<div class="widget-text padd-0">
								<div class="ad-banner">
									<img src="http://via.placeholder.com/320x285"
										class="img-responsive" alt="">
								</div>
							</div>
						</div>

						<div class="side-widget">
							<h2 class="side-widget-title">Compensation</h2>
							<div class="widget-text padd-0">
								<ul>
									<li><span class="custom-checkbox"> <input
											type="checkbox" id="1"> <label for="1"></label>
									</span> Under $10,000 <span class="pull-right">102</span></li>
									<li><span class="custom-checkbox"> <input
											type="checkbox" id="2"> <label for="2"></label>
									</span> $10,000 - $15,000 <span class="pull-right">78</span></li>
									<li><span class="custom-checkbox"> <input
											type="checkbox" id="3"> <label for="3"></label>
									</span> $15,000 - $20,000 <span class="pull-right">12</span></li>
									<li><span class="custom-checkbox"> <input
											type="checkbox" id="4"> <label for="4"></label>
									</span> $20,000 - $30,000 <span class="pull-right">85</span></li>
									<li><span class="custom-checkbox"> <input
											type="checkbox" id="5"> <label for="5"></label>
									</span> $30,000 - $40,000 <span class="pull-right">307</span></li>
								</ul>
							</div>
						</div>

						<div class="side-widget">
							<h2 class="side-widget-title">
								<a href="#designation" data-toggle="collapse">Designation<i
									class="pull-right fa fa-angle-double-down" aria-hidden="true"></i></a>
							</h2>
							<div class="widget-text padd-0 collapse" id="designation">
								<ul>
									<li><span class="custom-checkbox"> <input
											type="checkbox" id="1"> <label for="1"></label>
									</span> Logo Designer <span class="pull-right">102</span></li>

									<li><span class="custom-checkbox"> <input
											type="checkbox" id="2"> <label for="2"></label>
									</span> Banner Developer <span class="pull-right">78</span></li>

									<li><span class="custom-checkbox"> <input
											type="checkbox" id="3"> <label for="3"></label>
									</span> UX/UI Designer <span class="pull-right">12</span></li>

									<li><span class="custom-checkbox"> <input
											type="checkbox" id="4"> <label for="4"></label>
									</span> Graphic Designer <span class="pull-right">85</span></li>

								</ul>
							</div>
						</div>

						<div class="side-widget">
							<h2 class="side-widget-title">
								<a href="#job-location" data-toggle="collapse">Location<i
									class="pull-right fa fa-angle-double-down" aria-hidden="true"></i></a>
							</h2>
							<div class="widget-text padd-0 collapse" id="job-location">
								<ul>
									<li><span class="custom-checkbox"> <input
											type="checkbox" id="1"> <label for="1"></label>
									</span> District 1 <span class="pull-right">102</span></li>

									<li><span class="custom-checkbox"> <input
											type="checkbox" id="2"> <label for="2"></label>
									</span> District 2 <span class="pull-right">78</span></li>

									<li><span class="custom-checkbox"> <input
											type="checkbox" id="3"> <label for="3"></label>
									</span> District 3 <span class="pull-right">12</span></li>

									<li><span class="custom-checkbox"> <input
											type="checkbox" id="4"> <label for="4"></label>
									</span> District 4 <span class="pull-right">85</span></li>

									<li><span class="custom-checkbox"> <input
											type="checkbox" id="5"> <label for="5"></label>
									</span> District 5 <span class="pull-right">307</span></li>

									<li><span class="custom-checkbox"> <input
											type="checkbox" id="6"> <label for="6"></label>
									</span> District 12 <span class="pull-right">256</span></li>

								</ul>
							</div>
						</div>


					</div>
				</div>
				<!-- Sidebar End -->
				<div class="col-md-9 col-sm-12">
					<div class="full-card">
						<div class="card-header">
							<div class="row mrg-0">
								<div class="col-md-4 col-sm-4">
									<select class="selectpicker form-control" multiple
										title="Job Type">
										<option>Full Time</option>
										<option>Part Time</option>
										<option>Freelancer</option>
										<option>Internship</option>
									</select>
								</div>
								<div class="col-md-4 col-sm-4 small-padd">
									<select class="selectpicker form-control" multiple
										title="All Categories">
										<option>Teacher Jobs</option>
										<option>Consultant Jobs</option>
										<option>IT Jobs</option>
										<option>Sales Jobs</option>
										<option>Graphic Designer Jobs</option>
									</select>
								</div>
								<div class="col-md-4 col-sm-4">
									<ol class="breadcrumb pull-right">
										<li><a href="#"><i class="fa fa-home"></i></a></li>
										<li class="active">Jobs</li>
									</ol>
								</div>
							</div>
						</div>

						<div class="card-body">
							<c:forEach var="job" items="${listJobs}">
								<article class="advance-search-job">
									<div class="row no-mrg">
										<div class="col-md-6 col-sm-6">
											<a
												href="${pageContext.request.contextPath}/job-detail?id_job=${job.id}"
												title="job Detail">
												<div class="advance-search-img-box">
													<img
														src='data:image/jpge;base64,<c:out value="${job.img}"></c:out>'
														class="img-responsive" alt="">
												</div>
											</a>
											<div class="advance-search-caption">
												<a
													href="${pageContext.request.contextPath}/job-detail?id_job=${job.id}"
													title="Job Dtail">
													<h4>
														<c:out value="${job.jobTitle }"></c:out>
													</h4>
												</a> <span> <c:out value="${job.ofAccount.fullname}"></c:out>
												</span>
											</div>
										</div>
										<div class="col-md-4 col-sm-4">
											<div class="advance-search-job-locat">
												<p>
													<i class="fa fa-map-marker"></i>
													<c:out value="${job.city }"></c:out>
												</p>
											</div>
										</div>
										<div class="col-md-2 col-sm-2">
											<a data-idjob="${job.id}" href="" data-toggle="modal"
												data-target="#apply-job" class="btn advance-search"
												title="apply">Ứng Tuyển</a>
											<!-- 												<a href="#" class="btn applied advance-search" title="applied"><i class="fa fa-check" aria-hidden="true"></i>Đã Ứng Tuyển</a>-->
										</div>
									</div>
									<!-- <span class="tg-themetag tg-featuretag">Ultimate</span> -->
								</article>
							</c:forEach>
						</div>
					</div>

					<c:if test="${totalPage>1}">
						<!-- 	SET VALUE PAGE -->
						<!-- 	jobtitle -->
						<c:if test="${jobtitle eq '' }">
							<c:set var="jobtitlehref" value=""></c:set>
						</c:if>
						<c:if test="${jobtitle ne '' }">
							<c:set var="jobtitlehref" value="jobtitle=${jobtitle}&"></c:set>
						</c:if>
						<!-- province -->
						<c:if test="${province eq '' }">
							<c:set var="provincehref" value=""></c:set>
						</c:if>
						<c:if test="${province ne '' }">
							<c:set var="provincehref" value="province=${province}&"></c:set>
						</c:if>
						<!-- major -->
						<c:if test="${major eq '' }">
							<c:set var="majorhref" value=""></c:set>
						</c:if>
						<c:if test="${major ne '' }">
							<c:set var="majorhref" value="major=${major}&"></c:set>
						</c:if>
						<!-- sortby -->
						<c:if test="${sortby eq '' }">
							<c:set var="sortbyhref" value=""></c:set>
						</c:if>
						<c:if test="${sortby ne '' }">
							<c:set var="sortbyhref" value="sortby=${sortby}&"></c:set>
						</c:if>
						<!--sortorder -->
						<c:if test="${sortorder eq '' }">
							<c:set var="sortorderhref" value=""></c:set>
						</c:if>
						<c:if test="${sortorder ne '' }">
							<c:set var="sortorderhref" value="sortorder=${sortorder}&"></c:set>
						</c:if>
						<div class="row">
							<ul class="pagination">
								<c:if test="${pageIndex !=1 }">
									<li><a
										href="<c:url value="jobs?${jobtitlehref}${provincehref}${majorhref}${sortbyhref}${sortorderhref}"></c:url>">Trang
											Đầu</a></li>
								</c:if>
								<c:if test="${previousPage!=-1}">
									<li><a
										href="<c:url value="jobs?page=${previousPage}&${jobtitlehref}${provincehref}${majorhref}${sortbyhref}${sortorderhref}"></c:url>">&laquo;</a></li>
								</c:if>
								<c:forEach var="i" begin="${startPageIndex}"
									end="${endPageIndex}">
									<c:if test="${i==pageIndex }">
										<li class="active"><a
											href="<c:url value="jobs?page=${i}&${jobtitlehref}${provincehref}${majorhref}${sortbyhref}${sortorderhref}"></c:url>"><c:out
													value="${i}"></c:out></a></li>
									</c:if>
									<c:if test="${i!=pageIndex }">
										<li><a
											href="<c:url value="jobs?page=${i}&${jobtitlehref}${provincehref}${majorhref}${sortbyhref}${sortorderhref}"></c:url>"><c:out
													value="${i}"></c:out></a></li>
									</c:if>
								</c:forEach>
								<c:if test="${endPageIndex<totalPage}">
									<li><a
										href="<c:url value="jobs?page=${endPageIndex+1}&${jobtitlehref}${provincehref}${majorhref}${sortbyhref}${sortorderhref}"></c:url>"><i
											class="fa fa-ellipsis-h"></i></a></li>
								</c:if>
								<c:if test="${nextPage!=-1}">
									<li><a
										href="<c:url value="jobs?page=${nextPage}&${jobtitlehref}${provincehref}${majorhref}${sortbyhref}${sortorderhref}">
															</c:url>">&raquo;</a></li>
								</c:if>
								<c:if test="${pageIndex !=totalPage }">
									<li><a
										href="<c:url value="jobs?page=${totalPage}&${jobtitlehref}${provincehref}${majorhref}${sortbyhref}${sortorderhref}"></c:url>">Trang
											Cuối</a></li>
								</c:if>
							</ul>
						</div>
					</c:if>

					<!-- Ad banner -->
					<div class="row">
						<div class="ad-banner">
							<img src="http://via.placeholder.com/728x90"
								class="img-responsive" alt="">
						</div>
					</div>
				</div>



			</div>
		</section>
		<!-- ========== Begin: Brows job Category End ===============  -->

		<!-- Footer Section Start -->
		<footer class="footer">
			<tiles:insertAttribute name="footer"></tiles:insertAttribute>
		</footer>
		<div class="clearfix"></div>
		<!-- Footer Section End -->
		<!-- Apply Form Code -->
		<div class="modal fade" id="apply-job" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel2" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
						<div class="apply-job-box">
							<img src="assets/img/com-1.jpg" class="img-responsive" alt="">
							<h4>Product Designer</h4>
							<p>Google Pvt.</p>
						</div>
						<div class="apply-job-form">
							<form class="form-inline" accept-charset="UTF-8"
								action="${pageContext.request.contextPath}/applyjob"
								enctype="multipart/form-data" method="post">
								<div class="col-sm-12">
									<div class="form-group">
										<input type="hidden" value="${job.id}" name="idJob" /> <input
											type="text" name="fullname" class="form-control"
											placeholder="Your Name" required=""> <input
											type="email" name="email" class="form-control"
											placeholder="Your Email" required="">
										<textarea class="form-control" name="about"
											placeholder="About You / Paste your CV"></textarea>
										<div class="fileUpload">
											<span>Upload CV</span> <input type="file" name="cv"
												class="upload" />
										</div>
										<div class="center">
											<button type="submit" id="subscribe" class="submit-btn">
												Apply Now</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Apply Form -->

		<!-- End Apply Form -->
		<button class="w3-button w3-teal w3-xlarge w3-right"
			onclick="openRightMenu()">
			<i class="spin fa fa-cog" aria-hidden="true"></i>
		</button>
		<div class="w3-sidebar w3-bar-block w3-card-2 w3-animate-right"
			style="display: none; right: 0;" id="rightMenu">
			<button onclick="closeRightMenu()"
				class="w3-bar-item w3-button w3-large">Close &times;</button>
			<ul id="styleOptions" title="switch styling">
				<li><a href="javascript: void(0)" class="cl-box blue"
					data-theme="colors/blue-style"></a></li>
				<li><a href="javascript: void(0)" class="cl-box red"
					data-theme="colors/red-style"></a></li>
				<li><a href="javascript: void(0)" class="cl-box purple"
					data-theme="colors/purple-style"></a></li>
				<li><a href="javascript: void(0)" class="cl-box green"
					data-theme="colors/green-style"></a></li>
				<li><a href="javascript: void(0)" class="cl-box dark-red"
					data-theme="colors/dark-red-style"></a></li>
				<li><a href="javascript: void(0)" class="cl-box orange"
					data-theme="colors/orange-style"></a></li>
				<li><a href="javascript: void(0)" class="cl-box sea-blue"
					data-theme="colors/sea-blue-style "></a></li>
				<li><a href="javascript: void(0)" class="cl-box pink"
					data-theme="colors/pink-style"></a></li>
			</ul>
		</div>

		<!-- Scripts
			================================================== -->
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/jquery.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/viewportchecker.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/bootstrap.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/bootsnav.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/select2.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/wysihtml5-0.3.0.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/bootstrap-wysihtml5.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/datedropper.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/dropzone.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/loader.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/owl.carousel.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/slick.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/gmap3.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/plugins/js/jquery.easy-autocomplete.min.js"></script>
		<script type="text/javascript">
							function updateAddress() {
								<c:if test="${not empty province}">
								$("select[name='address.province']").val("${province}").change();
								$("select[name='address.province']")[0].dispatchEvent(new Event('change'));
								</c:if>
							}
						</script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/js/vietnamlocalselector.js"></script>

		<!-- Custom Js -->
		<script
			src="${pageContext.request.contextPath}/resources/assets/js/custom.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/js/jQuery.style.switcher.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/js/js-custom-setting.js"></script>
		<script type="text/javascript">
							$(document).ready(function () {
								$('#styleOptions').styleSwitcher();
							});
						</script>
		<script>
							function openRightMenu() {
								document.getElementById("rightMenu").style.display = "block";
							}

							function closeRightMenu() {
								document.getElementById("rightMenu").style.display = "none";
							}
						</script>
		<script type="text/javascript">

							$(document).ready(function () {
								const query = location.search;
								if ('${major}' != '') {
									$('[name="major"]').val('${major}');
								}
								if ('${sortby}' != '') {
									$('[name="sortby"]').val('${sortby}');
								}
								if ('${sortorder}' != '') {
									$('[name="sortorder"]').val('${sortorder}');
								}

								var isNull = (value) => {
									return value === null || value === '' || value.trim() === '';
								};
								var isZero = (value) => {
									return value == '0' || value === '' || value === null;
								};
								var createURLForFormSort = () => {
									var sortby = $('[name="sortby"]').val();
									var sortorder = $('[name="sortorder"]').val();
									var rs = new URLSearchParams();
									var params = new URLSearchParams(query);
									if (params.has('jobtitle')) {
										if (params.get('jobtitle') != '') {
											rs.append('jobtitle', '${jobtitle}');
										}
									}
									if (params.has('province')) rs.append('province', '${province}');
									if (params.has('major')) rs.append('major', '${major}');
									rs.append('sortby', sortby);
									rs.append('sortorder', sortorder);
									return rs;
								};
								var createURLForFormCategory=()=>{
									var jobtitle = $('[name="jobtitle"]').val();
									var province = $('[name="address.province"]').val();
									var major = $('[name="major"]').val();
									var rs = new URLSearchParams();
									var params = new URLSearchParams(query);
									if (params.has('sortby')) rs.append('sortby', '${sortby}');
									if (params.has('sortorder')) rs.append('sortorder', '${sortorder}');
									if(!isNull(jobtitle)) rs.append('jobtitle',jobtitle);
									if(!isNull(province)) rs.append('province',province);
									if(!isNull(major)) rs.append('major',major);
									return rs;
								}
								$('#form-category').submit(function (e) {
									e.preventDefault();
									var jobtitle = $('[name="jobtitle"]').val();
									var province = $('[name="address.province"]').val();
									var major = $('[name="major"]').val();
									if (!isNull(jobtitle) || !isNull(province) || !isNull(major)) {
										location.search = createURLForFormCategory().toString();
									}

								});
								$('#form-sort').submit(function (e) {
									e.preventDefault();
									var sortby = $('[name="sortby"]').val();
									var sortorder = $('[name="sortorder"]').val();
									if (!isZero(sortby) && !isZero(sortorder)) {
										location.search = createURLForFormSort().toString();
									}
								});
								
								//form setting apply job
								$('#apply-job').on('show.bs.modal', function (e) {
								    var id_job = $(e.relatedTarget).data('idjob');
								    
								    $("input[name='idJob']").val(id_job);
								    
								});

							});
						</script>

	</div>
</body>

<!-- search-new41:42-->

</html>