<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết gói bài đăng</title>
    
     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ui-admin/assets/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ui-admin/assets/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ui-admin/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ui-admin/assets/css/app.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ui-admin/assets/images/favicon.svg" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/ui-admin/assets/css/chiTietGoiBaiDang.css">
</head>
<body>
   <div id="app">
        <div id="sidebar" class='active'>
            <div class="sidebar-wrapper active">
    <div class="sidebar-header">
        <img src="assets/images/logo.svg" alt="" srcset="">
    </div>
     	<div class="sidebar-menu">
					<ul class="menu">
						<li class='sidebar-title'>Main Menu</li>
						<li class="sidebar-item "><a href="index.html"
							class='sidebar-link'> <i data-feather="home" width="20"></i>
								<span>Trang chủ</span>
						</a></li>
						<li class="sidebar-item  has-sub"><a href="#"
							class='sidebar-link'> <i data-feather="triangle" width="20"></i>
								<span>Quản Lý Tài Khoản</span>
						</a>
							<ul class="submenu ">
								<li><a href="quanLyNTD.html">Employer</a></li>
								<li><a href="quanLyFreelancer.html">Freelancer</a></li>
							</ul></li>
						<li class="sidebar-item  has-sub active"><a href=""
							class='sidebar-link'> <i data-feather="briefcase" width="20"></i>
								<span>Quản Lý Gói</span>
						</a>
							<ul class="submenu ">
								<li><a href='<c:url value="admin-list-job-post"></c:url>'>Bài
										Đăng</a></li>
								<li><a href="<c:url value="/Pricing-manager"/>">Gói Bài Đăng</a></li>
							</ul></li>
						<li class="sidebar-item "><a
							href='<c:url value="admin-list-major"></c:url>'
							class='sidebar-link'> <i data-feather="grid" width="20"></i>
								<span>Quản Lý Chuyên Môn</span>
						</a></li>
						<li class="sidebar-item  "><a href="quanLyDanhGia.html"
							class='sidebar-link'> <i data-feather="layers" width="20"></i>
								<span>Quản Lý Đánh Giá</span>
						</a></li>
						<li class="sidebar-item"><a href="quanLyReport.html"
							class='sidebar-link'> <i data-feather="alert-circle"
								width="20"></i> <span>Quản Lý Reports</span>
						</a></li>
					</ul>
				</div>
    <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
</div>
        </div>
        <div id="main">
            <nav class="navbar navbar-header navbar-expand navbar-light">
                <a class="sidebar-toggler" href="#"><span class="navbar-toggler-icon"></span></a>
                <button class="btn navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav d-flex align-items-center navbar-light ml-auto">
                        <li class="dropdown nav-icon">
                            <a href="#" data-toggle="dropdown" class="nav-link  dropdown-toggle nav-link-lg nav-link-user">
                                <div class="d-lg-inline-block">
                                    <i data-feather="bell"></i>
                                </div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-large">
                                <h6 class='py-2 px-4'>Notifications</h6>
                                <ul class="list-group rounded-none">
                                    <li class="list-group-item border-0 align-items-start">
                                        <div class="avatar bg-success mr-3">
                                            <span class="avatar-content"><i data-feather="shopping-cart"></i></span>
                                        </div>
                                        <div>
                                            <h6 class='text-bold'>New Order</h6>
                                            <p class='text-xs'>
                                                An order made by Ahmad Saugi for product Samsung Galaxy S69
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="dropdown nav-icon mr-2">
                            <a href="#" data-toggle="dropdown" class="nav-link  dropdown-toggle nav-link-lg nav-link-user">
                                <div class="d-lg-inline-block">
                                    <i data-feather="mail"></i>
                                </div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#"><i data-feather="user"></i> Account</a>
                                <a class="dropdown-item active" href="#"><i data-feather="mail"></i> Messages</a>
                                <a class="dropdown-item" href="#"><i data-feather="settings"></i> Settings</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i data-feather="log-out"></i> Logout</a>
                            </div>
                        </li>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                                <div class="avatar mr-1">
                                    <img src="assets/images/avatar/avatar-s-1.png" alt="" srcset="">
                                </div>
                                <div class="d-none d-md-block d-lg-inline-block">Hi, Saugi</div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#"><i data-feather="user"></i> Account</a>
                                <a class="dropdown-item active" href="#"><i data-feather="mail"></i> Messages</a>
                                <a class="dropdown-item" href="#"><i data-feather="settings"></i> Settings</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i data-feather="log-out"></i> Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
            
