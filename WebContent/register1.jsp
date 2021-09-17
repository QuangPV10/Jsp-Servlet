<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Official Signup Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- fonts -->
<link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
<!-- /fonts -->

<!-- css -->
<link href="css/register/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/register/style.css" rel='stylesheet' type='text/css' media="all" />
<!-- /css -->
</head>


<body>
<div class="content-w3ls">
	<div class="content-agile1">
		<h2 class="agileits1">REGISTER</h2>
	</div>
	<div class="content-agile2">
		<form id="myform" action="http://localhost:8080/WebsiteBanHang/XuLyDangKy" method="post">
		
		<%
	String err = request.getAttribute("err") == null ? "" : (String) request.getAttribute("err"); 	%>
			
		
			<div class="form-control w3layouts"> 
				<input type="text" id="username" name="taikhoan" placeholder="User Name" title="Please enter your User Name" required="">
			</div>
						<p style="color: red">
								<%=err%>
							</p>
			<div class="form-control w3layouts">	
				<input type="email" id="email" name="email" placeholder="mail@example.com" title="Please enter a valid email" required="">
			</div>

			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="matkhau" placeholder="Password" id="password1" required="">
			</div>	

			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="matkhau" placeholder="Confirm Password" id="password2" required="">
			</div>			
			<div class="form-control w3layouts"> 
				<input type="text" id="username" name="hoten" placeholder="Yourname" title="Please enter your Your Name" required="">
			</div>		
			<input type="submit" class="register" value="Register">
		</form>
		
		<script type="text/javascript">
			window.onload = function () {
				document.getElementById("password1").onchange = validatePassword;
				document.getElementById("password2").onchange = validatePassword;
			}
			function validatePassword(){
				var pass2=document.getElementById("password2").value;
				var pass1=document.getElementById("password1").value;
				if(pass1!=pass2)
					document.getElementById("password2").setCustomValidity("Passwords Don't Match");
				else
					document.getElementById("password2").setCustomValidity('');	 
			}
		</script>
		
		
	</div>
	<div class="clear"></div>
</div>
</body>
</html>