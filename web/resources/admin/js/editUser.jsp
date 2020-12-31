<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cập nhât thông tin</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../css/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="../css/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../css/dataTables/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/startmin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" href="../../../WEB-INF/views/sanpham.jsp">GIÀY NAM</a>
        </div>

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>

        <ul class="nav navbar-nav navbar-left navbar-top-links" style="font-size: 20px;">
            <li><a href="#"><i class="fa fa-home fa-fw" ></i> Home</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-left navbar-top-links" style="font-size: 20px;">
            <li><a href="#"><i class="fa fa-close fa-fw" ></i> Maintenance </a></li>
        </ul>
        <ul class="nav navbar-right navbar-top-links">

            <li class="dropdown" style="font-size: 20px;">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> Administrator <b class="caret"></b>
                </a>
                <ul class="dropdown-menu dropdown-user" style="font-size: 20px;">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
            </li>
        </ul>
    </nav>
        <!-- /.navbar-top-links -->

        <jsp:include page="../../../WEB-INF/views/adminMenu.jsp"/>

    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Home > Cập Nhật Thông tin</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row" style="margin-top: 20px">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="font-size: 25px">
                           Thông tin chi tiết

                        </div>
                        <form method="post" action="http://localhost:8080/LTWeb_war_exploded/ThemUser">
                        <!-- /.panel-heading -->
                        <div class="panel-body"  >

                            <div class="row" style="padding-top: 20px">
                                <label class="col-lg-2" style="font-size: 20px"> Tên </label>
                                <span class="col-lg-10">
                                     <label style="width: 500px" >
                                        <input class="form-control" name="ten" placeholder="...">
                                     </label>
                                     </span>
                            </div>
                            <div class="row" style="padding-top: 20px">
                                <label class="col-lg-2" style="font-size: 20px"> Email </label>
                                <span class="col-lg-10">
                                    <label style="width: 500px" >
                                        <input class="form-control" name="email" placeholder="...">
                                     </label>
                            </span>
                            </div>
                            <div class="row" style="padding-top: 20px">
                                <label class="col-lg-2" style="font-size: 20px"> Password </label>
                                <span class="col-lg-10">
                                    <label style="width: 500px" >
                                        <input class="form-control" name="pass" placeholder="...">
                                     </label>
                            </span>
                            </div>
                            <div class="row" style="padding-top: 20px">
                                <label class="col-lg-2" style="font-size: 20px"> SDT </label>
                                <span class="col-lg-10">
                                <label style="width: 500px">
                                   <input class="form-control" name="sdt" placeholder="...">
                                </label>
                                     </span>
                            </div>
                            <div class="row" style="padding-top: 20px">
                                <label class="col-lg-2" style="font-size: 20px"> Địa chỉ </label>
                                <span class="col-lg-10">
                                <label style="width: 500px">
                                   <input class="form-control" name="diachi" placeholder="...">
                                </label>
                                     </span>
                            </div>
                            <div class="row" style="padding-top: 20px">
                                <label class="col-lg-2" style="font-size: 20px"> Level </label>
                                <span class="col-lg-10">
                                <label style="width: 500px">
                                   <input class="form-control" name="level" placeholder="1 là admin, 2 là khách hàng">
                                </label>
                                     </span>
                            </div>
                            <div class="row" style="padding-top: 20px">
                                <label class="col-lg-2" style="font-size: 20px"> Tác vụ </label>
                                <span class="col-lg-10">

                                 <button class="btn btn-group" type="submit"><i class="fa fa-save" style="font-size: 20px"> SAVE</i></button>
                                 <button class="btn btn-group"><i class="fa fa-close" style="font-size: 20px"> CANCEL</i></button>
                                     </span>
                            </div>

                        </div>                        <!-- /.panel-body -->
                        </form>
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->

                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->

            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="metisMenu.min.js"></script>

<!-- DataTables JavaScript -->
<script src="dataTables/jquery.dataTables.min.js"></script>
<script src="dataTables/dataTables.bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="startmin.js"></script>

<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
</script>

</body>
</html>
