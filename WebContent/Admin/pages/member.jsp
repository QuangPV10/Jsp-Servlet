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

    <title>Thành Viên</title>

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
                           <!--  <li>
                                <a href="manage_comments.jsp"><i class="fa  fa-comments fa-fw"></i>Quản lý bình
                                    luận</a>
                            </li> -->
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <!-- <li>
                        <a href="revenue.jsp"><i class="fa fa-table fa-fw"></i>Doanh thu</a>
                    </li>
                    <li>
                        <a href="oders.jsp"><i class="fa  fa-shopping-bag fa-fw"></i> Đơn hàng</a>
                    </li> -->
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
                                <a href="index.jsp">Thành viên</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading  d-flex">
                            <div>
                                <i class="fa fa-shopping-cart"></i>
                                Thành viên
                            </div>
                            
                            
                            
                        <!--     <a class="add " data-toggle="modal" data-target="#myModal" href="#">
                                <div id="add" class=""><i class="fa fa-plus"></i>
                                    <span>Thêm mới</span>
                                </div>
                            </a> -->
                            
                            
                            
                            <div id="myModal"  class="modal fade" tabindex="-1" role="dialog">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">This is Modal</h4>
                                        </div>
                                        <div class="modal-body">
                                            <form class="needs-validation" novalidate>
                                                <div class="form-row">
                                                    <div class="col-md-4 mb-3 md-form">
                                                        <label for="validationTooltip011">First name</label>
                                                        <input type="text" class="form-control" id="validationTooltip011" value="Mark" required>
                                                        <div class="valid-tooltip">
                                                            Looks good!
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 mb-3 md-form">
                                                        <label for="validationTooltip021">Last name</label>
                                                        <input type="text" class="form-control" id="validationTooltip021" value="Otto" required>
                                                        <div class="valid-tooltip">
                                                            Looks good!
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 mb-3 md-form">
                                                        <label for="validationTooltipUsername1">Username</label>
                                                        <input type="text" class="form-control" id="validationTooltipUsername1" required>
                                                        <div class="invalid-tooltip">
                                                            Please choose a unique and valid username.>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="col-md-6 mb-3 md-form">
                                                        <label for="validationTooltip031">City</label>
                                                        <input type="text" class="form-control" id="validationTooltip031" required>
                                                        <div class="invalid-tooltip">
                                                            Please provide a valid city.
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 mb-3 md-form">
                                                        <label for="validationTooltip041">State</label>
                                                        <input type="text" class="form-control" id="validationTooltip041" required>
                                                        <div class="invalid-tooltip">
                                                            Please provide a valid state.
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 mb-3 md-form">
                                                        <label for="validationTooltip051">Zip</label>
                                                        <input type="text" class="form-control" id="validationTooltip051" required>
                                                        <div class="invalid-tooltip">
                                                            Please provide a valid zip.
                                                        </div>
                                                    </div>
                                                </div>
                                                <button class="btn btn-primary btn-sm btn-rounded" type="submit">Submit form</button>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div><!-- /.modal -->
                        </div>

                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Họ Tên</th>
                                        <th>Chức vụ</th>
                                        <th>Email</th>
                                        <th>Số điện thoại</th>
                                        <th>Địa chỉ</th>
                                        <th>Sửa</th>
                                        <th>Xóa</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="odd gradeX">
                                        <td>1</td>
                                        <td>Phạm Văn Quang</td>
                                        <td><span class="label label-danger">
									Nhóm trưởng</span></td>
                                        <td>quang@gmail.com</td>
                                        <td>02468</td>
                                        <td>Huế</td>
                                        <td class="center"><a href="#" class="btn default btn-xs purple btn-edit">
                                            <i class="fa fa-edit"></i> Sửa </a></td>
                                        <td class="center"><a href="#" class="btn default btn-xs black btn-delete">
                                            <i class="fa fa-trash-o"></i> Xóa</a></td>
                                    </tr>
                                   
                                    <tr class="odd gradeX">
                                        <td>3</td>
                                        <td>Mạnh Tiến Nhân</td>
                                        <td><span class="label label-success">
									Thành viên</span></td>
                                        <td>nhan@gmail.com</td>
                                        <td>0123456</td>
                                        <td>DakLak</td>
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
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })
</script>

</body>
</html>