<div class="main-content container-fluid">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Gói bài Đăng</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Gói bài đăng</li>
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
        <h4 class="card-title">Gói bài đăng</h4>
      </div>
      <div class="cardcontent">
        <!-- table hover -->
        <div class="table-responsive">
            <div class="form">
                <form action="<c:url value="/pricing-detail"/>" method="post" modelAttribute="Pricing">
                    <div class="row">
                        <div class="col-md-6 col-12">
                            <label for="formGroupExampleInput">Tên gói bài đăng</label><span id="error1" style="color:red"></span>
                          <input type="text" class="form-control" required id="tengoi" name="tengoi" value="${pricing.tengoi}">
                        </div>

                        <div class="col-md-6 col-12">
                            <label for="formGroupExampleInput2">Giá(đ)</label><span id="error2" style="color:red"></span>
                          <input type="number" class="form-control" required id="gia" name="gia" value="${pricing.gia}">
                        </div><input style="display:none" name="id" value="${pricing.id }">

                      </div>

                      <div class="row">
                        <div class="col-md-6 col-12">
                            <label for="formGroupExampleInput">Số lượng bài đăng(bài)</label><span id="error3" style="color:red"></span>
                          <input type="number" class="form-control" required id="soluongbaidang" name="soluongbaidang" value="${pricing.soluongbaidang}">
                        </div>

                        <div class="col-md-6 col-12">
                            <label for="formGroupExampleInput">Thời gian(ngày)</label><span id="error4" style="color:red"></span>
                          <input type="number" class="form-control" required id="thoihan" name="thoihan" value="${pricing.thoihan}">
                        </div>

                      </div>

                      <div class="row">
                        <div class="col-md-6 col-12">
                            <label for="formGroupExampleInput">Mô tả</label><span id="error5" style="color:red"></span>
                          <textarea type="text" class="form-control" required id="mota" name="mota">${pricing.mota}</textarea>
                        </div>
                    

                      </div>
                      <div class="col-12 d-flex justify-content-end">
                                        <input onclick="return validate();" type="submit" class="btn btn-primary mr-1 mb-1" value="Save">
                                        <a href="<c:url value="/Pricing-manager"/>" class="btn btn-primary mr-1 mb-1">Exit</a>
                                    </div>

                  </form>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Hoverable rows end -->

</div>

           
        </div>
    </div>
    <script type="text/javascript">
    var flag;
    function getValue(id) {
        return document.getElementById(id).value.trim();
    }

    // Hiển thị lỗi
    function showError(key, mess) {
        document.getElementById('error'+key).innerHTML = mess;
    }

    function checkName() {
        var name = getValue('tengoi');
        if (name == '') {
            flag = false;
            showError('1', 'tên không được để trống');
        } else {
            showError('1', '');
        }
    }
    function checkgia() {
        var name = getValue('gia');
        if (name == '') {
            flag = false;
            showError('2', 'giá không được để trống');
        }else if(name<0){ flag = false;
        showError('2', 'giá nhập sai');
        }else {
            showError('2', '');
        }
    }
    function checksoluongbaidang() {
        var name = getValue('soluongbaidang');
        if (name == '') {
            flag = false;
            showError('3', 'số lượng bài đăng không được để trống');
        }else if(name<0){ flag = false;
        showError('3', 'số lượng bài đăng nhập sai');
        }else {
            showError('3', '');
        }
    }
    function checkthoihan() {
        var name = getValue('thoihan');
        if (name == '') {
            flag = false;
            showError('4', 'thời hạn không được để trống');
        }else if(name<0){ flag = false;
        showError('4', 'thời hạn nhập sai');
        }else {
            showError('4', '');
        }
    }
    function checkmota() {
        var name = getValue('mota');
        if (name == '') {
            flag = false;
            showError('5', 'giá không được để trống');
        }else {
            showError('5', '');
        }
    }
    function validate() {
        flag=true;
        // 1 username
        checkName();
        checkgia();
        checksoluongbaidang();
        checkthoihan();
        checkmota();
        return flag;
    }
    </script>
       <script src="${pageContext.request.contextPath}/resources/ui-admin/assets/js/feather-icons/feather.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ui-admin/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ui-admin/assets/js/app.js"></script>
    
    <script src="${pageContext.request.contextPath}/resources/ui-admin/assets/js/main.js"></script>
</body>
</html>
