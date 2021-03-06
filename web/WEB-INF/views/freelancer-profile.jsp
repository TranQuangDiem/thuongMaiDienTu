<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:importAttribute name="stylesheets"/>
<tiles:importAttribute name="javascripts"/>
<!doctype html>
<html lang="en">

<!-- employer-profile41:42-->
<head>
	<!-- Basic Page Needs
	================================================== -->
	<title>Job Stock - Responsive Job Portal Bootstrap Template</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	
	<!-- CSS -->
	<c:forEach var="css" items="${stylesheets}">
       <link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
    </c:forEach>
    <!-- Custom style -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/js/jquery.min.js"></script>
    
	</head>
	<body>
		<div class="Loader"></div>
		<div class="wrapper">  
			
			<!-- Start Navigation -->
			<nav class="navbar navbar-default navbar-fixed navbar-light white bootsnav">
				<tiles:insertAttribute name="header"></tiles:insertAttribute>
			</nav>
			<!-- End Navigation -->
			<div class="clearfix"></div>
			
			<!-- Title Header Start -->
			<section class="inner-header-title" style="background-image:url('data:image/png;base64,${freelancer.backgroundBase64}');">
				<div class="container">
					<h1></h1>
				</div>
			</section>
			<div class="clearfix"></div>
			<!-- Title Header End -->
		
		<!-- Candidate Profile Start -->
        <section class="detail-desc advance-detail-pr gray-bg">
            <div class="container white-shadow">
                <div class="row">
                    <div class="detail-pic"><img src="data:image/png;base64,${freelancer.imageBase64}" class="img" alt="" /><a href="#" class="detail-edit" title="edit"></a></div>
                    <div class="detail-status"><span id="span-hire-freelancer">Đang tuyển dụng</span></div>
                </div>
				
                <div class="row bottom-mrg">
                    <div class="col-md-12 col-sm-12">
                        <div class="advance-detail detail-desc-caption">
                            <h4>${freelancer.fullname}</h4><span class="designation">${freelancer.major}</span>
                            <ul>
                                <li><strong class="j-view">${freelancer.countJob}</strong>Công việc đã nhận</li>
                                <li><strong class="j-applied">${freelancer.countJobFinish}</strong>Công Việc Hoàn Thành</li>
                                <li><strong id="starAverage" class="j-shared rate-custom">${freelancer.starAverage}<i class="fa fa-star"></i></strong>Đánh Giá</li>
                            </ul>
                        </div>
                    </div>
                </div>
				
                <div class="row no-padd">
                    <div class="detail pannel-footer">
                        <div class="col-md-5 col-sm-5">
                            <ul class="detail-footer-social">
								<li><a title="Trang Facebook" href="${freelancer.facebook}"><i class="fa fa-facebook"></i></a></li>
								<li><a title="Trang Twitter" href="${freelancer.twitter}"><i class="fa fa-twitter"></i></a></li>
								<li><a title="Trang Web" href="${freelancer.website}"><i class="fa fa-globe"></i></i></a></li>
                            </ul>
                        </div>
                        <div class="col-md-7 col-sm-7">
                            <div class="detail-pannel-footer-btn pull-right"><a href="javascript:void(0)" data-toggle="modal" data-target="#apply-job" class="footer-btn grn-btn" style="display: none;" title="">Chỉnh Sửa</a><a href="#" class="footer-btn blu-btn" style="display: none;" title="">Save Draft</a></div>
                        </div>
                    </div>
                </div>
				
            </div>
        </section>
		
        <section class="full-detail-description full-detail gray-bg">
            <div class="container">
                <div class="col-md-12 col-sm-12">
                    <div class="full-card">
                      <div class="deatil-tab-employ tool-tab">
							<ul class="nav simple nav-tabs" id="simple-design-tab">
								<li class="active" ><a href="#about" style="padding-left: 14px; padding-right: 14px;">Thông Tin Cá Nhân</a></li>
								<li><a href="#address">Địa Chỉ</a></li>
								<li><a href="#post-job">Công Việc Đã Nhận</a></li>
								<li><a style="display: none;" href="#friends">Friends</a></li>
								<li><a href="#rate">Đánh Giá <span class="info-bar">5</span></a></li>
								<li><a href="#settings">Cài Đặt</a></li>
								<li><a href="#save-job">Công Việc Đã lưu</a></li>
								<li><a href="#job-finish">Hoàn Thành</a></li>
							</ul>
							<!-- Start All Sec -->
							<div class="tab-content">
								<!-- Start About Sec -->
								<div id="about" class="tab-pane fade in active">
									<h3>About Freelancer ${freelancer.username}</h3>
									<!-- About -->
									${freelancer.about}
								</div>
								<!-- End About Sec -->
								
								<!-- Start Address Sec -->
								<div id="address" class="tab-pane fade">
									<h3>Thông tin liên hệ</h3>
									<ul class="job-detail-des">
										<li><span>Địa chỉ:</span>${freelancer.address.detailAddress}</li>
										<li><span>Tỉnh / Thành Phố:</span>${freelancer.address.province}</li>
										<li><span>Quận / Huyện:</span>${freelancer.address.district}</li>
										<li><span>Phường / Xã:</span>${freelancer.address.ward}</li>
										<li><span>Điện Thoại:</span>${freelancer.phone}</li>
										<li><span>Email:</span>${freelancer.email}</li>
									</ul>
								</div>
								<!-- End Address Sec -->
								
								<!-- Start Job List -->
								<tiles:insertAttribute name="job-list"/>
								<!-- End Job List -->
								
								<!-- Start Friend List -->
								<div id="friends" class="tab-pane fade">
									<div class="row">
										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status pending">Pending</div>
												<div class="cndt-caption">
													<div class="cndt-pic"><img src="${pageContext.request.contextPath}/resources/assets/img/can-1.png" class="img-responsive" alt=""></div>
													<h4>Charles Hopman</h4><span>Web designer</span>
													<p>Our analysis team at Megriosft use end to end innovation proces</p>
												</div><a href="#" title="" class="cndt-profile-btn">View Profile</a>
											</div>
										</div>
										
										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status available">Available</div>
												<div class="cndt-caption">
													<div class="cndt-pic"><img src="${pageContext.request.contextPath}/resources/assets/img/can-2.png" class="img-responsive" alt=""></div>
													<h4>Ethan Marion</h4><span>IOS designer</span>
													<p>Our analysis team at Megriosft use end to end innovation proces</p>
												</div><a href="#" title="" class="cndt-profile-btn">View Profile</a>
											</div>
										</div>
										
										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status pending">Pending</div>
												<div class="cndt-caption">
													<div class="cndt-pic"><img src="${pageContext.request.contextPath}/resources/assets/img/can-3.png" class="img-responsive" alt=""></div>
													<h4>Zara Clow</h4><span>UI/UX designer</span>
													<p>Our analysis team at Megriosft use end to end innovation proces</p>
												</div><a href="#" title="" class="cndt-profile-btn">View Profile</a>
											</div>
										</div>
										
										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status pending">Pending</div>
												<div class="cndt-caption">
													<div class="cndt-pic"><img src="${pageContext.request.contextPath}/resources/assets/img/can-4.png" class="img-responsive" alt=""></div>
													<h4>Henry Crooks</h4><span>PHP Developer</span>
													<p>Our analysis team at Megriosft use end to end innovation proces</p>
												</div><a href="#" title="" class="cndt-profile-btn">View Profile</a>
											</div>
										</div>
										
										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status available">Available</div>
												<div class="cndt-caption">
													<div class="cndt-pic"><img src="${pageContext.request.contextPath}/resources/assets/img/can-2.png" class="img-responsive" alt=""></div>
													<h4>Joseph Macfarlan</h4><span>App Developer</span>
													<p>Our analysis team at Megriosft use end to end innovation proces</p>
												</div><a href="#" title="" class="cndt-profile-btn">View Profile</a>
											</div>
										</div>
										
										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status pending">Pending</div>
												<div class="cndt-caption">
													<div class="cndt-pic"><img src="${pageContext.request.contextPath}/resources/assets/img/can-1.png" class="img-responsive" alt=""></div>
													<h4>Zane Joyner</h4><span>Html Expert</span>
													<p>Our analysis team at Megriosft use end to end innovation proces</p>
												</div><a href="#" title="" class="cndt-profile-btn">View Profile</a>
											</div>
										</div>
										
										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status pending">Pending</div>
												<div class="cndt-caption">
													<div class="cndt-pic"><img src="${pageContext.request.contextPath}/resources/assets/img/can-3.png" class="img-responsive" alt=""></div>
													<h4>Anna Hoysted</h4><span>UI/UX Designer</span>
													<p>Our analysis team at Megriosft use end to end innovation proces</p>
												</div><a href="#" title="" class="cndt-profile-btn">View Profile</a>
											</div>
										</div>
										
										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status available">Available</div>
												<div class="cndt-caption">
													<div class="cndt-pic"><img src="${pageContext.request.contextPath}/resources/assets/img/can-4.png" class="img-responsive" alt=""></div>
													<h4>Spencer Birdseye</h4><span>SEO Expert</span>
													<p>Our analysis team at Megriosft use end to end innovation proces</p>
												</div><a href="#" title="" class="cndt-profile-btn">View Profile</a>
											</div>
										</div>
										
										<div class="col-md-4 col-sm-4">
											<div class="manage-cndt">
												<div class="cndt-status pending">Pending</div>
												<div class="cndt-caption">
													<div class="cndt-pic"><img src="${pageContext.request.contextPath}/resources/assets/img/can-1.png" class="img-responsive" alt=""></div>
													<h4>Eden Macaulay</h4><span>Web designer</span>
													<p>Our analysis team at Megriosft use end to end innovation proces</p>
												</div><a href="#" title="" class="cndt-profile-btn">View Profile</a>
											</div>
										</div>
										
										<div class="row">
											<ul class="pagination">
												<li><a href="#">«</a></li>
												<li class="active"><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#"><i class="fa fa-ellipsis-h"></i></a></li>
												<li><a href="#">»</a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- End Friend List -->
								
								<!-- Start Message -->
								<tiles:insertAttribute name="evaluate" />
									
								
								
								
								<!-- End Message -->
								
								<!-- Start Settings -->
								<tiles:insertAttribute name="settings" />
								<!-- End Settings -->
								<!-- Công việc Đã lưu -->
								<div id="save-job" class="tab-pane fade">
	<!-- <h3>You have 22 job post</h3> -->
	<div id="jobsave" class="row">
	<c:if test="${empty savejob}">
	<h1>Chưa có công việc được lưu</h1>
	</c:if>
	<c:if test="${not empty savejob}">
									<c:forEach var="listjob1" items="${savejob}">
		<article>
			<div class="mng-company">
			<a href="${pageContext.request.contextPath}/job-detail?id_job=${listjob1.id}">
				<div class="col-md-2 col-sm-2">
					<div class="mng-company-pic"><img src='data:image/jpge;base64,${listjob1.img}' class="img-responsive" alt=""></div>
				</div>
				
				<div class="col-md-5 col-sm-5">
					<div class="mng-company-name">
						<!-- <h4>Autodesk <span class="cmp-tagline">(Software Company)</span></h4><span class="cmp-time">10 Hour Ago</span></div> -->
						<h4>${listjob1.jobTitle}</h4>
						</div>
				</div>
				</a>
				<div class="col-md-4 col-sm-4">
					<div class="mng-company-location">
						<p><i class="fa fa-map-marker"></i> ${listjob1.city}</p>
					</div>
				</div>
				
				<div class="col-md-1 col-sm-1">
					<div class="mng-company-action"><a href="<c:url value="/deletejob"/>?id_job=${listjob1.id}&idAccount=${freelancer.id}"><i class="fa fa-trash-o"></i></a></div>
				</div>
				
			</div>
	<!-- 		<span class="tg-themetag tg-featuretag">Premium</span> -->
		</article>
		</c:forEach>
								</c:if>
		
	</div>
	<!-- <div class="row">
		<ul class="pagination">
			<li><a href="#">«</a></li>
			<li class="active"><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#"><i class="fa fa-ellipsis-h"></i></a></li>
			<li><a href="#">»</a></li>
		</ul>
	</div> -->
