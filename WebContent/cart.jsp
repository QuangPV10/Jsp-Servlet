<%@page import="model.ThanhVien"%>
<%@page import="model.SanPhamTrongGioHang"%>
<%@page import="utils.FullPath"%>
<%@page import="java.awt.image.SampleModel"%>
<%@page import="admin_dao.ProductsDAO"%>
<%@page import="java.util.*"%>
<%@page import="model.SanPham"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Mihstore A Ecommerce Category Flat Bootstarp Resposive
	Website Template | Cart :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Mihstore Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

	

</script>
<!--fonts-->
<link
	href='http://fonts.googleapis.com/css?family=Cabin:400,500,600,700'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<!--//slider-script-->
<script>
	$(document).ready(function(c) {
		$('.alert-close').on('click', function(c) {
			$('.message').fadeOut('slow', function(c) {
				$('.message').remove();
			});
		});
	});
	
	
	
	
	
	 $(document).ready(function(){
		 
		 $('.update-count').on('click',function(){
			 let sl = $(this).parent().children('.soluong').val();
			 let msp =  $(this).parent().children('.masanpham').val();
			 if(sl==='' ){
				 sl="1";
			 }
			 let url = 'http://localhost:8080/WebsiteBanHang/XuLyDonHang?masanpham='+msp+"&soluong="+sl;
			 return location.href = url;
			 }) });
	 
	 
	 
	 
	 
	 
</script>
<script>
	$(document).ready(function(c) {
		$('.alert-close1').on('click', function(c) {
			$('.message1').fadeOut('slow', function(c) {
				$('.message1').remove();
			});
		});
	});
</script>
<script>
	$(document).ready(function(c) {
		$('.alert-close2').on('click', function(c) {
			$('.message2').fadeOut('slow', function(c) {
				$('.message2').remove();
			});
		});
	});
</script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<style type="text/css">
.tb-cart td {
	vertical-align: middle !important;
	text-align: center;
}

.tb-cart th {
	text-align: center;
}
</style>
</head>
<body>
	<!--header-->
	<div class="container">
		<!-- header-top -->
		<jsp:include page="header/header-top.jsp"></jsp:include>
		<!-- header-top -->
		<!-- header-bottom -->
		<jsp:include page="header/header-bottom.jsp"></jsp:include>
		<!-- header-bottom -->




		<table class="table table-hover tb-cart">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên sản phẩm</th>
					<th>Hình ảnh</th>
					<th>Số lượng</th>
					<th>Giá</th>
					<th>Thao tác</th>
				</tr>
			</thead>


			<tbody>

				<%
					SanPhamTrongGioHang cart = (SanPhamTrongGioHang) session.getAttribute("cart");
					int count = 0;
				%>
				<%
					for (int i = 0; i < cart.getList().size(); i++) {
				%>
				<tr>
					<td><%=++count%></td>
					<td><%=cart.getList().get(i).getSanPham().getTenSanPham()%></td>
					<td style="width:"><img alt=""
						src="<%=FullPath.fullPath(cart.getList().get(i).getSanPham().getHinhAnh())%>"
						width="80"></td>
					<td><input type="hidden" class="masanpham" value="<%=cart.getList().get(i).getSanPham().getMaSanPham()%>"> 
						<input type="number" min="1" required="required" class="soluong" name="soluong" value="<%=cart.getList().get(i).getSoLuong()%>">
						<span class="update-count" style="display: block; margin-left: 5px">
							<i class="fa fa-paw" aria-hidden="true"></i>
						</span></td>
					<td><%=String.format("%,.0f", cart.getPrice(cart.getList().get(i).getSanPham().getMaSanPham())) + "đ"%></td>

					<td><a href="<%=FullPath.fullPath("XuLyXoaDonHang?masanpham=" + cart.getList().get(i).getSanPham().getMaSanPham())%>">
							<button type="button" class="btn btn-danger"
								aria-label="Right Align">
								<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
							</button>
					</a></td>
				</tr>
				<%
					}
				%>

			</tbody>
		</table>

		<div
			style="display: flex; justify-content: space-around; align-items: center;">
			<h3 style="color: red">
				<%="Tổng Tiền: " + String.format("%,.0f", cart.total()) + "đ"%></h3>
			<h3>
			<%ThanhVien tv =(ThanhVien) session.getAttribute("USER"); %>
			<%if(tv!=null){ %>
				<a href="<%=FullPath.fullPath("XuLyThanhToan")%>">Thanh Toán </a>
				<%}else { %>
				<a href="<%=FullPath.fullPath("XuLyThanhToan?action=login")%>" onclick="return confirm('Vui lòng Đăng nhập để thanh toán') ">Thanh Toán </a>
				<%} %>
			</h3>
		</div>


		<div class="content">
			<%
				if (cart.getList().size() == 0) {
			%>
			<div class="check-out">
				<h4 class="title">Shopping cart is empty</h4>

				<p class="cart-out">
					You have no items in your shopping cart.<br>Click<a
						href="index.jsp"> here</a> to continue shopping
				</p>
			</div>

			<%
				}
			%>

		</div>
		<!---->
		<footer>
			<jsp:include page="footer/footerlv1.jsp"></jsp:include>
		</footer>
	</div>

	<!---->

</body>

</html>