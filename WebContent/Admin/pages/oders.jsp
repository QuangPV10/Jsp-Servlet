<%@page import="utils.FullPath"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Đơn Hàng</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <link href="../css/metisMenu.min.css" rel="stylesheet">

    <link href="../css/timeline.css" rel="stylesheet">

    <link href="../css/startmin.css" rel="stylesheet">

    <link href="../css/morris.css" rel="stylesheet">
    <!-- DataTables CSS -->
    <link href="../css/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../css/dataTables/dataTables.responsive.css" rel="stylesheet">

    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>

<div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp">NQT</a>
        </div>

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>

        <ul class="nav navbar-nav navbar-left navbar-top-links">
            <li><a href="../../index.jsp"><i class="fa fa-home fa-fw"></i> Website</a></li>
        </ul>

        <ul class="nav navbar-right navbar-top-links">
            <li class="dropdown navbar-inverse">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell fa-fw"></i> <b class="caret"></b>
                </a>
                
                
                
             <!--    <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> Bình luận mới
                                <span class="pull-right text-muted small">4 minutes ago</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-users fa-fw"></i> Thành viên mới
                                <span class="pull-right text-muted small">12 minutes ago</span>
                            </div>
                        </a>
                    </li>
                </ul> -->
                
                
                
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> Admin <b class="caret"></b>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="<%=FullPath.fullPath("account1.jsp")%>"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- /.navbar-top-links -->

        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                </span>
                        </div>
                        <!-- /input-group -->
                    </li>
                    <li>
                        <a href="index.jsp" class="active"><i class="fa  fa-dashboard fa-fw"></i> Thống kê</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Danh mục<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="producer.jsp"><i class="fa  fa-home fa-fw"></i>Nhà cung cấp</a>
                            </li>
                            <li>
                                <a href="products.jsp"><i class="fa  fa-pencil-square-o fa-fw"></i>Quản lý sản phẩm</a>
                            </li>
                            <li>
                                <a href="manage_comments.jsp"><i class="fa  fa-comments fa-fw"></i>Quản lý bình
                                    luận</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="revenue.jsp"><i class="fa fa-table fa-fw"></i>Doanh thu</a>
                    </li>
                    <li>
                        <a href="oders.jsp"><i class="fa  fa-shopping-bag fa-fw"></i> Đơn hàng</a>
                    </li>
                    <li>
                        <a href="manage_account.jsp"><i class="fa  fa-user fa-fw"></i>Quản lý tài khoản</a>
                    </li>
                    <li>
                        <a href="member.jsp"><i class="fa fa-users fa-fw"></i>Thành viên</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-bar page-header">
                        <ul class="page-breadcrumb">
                            <li>
                                <i class="fa fa-home"></i>
                                <a href="index.jsp">Home</a>
                                <i class="fa fa-angle-right"></i>
                            </li>
                            <li>
                                <a href="index.jsp">Đơn hàng</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"><i class="fa fa-shopping-cart"></i>
                            Đơn hàng
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Tên khách hàng</th>
                                        <th>Email</th>
                                        <th>Số điện thoại</th>
                                        <th>Tổng số tiền</th>
                                        <th>Trạng thái</th>
                                        <th>Sửa</th>
                                        <th>Xóa</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="odd gradeX">
                                        <td>1</td>
                                        <td>phamvanquang</td>
                                        <td>quang@gmail.com</td>
                                        <td>02468</td>
                                        <td>200.000.000đ</td>
                                        <td><span class="label label-success">
									Đã thanh toán </span></td>
                                        <td class="center"><a href="#" class="btn default btn-xs purple btn-edit">
                                            <i class="fa fa-edit"></i> Sửa </a></td>
                                        <td class="center"><a href="#" class="btn default btn-xs black btn-delete">
                                            <i class="fa fa-trash-o"></i> Xóa</a></td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>2</td>
                                        <td>nguyenquyetthang</td>
                                        <td>thang@gmail.com</td>
                                        <td>013579</td>
                                        <td>100.000.000đ</td>
                                        <td><span class="label label-danger">
									Chưa thanh toán </span></td>
                                        <td class="center"><a href="#" class="btn default btn-xs purple btn-edit">
                                            <i class="fa fa-edit"></i> Sửa </a></td>
                                        <td class="center"><a href="#" class="btn default btn-xs black btn-delete">
                                            <i class="fa fa-trash-o"></i> Xóa</a></td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>3</td>
                                        <td>manhtiennhan</td>
                                        <td>nhan@gmail.com</td>
                                        <td>0123456</td>
                                        <td>300.000.000đ</td>
                                        <td><span class="label label-danger">
									Chưa thanh toán </span></td>
                                        <td class="center"><a href="#" class="btn default btn-xs purple btn-edit">
                                            <i class="fa fa-edit"></i> Sửa </a></td>
                                        <td class="center"><a href="#" class="btn default btn-xs black btn-delete">
                                            <i class="fa fa-trash-o"></i> Xóa</a></td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>4</td>
                                        <td>vothanhtri</td>
                                        <td>tri@gmail.com</td>
                                        <td>0123654</td>
                                        <td>400.000.000đ</td>
                                        <td><span class="label label-success">
									Đã thanh toán </span></td>
                                        <td class="center"><a href="#" class="btn default btn-xs purple btn-edit">
                                            <i class="fa fa-edit"></i> Sửa </a></td>
                                        <td class="center"><a href="#" class="btn default btn-xs black btn-delete">
                                            <i class="fa fa-trash-o"></i> Xóa</a></td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>5</td>
                                        <td>ngovian</td>
                                        <td>an@gmail.com</td>
                                        <td>222222</td>
                                        <td>500.000.000đ</td>
                                        <td><span class="label label-success">
									Đã thanh toán </span></td>
                                        <td class="center"><a href="#" class="btn default btn-xs purple btn-edit">
                                            <i class="fa fa-edit"></i> Sửa </a></td>
                                        <td class="center"><a href="#" class="btn default btn-xs black btn-delete">
                                            <i class="fa fa-trash-o"></i> Xóa</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
        </div>
    </div>
</div>

<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/metisMenu.min.js"></script>
<script src="../js/raphael.min.js"></script>
<script src="../js/startmin.js"></script>
<!-- DataTables JavaScript -->
<script src="../js/dataTables/jquery.dataTables.min.js"></script>
<script src="../js/dataTables/dataTables.bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../js/startmin.js"></script>

<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
    $(document).ready(function () {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
</script>

</body>
</html>
