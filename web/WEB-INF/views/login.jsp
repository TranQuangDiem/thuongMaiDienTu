<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!doctype html>
<html lang="en">

<!-- login35:56-->
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- Custom style -->
<link
	href="${pageContext.request.contextPath}/resources/assets/css/style.css"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" id="jssDefault"
	href="${pageContext.request.contextPath}/resources/assets/css/colors/green-style.css">

</head>
<body class="simple-bg-screen"
	style="background-image: url(${pageContext.request.contextPath}/resources/assets/img/banner-10.jpg);">
	<div class="Loader"></div>
	<div class="wrapper">

		<!-- Title Header Start -->
		<section class="login-screen-sec">
			<div class="container">
				<div class="login-screen">
					<a href="${pageContext.request.contextPath}"><img
						src="${pageContext.request.contextPath}/resources/assets/img/logo.png"
						class="img-responsive" alt=""></a>
					<form id="form-login"
						action="${pageContext.request.contextPath}/login"
						action="${pageContext.request.contextPath}/login">
						<input type="text" name="username" class="form-control"
							placeholder="Tài khoản"> <input type="password"
							name="password" class="form-control" placeholder="Mật khẩu">
						<div id="show-error-login" class="m-5 text-center"
							style="font-size: 20px"></div>
						<button class="btn btn-login" type="submit">Đăng Nhập</button>
						<span>Bạn dã có tài khoản? <a
							href="${pageContext.request.contextPath}/registerpage"> Đăng
								Ký Ngay</a></span> <span><a
							href="${pageContext.request.contextPath}/lostpasswordpage">
								Quên Mật Khẩu</a></span>
					</form>
				</div>
			</div>
		</section>
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

		<!-- Custom Js -->
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
		<script
			src="${pageContext.request.contextPath}/resources/assets/js/formregisterandlogin.js"></script>
		<script type="text/javascript">
		
		$(document).ready(function () {
		 
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
		  
		  $("#form-login").submit(function (e) {
		    e.preventDefault();
		    $.ajax({
		      type: "POST",
		      url: $("#form-login").attr("action"),
		      data: $("#form-login").serialize(),
		      success: function (res) {
		        switch (res) {
		          case "error":
		            showErrorLogin(true, "Bạn đã sai tài khoản hoặc mật khẩu");
		            break;
		          case "active":
		        	  showErrorLogin(true, "Tài khoản của bạn đã bị khóa");
			            break;
		          case "success":
		            $(location).attr("href", "${pageContext.request.contextPath}");
		            break;
		          default:
		            showErrorLogin(true, "Đã có lỗi xảy ra");
		            break;
		        }
		      },
		    });
		  });
		});
		</script>
	</div>
</body>

<!-- login35:58-->
</html>