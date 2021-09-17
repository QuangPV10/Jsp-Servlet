<%@page import="utils.FullPath"%>
<%@page import="model.ThanhVien"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Admin</title>

<link href="../css/bootstrap.min.css" rel="stylesheet">

<link href="../css/metisMenu.min.css" rel="stylesheet">

<link href="../css/timeline.css" rel="stylesheet">

<link href="../css/startmin.css" rel="stylesheet">

<link href="../css/morris.css" rel="stylesheet">

<link href="../css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>

	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.jsp">NQT</a>
			</div>

			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<ul class="nav navbar-nav navbar-left navbar-top-links">
				<li><a href="../../index.jsp"><i class="fa fa-home fa-fw"></i>
						Website</a></li>
			</ul>

			<ul class="nav navbar-right navbar-top-links">
				<li class="dropdown navbar-inverse"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
						<b class="caret"></b>
				</a>
				
				
				
					<!-- <ul class="dropdown-menu dropdown-alerts">
						<li><a href="#">
								<div>
									<i class="fa fa-comment fa-fw"></i> Bình luận mới <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li><a href="#">
								<div>
									<i class="fa fa-users fa-fw"></i> Thành viên mới <span
										class="pull-right text-muted small">12 minutes ago</span>
								</div>
						</a></li>
					</ul></li> -->
					
					
					
				<li class="dropdown">
					<%
						ThanhVien thanhVien = (ThanhVien) session.getAttribute("USER");
					%> <a class="dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="fa fa-user fa-fw"></i> <%=thanhVien != null ? thanhVien.getHoTen() : ""%><b
						class="caret"></b>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i> User
								Profile</a></li>
						<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
						</li>
						<li class="divider"></li>
						<li><a href="<%=FullPath.fullPath("account1.jsp")%>"><i class="fa fa-sign-out fa-fw"></i>
								Logout</a></li>
					</ul>
				</li>
			</ul>

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
						</li>
						<li><a href="index.jsp" class="active"><i
								class="fa  fa-dashboard fa-fw"></i> Thống kê</a></li>
						<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
								Danh mục<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="producer.jsp"><i class="fa  fa-home fa-fw"></i>Nhà
										cung cấp</a></li>
								<li><a href="products.jsp"><i
										class="fa  fa-pencil-square-o fa-fw"></i>Quản lý sản phẩm</a></li>
							<!-- 	<li><a href="manage_comments.jsp"><i
										class="fa  fa-comments fa-fw"></i>Quản lý bình luận</a></li> -->
							</ul></li>
					<!-- 	<li><a href="revenue.jsp"><i class="fa fa-table fa-fw"></i>Doanh
								thu</a></li>
						<li><a href="oders.jsp"><i
								class="fa  fa-shopping-bag fa-fw"></i> Đơn hàng</a></li> -->
						<li><a href="manage_account.jsp"><i
								class="fa  fa-user fa-fw"></i>Quản lý tài khoản</a></li>
						<li><a href="member.jsp"><i class="fa fa-users fa-fw"></i>Thành
								viên</a></li>
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
								<li><i class="fa fa-home"></i> <a href="index.jsp">Home</a>
									<i class="fa fa-angle-right"></i></li>
								<li><a href="index.jsp">Thống kê</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-green">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-envira fa-4x"></i>
									</div>
									<div class="text-cs">Tổng số sản phẩm</div>
									<div class="col-xs-9 text-right">
										<div class="huge">100</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-red">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-money fa-4x"></i>
									</div>
									<div class="text-cs">Tổng số tiền</div>
									<div class="col-xs-9 text-right">
										<div class="huge">700.000.000đ</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-shopping-basket fa-4x"></i>
									</div>
									<div class="text-cs">Tổng đơn hàng</div>
									<div class="col-xs-9 text-right">
										<div class="huge">50</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-yellow">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-bank fa-4x"></i>
									</div>
									<div class="text-cs">Doanh thu hôm nay</div>
									<div class="col-xs-9 text-right">
										<div class="huge">20.000.000</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-gray">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-calendar-minus-o fa-4x"></i>
									</div>
									<div class="text-cs">Doanh thu tuần</div>
									<div class="col-xs-9 text-right">
										<div class="huge">50.000.000đ</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-darkcyan">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-calendar fa-4x"></i>
									</div>
									<div class="text-cs">Doanh thu tháng</div>
									<div class="col-xs-9 text-right">
										<div class="huge">100.000.000đ</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-cyan">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-users fa-4x"></i>
									</div>
									<div class="text-cs">Tổng số thành viên</div>
									<div class="col-xs-9 text-right">
										<div class="huge">3</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-cy">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-paw fa-4x"></i>
									</div>
									<div class="text-cs">Lượt truy cập</div>
									<div class="col-xs-9 text-right">
										<div class="huge">543</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/metisMenu.min.js"></script>
	<script src="../js/raphael.min.js"></script>
	<script src="../js/startmin.js"></script>

</body>
</html>
