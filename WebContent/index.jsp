<%@page import="dao.ProductDAO"%>
<%@page import="utils.FullPath"%>
<%@page import="java.awt.image.SampleModel"%>
<%@page import="admin_dao.ProductsDAO"%>
<%@page import="java.util.*"%>
<%@page import="model.SanPham"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>LAPTOP NQT</title>
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

</head>
<body>
	<!--header-->
	<div class="container">
		<!--  header-top -->

		<jsp:include page="header/header-top.jsp"></jsp:include>
		<!--  header-top -->

		<!--  header-bottom -->
		<jsp:include page="header/header-bottom.jsp"></jsp:include>
		<!-- header-bottom -->

		<div class="content">

			<div class="col-md-9">
				<div class="shoe">
					<img class="img-responsive" src="images/giamgia.png" alt="">

				</div>
				<div class="content-bottom">
				
				<h3>SẢN PHẨM NỔI BẬT</h3>
				
				
				<%List<SanPham> dssp;
				dssp=(List<SanPham>)request.getAttribute("dssp");%>
				<%if(dssp==null){ %>
				<%dssp=ProductDAO.selectPrByType(0);%> 
				<%}%>
						<%
							for (int i = 0; i < dssp.size(); i++) {
						%> 
						<div class="bottom-grid">
						<div class="col-md-4 shirt">
							<div class="bottom-grid-top">
								<a href="<%=FullPath.fullPath("ChiTietSanPham?masanpham=")+dssp.get(i).getMaSanPham()%>"><img class="img-responsive"
									src="<%=FullPath.fullPath(dssp.get(i).getHinhAnh())%>" alt="">
									<div class="pre">
										<p ><%=dssp.get(i).getTenSanPham()%></p><br>
										<span ><%=String.format("%,.0f", dssp.get(i).getGiaBan()) + "đ"%></span>
										<div class="clearfix"></div>
									</div></a>
							</div>
						</div> 
						<%
							if (++i < dssp.size()) {
						%>
						<div class="col-md-4 shirt">
							<div class="bottom-grid-top">
								<a href="<%=FullPath.fullPath("ChiTietSanPham?masanpham=")+dssp.get(i).getMaSanPham()%>"><img class="img-responsive"
									src="<%=FullPath.fullPath(dssp.get(i).getHinhAnh())%>" alt="">
									<div class="pre">
										<p ><%=dssp.get(i).getTenSanPham()%></p><br>
										<span ><%=String.format("%,.0f", dssp.get(i).getGiaBan()) + "đ"%></span>
										
										<div class="clearfix"></div>
									</div></a>
							</div>
						</div>
						<%
							}
						%>

						<%
							if (++i < dssp.size()) {
						%>
						<div class="col-md-4 shirt">
							<div class="bottom-grid-top">
								<a href="<%=FullPath.fullPath("ChiTietSanPham?masanpham=")+dssp.get(i).getMaSanPham()%>"><img class="img-responsive"
									src="<%=FullPath.fullPath(dssp.get(i).getHinhAnh())%>" alt="">
									<div class="pre">
										<p ><%=dssp.get(i).getTenSanPham()%></p><br>
										<span ><%=String.format("%,.0f", dssp.get(i).getGiaBan()) + "đ"%></span>
										<div class="clearfix"></div>
									</div></a>
							</div>
						</div>
						<div class="clearfix"> </div>
						
					</div>
					<%
							}
						%>

						<%
							}
						%>

					<!-- <ul class="start">
						<li><span>1</span></li>
						<li class="arrow"><a href="#">2</a></li>
						<li class="arrow"><a href="#">3</a></li>
						<li class="arrow"><a href="#">4</a></li>
						<li class="arrow"><a href="#">5</a></li>
						<li class="arrow"><a href="#">6</a></li>
					</ul> -->
						<jsp:include page="footer/footerlv1.jsp"></jsp:include>
				</div>



				
				<div class="clearfix"></div>
			</div>
		<div class="col-md-3 col-md">
					<%-- <div class=" possible-about">
						<h4>Sort Products</h4>
						<div class="tab1">
							<ul class="place">

								<li class="sort">Sort by <span>price</span></li>
								<li class="by"><img src="images/do.png" alt=""></li>
								<div class="clearfix"></div>
							</ul>

							<div class="single-bottom">

								<a href="#"> <input type="checkbox" id="brand" value="">
									<label for="brand"><span></span><b> >50tr</b></label>
								</a> <a href="#"> <input type="checkbox" id="brand" value="">
									<label for="brand"><span></span><b> 20tr - 50tr</b></label>
								</a> <a href="#"> <input type="checkbox" id="brand1" value="">
									<label for="brand1"><span></span> <b>15tr - 20tr</b></label>
								</a> <a href="#"> <input type="checkbox" id="brand2" value="">
									<label for="brand2"><span></span> <b>10tr - 14t</b></label>
								</a> <a href="#"> <input type="checkbox" id="brand3" value="">
									<label for="brand3"><span></span> <b> <10tr </b></label>
								</a>

							</div>
						</div>
						
						
						
						<div class="tab2">
							<ul class="place">

								<li class="sort">Sort by <span>brands</span></li>
								<li class="by"><img src="images/do.png" alt=""></li>
								<div class="clearfix"></div>
							</ul>
							
							
							<div class="single-bottom">
							
						


								<a href="<%=FullPath.fullPath("PhanLoaiNhaCungCap?nhacungcap=ASUS")%>"> <input type="checkbox" id="nike" value="">
									<label for="nike"><span></span><b>Asus</b></label>
								</a> <a href="<%=FullPath.fullPath("PhanLoaiNhaCungCap?nhacungcap=ACER")%>"> <input type="checkbox" id="nike1" value="">
									<label for="nike1"><span></span> <b>Acer</b></label>
								</a> <a href="<%=FullPath.fullPath("PhanLoaiNhaCungCap?nhacungcap=DELL")%>"> <input type="checkbox" id="nike2" value="">
									<label for="nike2"><span></span><b>Dell</b></label>
								</a> <a href="<%=FullPath.fullPath("PhanLoaiNhaCungCap?nhacungcap=HP")%>"> <input type="checkbox" id="nike3" value="">
									<label for="nike3"><span></span> <b>HP</b></label>
								</a> <a href="<%=FullPath.fullPath("PhanLoaiNhaCungCap?nhacungcap=APPLE")%>"> <input type="checkbox" id="nike4" value="">
									<label for="nike4"><span></span><b>Apple</b></label>
								</a>
							</div>

						</div>
						

						<!--script-->
						<script>
							$(document).ready(function() {
								$(".tab1 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab3 .w_nav2").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .star-at").hide();
								$(".tab1 ul").click(function() {
									$(".tab1 .single-bottom").slideToggle(300);
									$(".tab2 .single-bottom").hide();
									$(".tab3 .w_nav2").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .star-at").hide();
								})
								$(".tab2 ul").click(function() {
									$(".tab2 .single-bottom").slideToggle(300);
									$(".tab1 .single-bottom").hide();
									$(".tab3 .w_nav2").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .star-at").hide();
								})
								$(".tab3 ul").click(function() {
									$(".tab3 .w_nav2").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab5 .star-at").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab4 ul").click(function() {
									$(".tab4 .single-bottom").slideToggle(300);
									$(".tab5 .star-at").hide();
									$(".tab3 .w_nav2").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab5 ul").click(function() {
									$(".tab5 .star-at").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab3 .w_nav2").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
							});
						</script>
						<!-- script -->
					</div>
 --%>








					<!-- xoa -->



					<div class="content-bottom-grid">
						<h3>Best Sellers</h3>
						<div class="latest-grid">
							<div class="news">
								<a href="#"><img class="img-responsive"
									src="images/hinh13.jpg" title="name" alt=""></a>
							</div>
							<div class="news-in">
								<h6>
									<a href="#">Product name here</a>
								</h6>
								<p>Description Lorem ipsum</p>
								<ul>
									<li>Price: <span>40.000.000d</span>
									</li>
									<b>|</b>
									<li>Country: <span>US</span></li>
								</ul>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="latest-grid">
							<div class="news">
								<a href="#"><img class="img-responsive"
									src="images/hinh10.jpg" title="name" alt=""></a>
							</div>
							<div class="news-in">
								<h6>
									<a href="#">Product name here</a>
								</h6>
								<p>Description Lorem ipsum</p>
								<ul>
									<li>Price: <span>35.000.000d</span>
									</li>
									<b>|</b>
									<li>Country: <span>US</span></li>
								</ul>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="latest-grid">
							<div class="news">
								<a href="#"><img class="img-responsive"
									src="images/hinh11.jpg" title="name" alt=""></a>
							</div>
							<div class="news-in">
								<h6>
									<a href="#">Product name here</a>
								</h6>
								<p>Description Lorem ipsum</p>
								<ul>
									<li>Price: <span>32.000.000d</span>
									</li>
									<b>|</b>
									<li>Country: <span>US</span></li>
								</ul>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="latest-grid">
							<div class="news">
								<a href="#"><img class="img-responsive"
									src="images/hinh12.jpg" title="name" alt=""></a>
							</div>
							<div class="news-in">
								<h6>
									<a href="single.jsp">Product name here</a>
								</h6>
								<p>Description Lorem ipsum</p>
								<ul>
									<li>Price: <span>29.000.000d</span>
									</li>
									<b>|</b>
									<li>Country: <span>US</span></li>
								</ul>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>



					<!-- xoa -->


					<!---->
					<div class="money">
						<h3>Payment Options</h3>
						<ul class="money-in">
							<li><a href="#"><img class="img-responsive"
									src="images/p1.png" title="name" alt=""></a></li>
							<li><a href="#"><img class="img-responsive"
									src="images/p2.png" title="name" alt=""></a></li>
							<li><a href="#"><img class="img-responsive"
									src="images/p3.png" title="name" alt=""></a></li>
							<li><a href="#"><img class="img-responsive"
									src="images/p4.png" title="name" alt=""></a></li>
							<li><a href="#"><img class="img-responsive"
									src="images/p5.png" title="name" alt=""></a></li>
							<li><a href="#"><img class="img-responsive"
									src="images/p6.png" title="name" alt=""></a></li>
							<li><a href="#"><img class="img-responsive"
									src="images/p1.png" title="name" alt=""></a></li> 
							<li><a href="#"><img class="img-responsive"
									src="images/p4.png" title="name" alt=""></a></li>
							<li><a href="#"><img class="img-responsive"
									src="images/p2.png" title="name" alt=""></a></li>

						</ul>
					</div>
				</div>
			<!---->
		
		</div>
	</div>
	<!---->
</body>
</html>