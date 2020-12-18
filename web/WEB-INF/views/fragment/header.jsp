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

			<li class="dropdown megamenu-fw">
			<li><a href="search-new.html">Jobs</a></li>
			<li><a href="create-job.html">Creata Job</a></li>
			<li><a href="blog.html">Blog</a></li>

		</ul>
		<ul class="nav navbar-nav navbar-right" data-in="fadeInDown"
			data-out="fadeOutUp">

			<li><a href="pricing.html"><i class="fa fa-sign-in"
					aria-hidden="true"></i>Pricing</a></li>
			<li><a href="e-wallet.html"><i class="fa fa-dollar"
					aria-hidden="true"></i>Payment</a></li>
			<li><a href="signup.html"><i class="" aria-hidden="true"></i>Sign
					Up Now</a></li>
			<!-- href="javascript:void(0)" error cross platform-->
			<li class="left-br"><a href="" data-toggle="modal"
				data-target="#signup" class="signin">Sign In Now</a></li>

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
							role="tab" data-toggle="tab">Sign In</a></li>
						<li role="presentation"><a href="#register" role="tab"
							data-toggle="tab">Sign Up</a></li>
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
												placeholder="Username" required=""> <input
												type="password" name="password" class="form-control"
												placeholder="Password" required="">

											<div class="center">
												<button type="submit" id="btn-login" class="submit-btn">
													Login</button>
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
											placeholder="Your Name" required=""><input
											type="email" name="emailnew" class="form-control"
											placeholder="Your Email" required=""> <input
											type="text" name="usernamenew" class="form-control"
											placeholder="Username" required=""><input
											type="password" name="passwordnew" class="form-control"
											placeholder="Password" required="">
										<div class="center">
											<button type="submit" id="btn-register" class="submit-btn">
												Create Account</button>
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

