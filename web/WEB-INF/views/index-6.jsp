<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<jsp:useBean id="stringHelper" class="customutil.StringHelper" />
<jsp:useBean id="jobModel" class="model.Job" />
<!doctype html>
<html lang="en">
<!-- index-540:42-->
<head>
<!-- Basic Page Needs==================================================-->
<title><tiles:getAsString name="title"></tiles:getAsString></title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS==================================================-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/plugins/css/plugins.css">
<link
	href="${pageContext.request.contextPath}/resources/assets/css/style.css"
	rel="stylesheet">
<link type="text/css"
	rel="${pageContext.request.contextPath}/resources/stylesheet"
	id="jssDefault"
	href="${pageContext.request.contextPath}/resources/assets/css/colors/green-style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/css-header.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/plugins/js/jquery.min.js"></script>

</head>
<body>
	<c:url value="/hoadon" var="urlThanhtoan" />
	<c:url value="/job-detail" var="urljob-detail" />
	<div class="Loader"></div>
	<div class="wrapper">
		<nav
			class="navbar navbar-default navbar-fixed navbar-light white bootsnav">
			<tiles:insertAttribute name="header"></tiles:insertAttribute>
		</nav>
		<div class="clearfix"></div>
		<div class="banner home-5"
			style="background-image:url(${pageContext.request.contextPath}/resources/assets/img/6604.jpg);">
			<div class="container">
				<div class="banner-caption">
					<div class="col-md-12 col-sm-12 banner-text">
						<h1>
							<c:out value="${numberJobIsOpen}"></c:out>
							Công Việc Đang Đợi Bạn
						</h1>

						<form id="form-category" class="form-horizontal">
							<div class="col-md-4 no-padd">
								<div class="input-group">
									<input type="text" class="form-control right-bor" id="joblist"
										name="jobtitle" placeholder="Tên Công Việc">
								</div>
							</div>
							<div hidden="true" class="col-md-4 col-sm-6">
								<label>Quận / Huyện</label> <select name="address.district"
									class="form-control" id="huyen"></select>
							</div>
							<div hidden="true" class="col-md-4 col-sm-6">
								<label>Xã Phường</label> <select name="address.ward"
									class="form-control" id="xa"></select>
							</div>
							<div class="col-md-3 no-padd">
								<div class="input-group">
									<select name="address.province" class="form-control" id="tinh"></select>
								</div>
							</div>
							<div class="col-md-3 no-padd">
								<div class="input-group">
									<select name="major" class="form-control">
										<option value="" disabled selected hidden>Chọn Lĩnh
											Vực</option>
										<c:forEach var="major" items="${listMajors}">
											<option value='<c:out value="${major.id}"></c:out>'>
												<c:out value="${major.name}"></c:out>
											</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="col-md-2 no-padd">
								<div class="input-group">
									<button type="submit" class="btn btn-primary">Tìm
										Kiếm</button>
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<section>
			<div class="container">
				<div class="row">
					<div class="main-heading">
						<p>20 Công Việc Mới</p>

						<h2>
							Công Việc <span>Mới</span>
						</h2>
					</div>
				</div>
				<!-- Job List -->
				<div class="row extra-mrg">
					<c:if test="${listJobsForIndex.size()>0}">
						<c:forEach var="listjob" items="${listJobsForIndex}">
							<div class="col-md-3 col-sm-6">
								<a
									href="${pageContext.request.contextPath}/job-detail?id_job=${listjob.id}">
									<div class="grid-view brows-job-list">
										<div class="brows-job-company-img">
											<img style="max-width: 100%; border-radius: 100%"
												src='data:image/jpge;base64,${listjob.img}'
												class="img-responsive" alt="" />
										</div>

										<div class="brows-job-position">
											<h3><c:out value="${stringHelper.limitWords(listjob.jobTitle,20)}"></c:out></h3>
											<p>
												<span>Kinh nghiệm: <c:out value="${stringHelper.limitWords(listjob.exp,20)}"></c:out></span>
											</p>
										</div>

										<div class="job-position">
											<span class="job-num">Cần Tuyển ${listjob.soluongtuyen} </span>
										</div>
										<div class="brows-job-type">
											<span class="freelanc"><c:out value="${listjob.toStringTypeEng()}"></c:out></span>
										</div>
										<ul class="grid-view-caption">
											<li>
												<div class="brows-job-location">
													<p>
														<i class="fa fa-map-marker"></i>${listjob.city}
													</p>
												</div>
											</li>
											<li>
												<!-- <p>
													<span class="brows-job-sallery"><i
														class="fa fa-money"></i> VNĐ</span>
												</p> -->
											</li>
										</ul>
										<!-- <span class="tg-themetag tg-featuretag">UlTIMATE</span> -->
									</div>
								</a>
							</div>
						</c:forEach>
					</c:if>

				</div>
				<div class="row">
					<div class="main-heading">
						<a href='<c:url value="jobs"></c:url>'>
							<h3>Xem Thêm</h3>
						</a>
					</div>
				</div>

			</div>
		</section>
		<div class="clearfix"></div>
		<div class="clearfix"></div>
		<section class="wp-process">
			<div class="container">
				<div class="row">
					<div class="main-heading">
						<p>How We Work</p>

						<h2>
							Our Work <span>Process</span>
						</h2>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="work-process">
						<div class="work-process-icon">
							<span class="icon-search"></span>
						</div>
						<div class="work-process-caption">
							<h4>Search Job</h4>

							<p>Aliquam vestibulum cursus felis. In iaculis iaculis sapien
								ac condimentum. Vestibulum congue posuere lacus</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="work-process">
						<div class="work-process-icon">
							<span class="icon-mobile"></span>
						</div>
						<div class="work-process-caption">
							<h4>Find Job</h4>

							<p>Aliquam vestibulum cursus felis. In iaculis iaculis sapien
								ac condimentum. Vestibulum congue posuere lacus</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="work-process">
						<div class="work-process-icon">
							<span class="icon-profile-male"></span>
						</div>
						<div class="work-process-caption">
							<h4>Hire Employee</h4>

							<p>Aliquam vestibulum cursus felis. In iaculis iaculis sapien
								ac condimentum. Vestibulum congue posuere lacus</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="work-process">
						<div class="work-process-icon">
							<span class="icon-layers"></span>
						</div>
						<div class="work-process-caption">
							<h4>Start Work</h4>

							<p>Aliquam vestibulum cursus felis. In iaculis iaculis sapien
								ac condimentum. Vestibulum congue posuere lacus</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="work-process">
						<div class="work-process-icon">
							<span class="icon-wallet"></span>
						</div>
						<div class="work-process-caption">
							<h4>Pay Money</h4>

							<p>Aliquam vestibulum cursus felis. In iaculis iaculis sapien
								ac condimentum. Vestibulum congue posuere lacus</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="work-process">
						<div class="work-process-icon">
							<span class="icon-happy"></span>
						</div>
						<div class="work-process-caption">
							<h4>Happy</h4>

							<p>Aliquam vestibulum cursus felis. In iaculis iaculis sapien
								ac condimentum. Vestibulum congue posuere lacus</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class="clearfix"></div>
		<section class="testimonial" id="testimonial">
			<div class="container">
				<div class="row">
					<div class="main-heading">
						<p>What Say Our Client</p>

						<h2>
							Our Success <span>Stories</span>
						</h2>
					</div>
				</div>
				<div class="row">
					<div id="client-testimonial-slider" class="owl-carousel">
						<div class="client-testimonial">
							<div class="pic">
								<img
									src="${pageContext.request.contextPath}/resources/assets/img/client-1.jpg"
									alt="">
							</div>
							<p class="client-description">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit, sed do eiusmod tempor et dolore
								magna aliqua.</p>

							<h3 class="client-testimonial-title">Lacky Mole</h3>
							<ul class="client-testimonial-rating">
								<li class="fa fa-star-o"></li>
								<li class="fa fa-star-o"></li>
								<li class="fa fa-star"></li>
							</ul>
						</div>
						<div class="client-testimonial">
							<div class="pic">
								<img
									src="${pageContext.request.contextPath}/resources/assets/img/client-2.jpg"
									alt="">
							</div>
							<p class="client-description">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit, sed do eiusmod tempor et dolore
								magna aliqua.</p>

							<h3 class="client-testimonial-title">Karan Wessi</h3>
							<ul class="client-testimonial-rating">
								<li class="fa fa-star-o"></li>
								<li class="fa fa-star"></li>
								<li class="fa fa-star"></li>
							</ul>
						</div>
						<div class="client-testimonial">
							<div class="pic">
								<img
									src="${pageContext.request.contextPath}/resources/assets/img/client-3.jpg"
									alt="">
							</div>
							<p class="client-description">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit, sed do eiusmod tempor et dolore
								magna aliqua.</p>

							<h3 class="client-testimonial-title">Roul Pinchai</h3>
							<ul class="client-testimonial-rating">
								<li class="fa fa-star-o"></li>
								<li class="fa fa-star-o"></li>
								<li class="fa fa-star"></li>
							</ul>
						</div>
						<div class="client-testimonial">
							<div class="pic">
								<img
									src="${pageContext.request.contextPath}/resources/assets/img/client-4.jpg"
									alt="">
							</div>
							<p class="client-description">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit, sed do eiusmod tempor et dolore
								magna aliqua.</p>

							<h3 class="client-testimonial-title">Adam Jinna</h3>
							<ul class="client-testimonial-rating">
								<li class="fa fa-star-o"></li>
								<li class="fa fa-star-o"></li>
								<li class="fa fa-star"></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
		<c:if
			test="${not empty sessionScope.currentAccount && sessionScope.currentAccount.role == 1}">
			<section class="pricing">
				<div class="container">
					<div class="row">
						<div class="main-heading">
							<p>Check Our Packages</p>

							<h2>
								Our Best <span>Offers</span>
							</h2>
						</div>
					</div>
					<c:if test="${not empty danhsachgoi}">
						<c:forEach var="goi" items="${danhsachgoi}">
							<div class="col-md-4 col-sm-4">
								<div class="pr-table">
									<div class="pr-header active">
										<div class="pr-plan">
											<h4>${goi.tengoi}</h4>
										</div>
										<div class="pr-price">
											<h3>
												${goi.gia}<sub>VNĐ</sub>
											</h3>
										</div>
									</div>
									<div class="pr-features">
										<ul>
											<li>Thời hạn : ${goi.thoihan} ngày</li>
											<li>Giới hạn bài đăng : ${goi.soluongbaidang} bài</li>
											<li>${goi.mota}</li>
										</ul>
									</div>
									<div class="pr-buy-button">
										<a OnClick="return confirm('gói bài đăng này sẽ thay thế gói bạn đang dùng. Bạn chắc chắn muốn mua gói bài đăng này')" href="${urlThanhtoan}?id=${goi.id}" class="pr-btn active"
											title="Price Button">Mua</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>

				</div>
			</section>
		</c:if>
		<div class="clearfix"></div>

		<div class="clearfix"></div>

		<footer class="footer">
			<tiles:insertAttribute name="footer"></tiles:insertAttribute>
		</footer>
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
		<!-- Scripts==================================================-->
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
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/resources/assets/js/vietnamlocalselector.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/js/js-custom-setting.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/js/custom.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/js/jQuery.style.switcher.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
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
		
			$(document).ready(function() {
				var isNull = (value) => {
					return value === null || value === '' || value.trim() === '';
				};
				var createURLForFormCategory=()=>{
					var jobtitle = $('[name="jobtitle"]').val();
					var province = $('[name="address.province"]').val();
					var major = $('[name="major"]').val();
					var rs = new URLSearchParams();
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
						window.location.href = "${pageContext.request.contextPath}/jobs?"+createURLForFormCategory().toString();
					}
				});
			});
		</script>
	</div>
</body>
<!-- index-540:45-->
</html>