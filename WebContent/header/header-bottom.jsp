<%@page import="utils.FullPath"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="header-bottom">
		<div class="top-nav">

			<ul class="megamenu skyblue">
				<li class="grid"><a href="<%=FullPath.fullPath("PhanLoaiSanSam?loai=0")%>">SẢN PHẨM KHUYẾN MÃI</a></li>

				<li class="grid"><a href="<%=FullPath.fullPath("PhanLoaiSanSam?loai=1")%>">SẢN PHẨM MỚI</a></li>

				<li class="grid"><a href="<%=FullPath.fullPath("PhanLoaiSanSam?loai=2")%>">SẢN PHẨM HOT</a></li>





			</ul>
		</div>
	
		<div class="clearfix"></div>
	</div>

</body>
</html>