<%@page import="model.ThanhVien"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<body>

	<div class="header" id="home">
		<div class="logo">
			<a href="index.jsp"><img src="images/abs.png" alt=""></a>
		</div>



		<ul class="header-in">
			<%
				ThanhVien thanhVien = (ThanhVien) session.getAttribute("USER");
			%>
			<%
				if (thanhVien != null) {
			%>
			<li>Xin Chào, <%=thanhVien.getHoTen()%>  <%if(thanhVien.getLevel()==1){%><a href="http://localhost:8080/WebsiteBanHang/Admin/pages/index.jsp"><i style="margin-left: 5px" class="fa fa-cog" aria-hidden="true"></i></a> <% } %> </li>
			<%
				} else {
			%>
			<li><a href="account1.jsp">MY ACCOUNT</a> <i class="glyphicon glyphicon-user"></i></li>
			<%
				}
			%>
			<li><a href="cart.jsp">CART</a> <i class="fa fa-shopping-cart" aria-hidden="true"></i> </li>
			
			<li><a href="contact.jsp">CONTACT US</a> <i class="glyphicon glyphicon-envelope"></i></li>
			
			<li><a href="XuLyDangXuat">Log Out </a> </li>
				


		</ul>
	</div>

	<div class="header-top">
		<div class="clearfix"></div>
	</div>

</body>
</html>