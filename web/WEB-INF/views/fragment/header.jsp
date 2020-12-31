<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<button type="button" class="navbar-toggle" data-toggle="collapse"
		data-target="#navbar-menu">
		<i class="fa fa-bars"></i>
	</button>
	<div class="navbar-header">
		<a class="navbar-brand" href="index-6.jsp"><img
			src="${pageContext.request.contextPath}/resources/assets/img/logo.png"
			class="logo logo-scrolled" alt=""></a>
	</div>

	<div class="collapse navbar-collapse" id="navbar-menu">
		<ul class="nav navbar-nav navbar-left" data-in="fadeInDown"
			data-out="fadeOutUp">
			<c:if test="${empty sessionScope.currentAccount}">
				<li class="dropdown megamenu-fw " style="visibility: hidden">
				<li><a href="${pageContext.request.contextPath}/jobs" >Công Việc</a></li>
				<li><a href="create-job.html" style="visibility: hidden">Creata
						Job</a></li>
				<li><a href="blog.html" style="visibility: hidden">Blog</a></li>
			</c:if>
			<c:if
				test="${not empty sessionScope.currentAccount && sessionScope.currentAccount.role == 1}">
				<li class="dropdown megamenu-fw ">
				<li><a href="${pageContext.request.contextPath}/jobs">Công Việc</a></li>
				<li><a href="${pageContext.request.contextPath}/create-job">Đăng tin</a></li>
			</c:if>
			<c:if
				test="${not empty sessionScope.currentAccount && sessionScope.currentAccount.role == 2}">
				<li class="dropdown megamenu-fw ">
				<li><a href="${pageContext.request.contextPath}/jobs">Công Việc</a></li>
			</c:if>
			
		</ul>
		<ul class="nav navbar-nav navbar-right" data-in="fadeInDown"
			data-out="fadeOutUp">
			<c:if test="${empty sessionScope.currentAccount}">
				<li><a
					href="${pageContext.request.contextPath}/lostpasswordpage">Quên
						Mật Khẩu</a></li>
				<li><a href="${pageContext.request.contextPath}/loginpage">Đăng
						nhập</a></li>
				<li class="left-br"><a
					href="${pageContext.request.contextPath}/registerpage"
					class="signin"> <c:out
							value="${sessionScope.currentAccount.id}" /> Đăng Ký Ngay
				</a></li>
			</c:if>
			<c:if test="${not empty sessionScope.currentAccount}">
				<li><a href="<c:url value="/pricing"/>"><i
						class="fa fa-sign-in" aria-hidden="true"></i>Gói bài đăng</a></li>
				 	<!-- <li><a href="thanhtoan"><i class="fa fa-dollar"></i>Nạp tiền</a></li> -->
				<c:if test="${sessionScope.currentAccount.role==1}">
					<li><a href="pricing.html"><i class="fa fa-sign-in"
							aria-hidden="true"></i>Gói Bài Đăng</a></li>
				</c:if>
				<li><a href="e-wallet.html"><i class="fa fa-dollar"
						aria-hidden="true"></i>Payment</a></li>
				<li class="dropdown"><a href="#"><i class="fa fa-user"></i>
						<c:out value="${sessionScope.currentAccount.fullname}"></c:out></a>
					<ul class="dropdown-menu"
						style="border: none; width: auto; top: 30px; left: 0.3px">
						<li><a href="#">Tài khoản của tôi</a></li>
						<li><a href="<c:url value="/vitien"/>">Ví của tôi</a></li>
						<li><a href="${pageContext.request.contextPath}/logout">Đăng
								xuất</a></li>
					</ul></li>
			<!-- <li><a href="#">Ví của tôi</a></li>
				<li><a href="${pageContext.request.contextPath}/logout">Đăng
						xuất</a></li> -->
		</ul>
		</li>
		</c:if>


		</ul>
	</div>
</div>
</nav>
<div class="modal fade" id="signup" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel2" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				<div class="tab" role="tabpanel">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#login"
							role="tab" data-toggle="tab">Đăng Nhập</a></li>
						<li role="presentation"><a href="#register" role="tab"
							data-toggle="tab">Đăng Ký</a></li>
					</ul>
					<div class="tab-content" id="myModalLabel2">
						<div role="tabpanel" class="tab-pane fade in active" id="login">
							<img
								src="${pageContext.request.contextPath}/resources/assets/img/logo.png"
								class="img-responsive" alt="" />

							<div class="subscribe wow fadeInUp">
								<form action="${pageContext.request.contextPath}/login"
									id="form-login" class="form-inline" method="post">
									<div class="col-sm-12">
										<div class="form-group">
											<input type="text" name="username" class="form-control"
												placeholder="Tài khoản" required=""> <input
												type="password" name="password" class="form-control"
												placeholder="Mật khẩu" required="">
											<div id="show-error-login"
												style="text-align: center; font-size: 20px"></div>
											<div class="center">
												<button type="submit" id="btn-login" class="submit-btn">
													Đăng Nhập</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="register">
							<img
								src="${pageContext.request.contextPath}/resources/assets/img/logo.png"
								class="img-responsive" alt="" />
							<form action="${pageContext.request.contextPath}/register"
								id="form-register" class="form-inline" method="post">
								<div class="col-sm-12">
									<div class="form-group">
										<input type="text" name="fullnamenew" class="form-control"
											placeholder="Họ và tên" required=""><input
											type="email" name="emailnew" class="form-control"
											placeholder="Email" required=""> <input type="text"
											name="usernamenew" class="form-control"
											placeholder="Tài khoản" required=""><input
											type="password" name="passwordnew" class="form-control"
											placeholder="Mật khẩu" required="">
										<div id="show-error-register"
											style="text-align: center; font-size: 20px"></div>
										<div class="center">
											<button type="submit" id="btn-register" class="submit-btn">
												Đăng Ký</button>
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
<button class="w3-button w3-teal w3-xlarge w3-right"
	onclick="openRightMenu()">
	<i class="spin fa fa-cog" aria-hidden="true"></i>
</button>
