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
				<li><a href="search-new.html" style="visibility: hidden">Jobs</a></li>
				<li><a href="create-job.html" style="visibility: hidden">Creata
						Job</a></li>
				<li><a href="blog.html" style="visibility: hidden">Blog</a></li>
			</c:if>
			<c:if test="${not empty sessionScope.currentAccount}">
				<li class="dropdown megamenu-fw ">
				<li><a href="search-new.html">Jobs</a></li>
				<li><a href="create-job.html">Creata Job</a></li>
				<li><a href="blog.html">Blog</a></li>
			</c:if>
		</ul>
		<ul class="nav navbar-nav navbar-right" data-in="fadeInDown"
			data-out="fadeOutUp">
			<c:if test="${empty sessionScope.currentAccount}">
				<li><a href="pricing.html" style="visibility: hidden"><i
						class="fa fa-sign-in" aria-hidden="true"></i>Pricing</a></li>
				<li><a href="e-wallet.html" style="visibility: hidden"><i
						class="fa fa-dollar" aria-hidden="true"></i>Payment</a></li>
			</c:if>
			<c:if test="${not empty sessionScope.currentAccount}">
				<li><a href="pricing.html" ><i
						class="fa fa-sign-in" aria-hidden="true"></i>Pricing</a></li>
				<li><a href="e-wallet.html"><i
						class="fa fa-dollar" aria-hidden="true"></i>Payment</a></li>
			</c:if>
			<li class="left-br"><a href="" data-toggle="modal"
				data-target="#signup" class="signin"> <c:out
						value="${sessionScope.currentAccount.id}" /> Sign In Now

			</a></li>

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
<script type="text/javascript">
$(document).ready(function () {
	  var showErrorRegister = function (isErr, message) {
	    const showerror = $("#show-error-register");
	    if (showerror.hasClass("text-danger")) showerror.removeClass("text-danger");
	    if (showerror.hasClass("text-success"))
	      showerror.removeClass("text-success");
	    if (isErr == true) showerror.addClass("text-danger");
	    else showerror.addClass("text-success");
	    showerror.hide().text(message).fadeIn("slow");
	  };
	  var showErrorLogin = function (isErr, message) {
	    const showerror = $("#show-error-login");
	    if (showerror.hasClass("text-danger")) showerror.removeClass("text-danger");
	    if (showerror.hasClass("text-success"))
	      showerror.removeClass("text-success");
	    if (isErr == true) showerror.addClass("text-danger");
	    else showerror.addClass("text-success");
	    showerror.hide().text(message).fadeIn("slow");
	  };
	  var serializeForm = function (form) {
	    var obj = {};
	    var formData = new FormData(form);
	    for (var key of formData.keys()) {
	      obj[key] = formData.get(key);
	    }
	    return;
	    obj;
	  };
	  $("#form-register").submit(function (e) {
	    e.preventDefault();
	    $.ajax({
	      type: "POST",
	      url: $("#form-register").attr("action"),
	      data: $("#form-register").serialize(),
	      success: function (res) {
	        switch (res) {
	          case "erremptyfield":
	            showErrorRegister(true, "Không được để trống tất cả thông tin");
	            break;
	          case "errname":
	            showErrorRegister(true, "Họ và tên của bạn không hợp lệ");
	            break;
	          case "errpass":
	            showErrorRegister(
	              true,
	              "Mật khẩu phải nhiều hơn 8 ký tự,có ít nhất 1 ký thường,hoa,số,đặc biệt"
	            );
	            break;
	          case "errusername":
	            showErrorRegister(
	              true,
	              "Tên tài khoản có ít nhất 8 ký tự chỉ có số, chữ "
	            );
	            break;
	          case "errusernameexit":
	            showErrorRegister(true, "Tên tài khoản đã tồn tại");
	            break;
	          case "errmail":
	            showErrorRegister(true, "Email của bạn không hợp lệ");
	            break;
	          case "error":
	            showErrorRegister(true, "Đã có lỗi xảy ra với hệ thống");
	            break;
	          case "success":
	            showErrorRegister(false, "Đăng ký thành công");
	            $(location).attr("href", "${pageContext.request.contextPath}");
	            break;
	          default:
	            showErrorRegister(true, "Đã có lỗi xảy ra");
	            break;
	        }
	      },
	    });
	  });
	  $("#form-login").submit(function (e) {
	    e.preventDefault();
	    $.ajax({
	      type: "POST",
	      url: $("#form-login").attr("action"),
	      data: $("#form-login").serialize(),
	      success: function (res) {
	    	  switch (res) {
			case "error":
				showErrorLogin(true,"Bạn đã sai tài khoản hoặc mật khẩu");
				break;
			case "success":
				 $(location).attr("href", "${pageContext.request.contextPath}");
				break;
			default:
				showErrorLogin(true,"Đã có lỗi xảy ra");
				break;
			}
	      },
	    });
	  });
	});
</script>