</div>
								<!-- End công việc đã lưu -->
								<!-- Start công việc đã hoàn thành -->
								<div id="job-finish" class="tab-pane fade">
	<div id="jobfinish" class="row">
	<c:if test="${empty listjob2}">
	<h1>Chưa có công việc được hoàn thành</h1>
	</c:if>
	<c:if test="${not empty listjob2}">
									<c:forEach var="listjob2" items="${listjob2}">
		<article>
			<div class="mng-company">
			<a href="${pageContext.request.contextPath}/job-detail?id_job=${listjob2.id}">
				<div class="col-md-2 col-sm-2">
					<div class="mng-company-pic"><img src='data:image/jpge;base64,${listjob2.img}' class="img-responsive" alt=""></div>
				</div>
				
				<div class="col-md-5 col-sm-5">
					<div class="mng-company-name">
						<!-- <h4>Autodesk <span class="cmp-tagline">(Software Company)</span></h4><span class="cmp-time">10 Hour Ago</span></div> -->
						<h4>${listjob2.jobTitle}</h4>
						</div>
				</div>
				</a>
				<div class="col-md-4 col-sm-4">
					<div class="mng-company-location">
						<p><i class="fa fa-map-marker"></i> ${listjob2.city}</p>
					</div>
				</div>
				
				<div class="col-md-1 col-sm-1">
					<div class="mng-company-action"></div>
				</div>
				
				
			</div>
	<!-- 		<span class="tg-themetag tg-featuretag">Premium</span> -->
		</article>
		</c:forEach>
								</c:if>
		
	</div>
	<!-- <div class="row">
		<ul class="pagination">
			<li><a href="#">«</a></li>
			<li class="active"><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#"><i class="fa fa-ellipsis-h"></i></a></li>
			<li><a href="#">»</a></li>
		</ul>
	</div> -->
