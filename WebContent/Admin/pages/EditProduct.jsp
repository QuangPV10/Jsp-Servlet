<%@page import="utils.FullPath"%>
<%@page import="java.awt.image.SampleModel"%>
<%@page import="admin_dao.ProductsDAO"%>
<%@page import="java.util.*"%>
<%@page import="model.SanPham"%>
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

<title>Edit Sản Phẩm</title>

<link href="../css/bootstrap.min.css" rel="stylesheet">

<link href="../css/metisMenu.min.css" rel="stylesheet">

<link href="../css/timeline.css" rel="stylesheet">

<link href="../css/startmin.css" rel="stylesheet">

<link href="../css/morris.css" rel="stylesheet">
<!-- DataTables CSS -->
<link href="../css/dataTables/dataTables.bootstrap.css" rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link href="../css/dataTables/dataTables.responsive.css"
	rel="stylesheet">

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
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
						Admin <b class="caret"></b>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i> User
								Profile</a></li>
						<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
						</li>
						<li class="divider"></li>
						<li><a href="<%=FullPath.fullPath("account1.jsp")%>"><i
								class="fa fa-sign-out fa-fw"></i> Logout</a></li>
					</ul></li>
			</ul>
		</nav>

		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="page-bar page-header">
							<ul class="page-breadcrumb">
								<li><i class="fa fa-home"></i> <a href="index.jsp">Home</a>
									<i class="fa fa-angle-right"></i></li>
								<li><a href="#">Danh mục</a> <i class="fa fa-angle-right"></i>
								</li>
								<li><a href="products.jsp">Quản lý sản phẩm</a> <i
									class="fa fa-angle-right"></i></li>
								<li><a href="EditProduct.jsp">Edit Sản phẩm</a></li>
							</ul>
						</div>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<i class="fa fa-envira"></i>Edit Sản Phẩm
							</div>
				<% SanPham sp = (SanPham) request.getAttribute("suasanpham");%>
							<form class="suasanpham" action="<%=FullPath.fullPathAdmin("XuLySuaSanPham")%>" method="get">
							
					<input type="hidden" name="action" value="xulysua">
					<% if(sp!=null){ %>
							
								<fieldset>

									<div class="1">
										<label class="2">Mã sản phẩm</label>
										<div class="3">
											<input class="4" id="focusedInput" type="text" name="masanpham" value="<%=sp.getMaSanPham()%>">
										</div>
									</div>
									<div class="1">
										<label class="2" for="focusedInput">Tên sản phẩm</label>
										<div class="3">
											<input class="4" id="focusedInput" type="text" name="tensanpham" value="<%=sp.getTenSanPham()%>">
										</div>
									</div>
									<div class="1">
										<label class="2" for="focusedInput">Giá bán</label>
										<div class="3">
											<input class="4" id="focusedInput" type="number" name="giaban" value="<%=(long)sp.getGiaBan()%>">
										</div>
									</div>
									<div class="1">
										<label class="2" for="focusedInput">Số lượng</label>
										<div class="3">
											<input class="4" id="focusedInput" type="number" name="soluong" value="<%=sp.getSoLuong()%>">	
										</div>
									</div>
									<div class="1">
										<label class="2" for="focusedInput">Nhà cung cấp</label>
										<div class="3">
											<input class="4" id="focusedInput" type="text" name="nhacungcap" 	value="<%=sp.getNhaCungCap()%>">
										</div>
									</div>
								
									<div class="1">
										<label class="2" for="focusedInput">Loại</label>
										<div class="3">
										<select name="loai" >
											<option value="0">0 </option>
											<option value="1">1 </option>
											<option value="2">2 </option>
										</div>
										</select>
									</div>
									
									
							<% } %>		
									
									

									<div class="form-actions" >
										<button type="submit" class="btn btn-primary">Lưu thay đổi</button>
											
										<a class="btn btn-danger" href="<%=FullPath.fullPathAdmin("products.jsp")%>">Hủy</a>
									</div>
								</fieldset>
							</form>

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
	<!-- DataTables JavaScript -->
	<script src="../js/dataTables/jquery.dataTables.min.js"></script>
	<script src="../js/dataTables/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="../js/startmin.js"></script>

	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		});
	</script>

</body>
</html>
