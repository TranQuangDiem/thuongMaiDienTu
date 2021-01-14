<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Freelancer đồ họa</title>
    
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    
    <link rel="stylesheet" href="assets/vendors/chartjs/Chart.min.css">

    <link rel="stylesheet" href="assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="assets/css/cssindex.css">
    <link rel="shortcut icon" href="assets/images/favicon.svg" type="image/x-icon">
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
            
            
            
                <li class="sidebar-item active ">
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

            
            
            
                <li class="sidebar-item  has-sub">
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
        <h3>Thông kê</h3>
        <p class="text-subtitle text-muted">Trang thông kê dữ liệu trang web</p>
    </div>
    <section class="section">
        <div class="row mb-2">
            <div class="col-12 col-md-3">
                <div class="card card-statistic">
                    <div class="card-body p-0">
                        <div class="d-flex flex-column">
                            <div class='px-3 py-3 d-flex justify-content-between height100'>
                                <h3 class='card-title'>Tổng Doanh Thu</h3>
                                <div class="card-right d-flex align-items-center align-items-right">
                                    <p>100,000,000 VNĐ</p>
                                </div>
                            </div>
                            <div class="chart-wrapper">
                                <canvas id="canvas1" style="height:100px !important"></canvas>
                                <!-- truyen vao day -->
                                <input type="hidden" id="index-input1-1" value="[90, 40, 20, 70, 10, 5, 23]">
                                <input type="hidden" id="index-input1-2" value="[Tháng 7,Tháng 8,Tháng 9,Tháng 10,Tháng 11,Tháng 12,Tháng 1]">
                                <input type="hidden" id="index-input1-3" value="Doanh thu">
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-3">
                <div class="card card-statistic">
                    <div class="card-body p-0">
                        <div class="d-flex flex-column">
                            <div class='px-3 py-3 d-flex justify-content-between height100'>
                                <h3 class='card-title'>Lượt truy cập</h3>
                                <div class="card-right d-flex align-items-center align-items-right">
                                    <p>100 000 000 </p>
                                </div>
                            </div>
                            <div class="chart-wrapper">
                                <canvas id="canvas2" style="height:100px !important"></canvas>
                                <!-- truyen vao day -->
                                <input type="hidden" id="index-input2-1" value="[90, 40, 20, 70, 10, 5, 20]">
                                <input type="hidden" id="index-input2-2" value="[Tháng 7,Tháng 8,Tháng 9,Tháng 10,Tháng 11,Tháng 12,Tháng 1]">
                                <input type="hidden" id="index-input2-3" value="Doanh thu 2">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-3">
                <div class="card card-statistic">
                    <div class="card-body p-0">
                        <div class="d-flex flex-column">
                            <div class='px-3 py-3 d-flex justify-content-between height100'>
                                <h3 class='card-title'>Tổng Số Thành Viên</h3>
                                <div class="card-right d-flex align-items-center">
                                    <p>1,544 </p>
                                </div>
                            </div>
                            <div class="chart-wrapper">
                                <canvas id="canvas3" style="height:100px !important"></canvas>
                                <!-- truyen vao day -->
                                <input type="hidden" id="index-input3-1" value="[90, 40, 20, 70, 10, 5, 23]">
                                <input type="hidden" id="index-input3-2" value="[Tháng 7,Tháng 8,Tháng 9,Tháng 10,Tháng 11,Tháng 12,Tháng 1]">
                                <input type="hidden" id="index-input3-3" value="Doanh thu">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-3">
                <div class="card card-statistic">
                    <div class="card-body p-0">
                        <div class="d-flex flex-column">
                            <div class='px-3 py-3 d-flex justify-content-between height100'>
                                <h3 class='card-title'>Doanh thu hôm nay</h3>
                                <div class="card-right d-flex align-items-center">
                                    <p>423 </p>
                                </div>
                            </div>
                            <div class="chart-wrapper">
                                <canvas id="canvas4" style="height:100px !important"></canvas>
                                <!-- truyen vao day -->
                                <input type="hidden" id="index-input4-1" value="[90, 40, 20, 70, 10, 5, 23]">
                                <input type="hidden" id="index-input4-2" value="[Tháng 7,Tháng 8,Tháng 9,Tháng 10,Tháng 11,Tháng 12,Tháng 1]">
                                <input type="hidden" id="index-input4-3" value="Doanh thu">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class='card-heading p-1 pl-3'>Sales</h3>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4 col-12">
                                <div class="pl-3">
                                    <h1 class='mt-5'>$21,102</h1>
                                    <p class='text-xs'><span class="text-green"><i data-feather="bar-chart" width="15"></i> +19%</span> than last month</p>
                                    <div class="legends">
                                        <div class="legend d-flex flex-row align-items-center">
                                            <div class='w-3 h-3 rounded-full bg-info mr-2 color-blue'></div><span class='text-xs'>Last Month</span>
                                        </div>
                                        <div class="legend d-flex flex-row align-items-center">
                                            <div class='w-3 h-3 rounded-full bg-blue mr-2 color-purple'></div><span class='text-xs'>Current Month</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8 col-12">
                                <canvas id="bar"></canvas>
                                <input type="hidden" id="bar1" value="[Tháng 7,Tháng 8,Tháng 9,Tháng 10,Tháng 11,Tháng 12,Tháng 1]">
                                <input type="hidden" id="bar2" value="[VNĐ]">
                                <input type="hidden" id="bar3" value="[#3498db,#3498db,#3498db,#3498db,#3498db,#3498db,#8e44ad]">
                                <input type="hidden" id="bar4" value="[100,20,160,110,170,70,90]">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="card ">
                    <div class="card-header">
                        <h3>Doanh thu</h3>
                    </div>
                    <div class="card-body">
                        <canvas id="doughnut-chart"></canvas>
                        <input type="hidden" id="doughnut1" value="[Nhà tuyển dụng,Freelancer,Quảng cáo]">
                        <!-- red: '#e74c3c',
                            orange: '#e67e22',
                            yellow: '#f1c40f',
                            green: '#2ecc71',
                            info: '#41B1F9',
                            blue: '#3498db',
                            purple: '#9b59b6',
                            grey: '#7f8c8d' -->
                        <input type="hidden" id="doughnut2" value="[#e74c3c,#e67e22,#2ecc71]">
                        <input type="hidden" id="doughnut3" value="[200,111,321]">
                        <input type="hidden" id="doughnut4" value="Doanh thu từ những nguồn sau">
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-left">
                        <p>2020 &copy; TMDT</p>
                    </div>
                    <div class="float-right">
                        <p>Design by Group ??</p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="assets/js/feather-icons/feather.min.js"></script>
    <script src="assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="assets/js/app.js"></script>
    
    <script src="assets/vendors/chartjs/Chart.min.js"></script>
    <script src="assets/vendors/apexcharts/apexcharts.min.js"></script>
    <script src="assets/js/pages/dashboard.js"></script>

    <script src="assets/js/main.js"></script>
</body>
</html>
