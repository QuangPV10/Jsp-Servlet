<%@page import="dao.ProductDAO"%>
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
<title>Mihstore A Ecommerce Category Flat Bootstarp Resposive Website Template | Single :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Mihstore Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
<!--//fonts-->
<!--//slider-script-->
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.message1').fadeOut('slow', function(c){
	  		$('.message1').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close2').on('click', function(c){
		$('.message2').fadeOut('slow', function(c){
	  		$('.message2').remove();
		});
	});	  
});
</script>
<link rel="stylesheet" href="css/etalage.css">
<script src="js/jquery.etalage.min.js"></script>
		<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>
		<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>
				<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>		
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
		
		
		<div class="content">

			<div class="col-md-9">
			
			
				<% SanPham sp = (SanPham) request.getAttribute("sanpham");%>
					
				<div class="col-md-5 single-top">	
						<ul id="etalage">
							<li>
								<a href="optionallink.jsp">
									<img class="etalage_thumb_image img-responsive" src="<%=FullPath.fullPath(sp.getHinhAnh()) %>" alt="" >
									<img class="etalage_source_image img-responsive" src="<%=FullPath.fullPath(sp.getHinhAnh()) %>" alt="" >
								</a>
							</li>
							
						</ul>

					</div>	
					
				
						<% if(sp!=null){%>
						
					<div class="col-md-7 single-top-in">
						<div class="single-para">
							<h4><%=sp.getTenSanPham() %></h4>
							<div class="para-grid">
								<span  class="add-to"><%=String.format("%,.0f", sp.getGiaBan()) + "đ"%></span>
								<a href="<%=FullPath.fullPath("XuLyDonHang?masanpham=")+sp.getMaSanPham() %>" class=" cart-to">Add to Cart</a>					
								<div class="clearfix"></div>
							 </div>
								<!-- <a href="detail.jsp" class="cart-an ">More details</a> -->
							<div class="share">
							<h4>Share Product :</h4>
							<ul class="share_nav">
								<li><a href="#"><img src="images/facebook.png" title="facebook"></a></li>
								<li><a href="#"><img src="images/gpluse.png" title="Google+"></a></li>
				    		</ul>
						</div>
						</div>
					</div>
					
										
						
						<%
					}
						%>
						
						
						
						
						
				<div class="clearfix"> </div>
				<%int loai=sp.getLoai(); 
					List<SanPham> dssp = ProductDAO.selectPrByType(loai);
				%>
 		<%if(dssp!=null){ %>
 		<ul id="flexiselDemo1">
 		<%for(SanPham sp1 :dssp){ %>
			<li><a href="<%=FullPath.fullPath("ChiTietSanPham?masanpham=")+sp1.getMaSanPham() %>"><img src="<%=FullPath.fullPath(sp1.getHinhAnh()) %>" /></a><div class="grid-flex"><a href="<%=FullPath.fullPath("ChiTietSanPham?masanpham=")+sp1.getMaSanPham() %>"><%=sp1.getTenSanPham() %></a><p><%=String.format("%,.0f", sp.getGiaBan()) + "đ"%></p></div></li>
			<%} %>
		 </ul>
		 
	
		 
<%} %>
						
		 
	    <script type="text/javascript">
		 $(window).load(function() {
			$("#flexiselDemo1").flexisel({
				visibleItems: 5,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });
		    
		});
	</script>
	
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
			</div>
			<div class="clearfix"> </div>
		</div>
		<!---->
		<footer>
			<jsp:include page="footer/footerlv1.jsp"></jsp:include>
		</footer> 
	</div>

	<!---->
</body>
</html>