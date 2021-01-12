<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<div class="main-content container-fluid">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Chỉnh sửa</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="quanLyNTD.html">Employer</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Chỉnh sửa</li>
                    </ol>
                </nav>
            </div>
        </div>

    </div>


    <!-- // Basic multiple Column Form section start -->
    <section id="multiple-column-form">
        <div class="row match-height">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                            <img class="rounded-circle mt-5" src="assets/images/avatar/avatar-s-1.png" width="120">
                            <h3 class="font-weight-bold">nguyenvana</h3>
                        </div>
       
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <form class="form">
                                <div class="row">
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <label for="first-name-column">Tên công ty</label>
                                            <input type="text" id="first-name-column" class="form-control" placeholder="Nguyễn Văn A"
                                                name="tenCongTy-column" disabled="trending-up">
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <label for="first-name-column">Chuyên ngành</label>
                                            <input type="text" id="first-name-column" class="form-control" placeholder="Phát triển phần mềm"
                                                name="chuyenNganh-column" disabled="trending-up">
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <label for="first-name-column">Email</label>
                                            <input type="text" id="first-name-column" class="form-control" placeholder="nguyenvana@gmail.com"
                                                name="email-column" disabled="trending-up">
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <label for="first-name-column">Điện thoại</label>
                                            <input type="text" id="first-name-column" class="form-control" placeholder="+84012345678"
                                                name="sDT-column" disabled="trending-up">
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <label for="first-name-column">Tỉnh/Thành phố</label>
                                            <select class="form-select" disabled="disabled" id="disabledSelect" name="tinh-column">
                                            <option>Hồ Chí Minh</option>
                                        </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <label for="first-name-column">Quận/Huyện</label>
                                            <select class="form-select" disabled="disabled" id="disabledSelect" name="quan-column">
                                            <option>Thủ Đức</option>
                                        </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <label for="first-name-column">Xã/Phường</label>
                                            <select class="form-select" disabled="disabled" id="disabledSelect" name="phuong-column">
                                            <option>Linh Trung</option>
                                        </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <label for="first-name-column">Địa chỉ</label>
                                            <input type="text" id="first-name-column" class="form-control" placeholder="Khu phố 6, phường Linh Trung, quận Thủ Đức, TP HCM"
                                                name="diaChi-column" disabled="trending-up">
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <label for="first-name-column">Mạng xã hội</label>
                                            <div class="social" id="first-name-column" style="font-size: 25px" name="social-column">
                                            <a href="" style="margin-right: 15px"><i class="fa fa-facebook-f"></i></a>
                                            <a href="" style="margin-right: 15px"><i class="fa fa-twitter"></i></a>
                                            <a href="" style="margin-right: 15px"><i class="fa fa-linkedin"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <label for="first-name-column">Thông tin công ty</label>
                                            <textarea type="text" id="first-name-column" class="form-control" placeholder="Khu phố 6, phường Linh Trung, quận Thủ Đức, TP HCM"
                                                name="info-column" disabled="trending-up" ></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <label for="first-name-column">Quyền hạn</label>
                                            <select class="form-select" id="first-name-column" name="quyenHan-column">
                                            <option>Admin</option>
                                            <option>Người dùng</option>
                                        </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <label for="first-name-column">Role</label>
                                            <select class="form-select" id="first-name-column" name="role-column">
                                            <option>Nhà tuyển dụng</option>
                                            <option>Freelancer</option>
                                        </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-12">
                                        <div class="form-group checkbox-1">
                                            <label for="first-name-column">Block</label>
                                            <label class="checkbox-2" name="block-column">
                                                <input type="checkbox">
                                                <span class="background"></span>
                                                <span class="mask"></span>
                                                </label>
                                        </div>
                                    </div>
                                    <div class="col-12 d-flex justify-content-end">
                                        <button type="submit" class="btn btn-primary mr-1 mb-1">Save</button>
                                        <button type="submit" class="btn btn-primary mr-1 mb-1">Exit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- // Basic multiple Column Form section end -->
</div>



