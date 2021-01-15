<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
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