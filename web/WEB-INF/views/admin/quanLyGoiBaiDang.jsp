<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý gói bài đăng</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ui-admin/assets/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ui-admin/assets/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ui-admin/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ui-admin/assets/css/app.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ui-admin/assets/images/favicon.svg" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/ui-admin/assets/css/quanLyBaiDang.css">
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
            
            
            
                <li class="sidebar-item ">
                    <a href="index.html" class='sidebar-link'>
                        <i data-feather="home" width="20"></i> 
                        <span>Trang chủ</span>
                    </a>
                    
                </li>

            
            
            
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i data-feather="triangle" width="20"></i> 
                        <span>Quản Lý Tài Khoản</span>
                    </a>
                    
                    <ul class="submenu ">
                        
                        <li>
                            <a href="quanLyNTD.html">Employer</a>
                        </li>
                        
                        <li>
                            <a href="quanLyFreelancer.html">Freelancer</a>
                        </li>
                    </ul>
                    
                </li>

            
            
            
                <li class="sidebar-item  has-sub active">
                    <a href="#" class='sidebar-link'>
                        <i data-feather="briefcase" width="20"></i> 
                        <span>Quản Lý Gói</span>
                    </a>
                    
                    <ul class="submenu ">
                        
                        <li>
                            <a href="quanLyBaiDang.html">Bài Đăng</a>
                        </li>
                        
                        <li>
                            <a href="quanLyGoiBaiDang.html">Gói Bài Đăng</a>
                        </li>
                        
                    </ul>
                    
                </li>
                <li class="sidebar-item  ">
                    <a href="quanLyChuyenMon.html" class='sidebar-link'>
                        <i data-feather="grid" width="20"></i> 
                        <span>Quản Lý Chuyên Môn</span>
                    </a>
                    
                </li>

            
            
            
                <li class="sidebar-item  ">
                    <a href="quanLyDanhGia.html" class='sidebar-link'>
                        <i data-feather="layers" width="20"></i> 
                        <span>Quản Lý Đánh Giá</span>
                    </a>
                    
                </li>
            
                <li class="sidebar-item">
                    <a href="quanLyReport.html" class='sidebar-link'>
                        <i data-feather="alert-circle" width="20"></i> 
                        <span>Quản Lý Reports</span>
                    </a>
                </li>

            
            
         
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
                <h3>Gói Bài Đăng</h3>
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
        <h4 class="card-title" style="float: left;">Gói bài đăng</h4>
        <a href="" class="btn-green" style="float: right;">
            <a style="float: right;" href="<c:url value="/addpricing"/>" class="btn btn-primary" >Thêm</a>
        </a>
      </div>
      <div class="card-content">
        <!-- table hover -->
        <div class="table-responsive">
          <table class="table table-hover mb-0">
            <thead>
              <tr>
                <th>id</th>
                <th>Tên gói</th>
                <th>Giá</th>
                <th>Số lượng Bài Đăng</th>
                <th>Thời gian</th>
                <th>Tác vụ</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach var="pricing" items="${listpricing}">
              <tr>
                <td class="text-bold">${pricing.id}</td>
                <td class="text-bold">${pricing.tengoi}</td>
                <td class="text-bold">${pricing.gia} đ</td>
                <td class="text-bold">${pricing.soluongbaidang} bài</td>
                <td class="text-bold">${pricing.thoihan} ngày</td>
                <td class="text-bold">
                    <a style="padding:0px;" href="<c:url value="/chiTietGoiBaiDang"/>?id=${pricing.id}" class="btn green mr0 btn-search-text-single btnSearchMore">
                        <i class="fa fa-wrench"></i>
                    </a>
                    <a style="padding:0px;" href="<c:url value="/deletePricing"/>?id=${pricing.id}"  class="btn green mr0 btn-search-text-single btnSearchMore">
                        <i class="fa fa-trash"></i>
                    </a>
                </td>
                
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
<!-- <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#">Prev</a></li>
                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">Next</a></li>
                            </ul>
                        </nav>
                         -->
</div>

           
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/resources/ui-admin/assets/js/feather-icons/feather.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ui-admin/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ui-admin/assets/js/app.js"></script>
    
    <script src="${pageContext.request.contextPath}/resources/ui-admin/assets/js/main.js"></script>
</body>
</html>