</div>
</div>
						<!-- End công việc đã hoàn thành -->
								
								
							</div>
							<!-- Start All Sec -->
						</div>  
                    </div>
                </div>
            </div>
        </section>
			<!-- Footer Section Start -->
			<footer class="footer">
				<tiles:insertAttribute name="footer"></tiles:insertAttribute>
			</footer>
			<div class="clearfix"></div>
			<!-- Footer Section End -->
			
			<!-- Sign Up Window Code -->
			<div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-body">
							<div class="tab" role="tabpanel">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#login" role="tab" data-toggle="tab">Sign In</a></li>
								<li role="presentation"><a href="#register" role="tab" data-toggle="tab">Sign Up</a></li>
							</ul>
							<!-- Tab panes -->
							<div class="tab-content" id="myModalLabel2">
								<div role="tabpanel" class="tab-pane fade in active" id="login">
									<img src="${pageContext.request.contextPath}/resources/assets/img/logo.png" class="img-responsive" alt="" />
									<div class="subscribe wow fadeInUp">
										<form class="form-inline" method="post">
											<div class="col-sm-12">
												<div class="form-group">
													<input type="email"  name="email" class="form-control" placeholder="Username" required="">
													<input type="password" name="password" class="form-control"  placeholder="Password" required="">
													<div class="center">
													<button type="submit" id="login-btn" class="submit-btn"> Login </button>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>

								<div role="tabpanel" class="tab-pane fade" id="register">
								<img src="${pageContext.request.contextPath}/resources/assets/img/logo.png" class="img-responsive" alt="" />
									<form class="form-inline" method="post">
											<div class="col-sm-12">
												<div class="form-group">
													<input type="text"  name="email" class="form-control" placeholder="Your Name" required="">
													<input type="email"  name="email" class="form-control" placeholder="Your Email" required="">
													<input type="email"  name="email" class="form-control" placeholder="Username" required="">
													<input type="password" name="password" class="form-control"  placeholder="Password" required="">
													<div class="center">
													<button type="submit" id="subscribe" class="submit-btn"> Create Account </button>
													</div>
												</div>
											</div>
										</form>
								</div>
							</div>
							</div>
						</div>
						</div>
				</div>
			</div>   
			<!-- End Sign Up Window -->
			
			<button class="w3-button w3-teal w3-xlarge w3-right" onclick="openRightMenu()"><i class="spin fa fa-cog" aria-hidden="true"></i></button>
			<div class="w3-sidebar w3-bar-block w3-card-2 w3-animate-right" style="display:none;right:0;" id="rightMenu">
				<button onclick="closeRightMenu()" class="w3-bar-item w3-button w3-large">Close &times;</button>
				<ul id="styleOptions" title="switch styling">
					<li>
						<a href="javascript: void(0)" class="cl-box blue" data-theme="colors/blue-style"></a>
					</li>
					<li>
						<a href="javascript: void(0)" class="cl-box red" data-theme="colors/red-style"></a>
					</li>
					<li>
						<a href="javascript: void(0)" class="cl-box purple" data-theme="colors/purple-style"></a>
					</li>
					<li>
						<a href="javascript: void(0)" class="cl-box green" data-theme="colors/green-style"></a>
					</li>
					<li>
						<a href="javascript: void(0)" class="cl-box dark-red" data-theme="colors/dark-red-style"></a>
					</li>
					<li>
						<a href="javascript: void(0)" class="cl-box orange" data-theme="colors/orange-style"></a>
					</li>
					<li>
						<a href="javascript: void(0)" class="cl-box sea-blue" data-theme="colors/sea-blue-style "></a>
					</li>
					<li>
						<a href="javascript: void(0)" class="cl-box pink" data-theme="colors/pink-style"></a>
					</li>
				</ul>
			</div>
			
			
			<!-- Scripts
			================================================== -->
			<c:forEach var="script" items="${javascripts}">
		        <script src="<c:url value="${script}"/>"></script>
		    </c:forEach> 
			
			<script type="text/javascript">
			$(document).ready(function(){
				
				
			});
		/*	function deletejob(idjob,idAccount){
			var	url ="<c:url value="/deletejob"/>?id_job="+idjob+ "&idAccount="+idAccount;
			var result='';
			$.ajax({url,function (data){
				if(data!=null){
					for(var i =0 ; i < data.length ; i++){
						result+='<article>'+
							'<div class="mng-company">'+
						'<a href="${pageContext.request.contextPath}/job-detail?id_job='+data[i].id+'">'+
							'<div class="col-md-2 col-sm-2">'+
								'<div class="mng-company-pic"><img src="data:image/jpge;base64,'+data[i].img+'" class="img-responsive" alt=""></div>'+
							'</div>'+
							
							'<div class="col-md-5 col-sm-5">'+
								'<div class="mng-company-name">'+
									'<h4>'+data[i].jobTitle+'</h4>'+
									'</div>'+
							'</div>'+
							'</a>'+
							'<div class="col-md-4 col-sm-4">'+
								'<div class="mng-company-location">'+
									'<p><i class="fa fa-map-marker"></i> '+data[i].city+'</p>'+
								'</div>'+
							'</div>'+
							
							'<div class="col-md-1 col-sm-1">'+
								'<div class="mng-company-action"><button onclick="deletejob('+data[i].id+','+idAccount+')"><i class="fa fa-trash-o"></i></button></div>'+
							'</div>'+
							
						'</div>'+
						'<span class="tg-themetag tg-featuretag">Premium</span>'+
					'</article>';
					
					}
					$('#jobsave').html(result);
				}else{
					$('#jobsave').html("Chưa có công việc được lưu")
				}
			}
			});
			} */
			</script>
			
			
	</body>
	

<!-- employer-profile41:42-->
</html>