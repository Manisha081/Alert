<%@ page  import="com.chat.*" import="databaseconnection.*"%>


<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>User</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="css/login_overlay.css" rel='stylesheet' type='text/css' />
	<link href="css/style6.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="css/shop.css" type="text/css" />
	<link href="css/contact.css" rel='stylesheet' type='text/css' />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
</head>

<body>
	<div class="banner-top container-fluid" id="home">
		<!-- header -->
		<header>
			<div class="row">
				<div class="col-md-12 logo-w3layouts text-center">
					<h1 class="logo-w3layouts">
						<a class="navbar-brand" href="">
Alert System
 </a>
					</h1>
				</div>
<br>
				<div class="col-md-1 top-info-cart text-right mt-lg-1">
					<!---->
					<div class="overlay-login text-left">
						<button type="button" class="overlay-close1">
							<i class="fa fa-times" aria-hidden="true"></i>
						</button>
						<div class="wrap">
							<h6 class="text-center "><font size="+1" color="#ffffff"><%=session.getAttribute("name")%></font></h5>
							<div class="login p-5 bg-dark mx-auto mw-100">
								<form action="ViewProfile.jsp" method="post">
									<button type="submit" class="btn btn-primary submit mb-4">Profile</button>


								</form>

							</div>
							<div class="login p-5 bg-dark mx-auto mw-100">
								<form action="index.jsp" method="post">
									<button type="submit" class="btn btn-primary submit mb-4">Logout</button>


								</form>

							</div>
							<!---->
						</div>
					</div>
					<!---->
				</div>
			</div>
			<div class="search">
				<div class="mobile-nav-button">
					<ul class="cart-inner-info">
						<li class="button-log">
							<a class="btn-open" href="#">
								<span class="fa fa-user" aria-hidden="true"></span>
							</a>
						</li>
					</ul>
				</div>
				<!-- open/close -->
				<!-- open/close -->
			</div>
			<label class="top-log mx-auto"></label>
			<nav class="navbar navbar-expand-lg navbar-light bg-light top-header mb-2">

				<button class="navbar-toggler mx-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				    aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon">
						
					</span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
<ul class="navbar-nav nav-mega ">
						<li class="nav-item">
							<a class="nav-link" href="user_home.jsp">Home
							</a>
						<li class="nav-item">
							<a class="nav-link" href="call.jsp">Call
							</a>
					
						</li>	
						<li class="nav-item">
							<a class="nav-link" href="alert.jsp">Alert
							</a>
					
						</li>
						<li class="nav-item">
							<a class="nav-link" href="panic.jsp">Panic
							</a>
					
						</li>
							<li class="nav-item">
							<a class="nav-link" href="viewhosp.jsp">Emergency Services
							</a>
					
						</li>
	<li class="nav-item">
							<a class="nav-link" href="tips.jsp">Tips
							</a>
					
						</li>

						


						<li class="nav-item">
							
						</li>
						

					</ul>

				</div>
			</nav>
		</header>
		<!-- banner -->
		<div class="banner_inner">
			<div class="services-breadcrumb">
				<div class="inner_breadcrumb">

					<ul class="short">
						<li>
					</ul>
				</div>
			</div>

		</div>
		<!--//banner -->
	</div>
	
<head>
<style>
#tab {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;  

   
}

#tab td, #tab th {
    border: 1px solid #ddd;
    padding: 8px;

}

#tab tr:nth-child(even){background-color: #f2f2f2;}

#tab tr:hover {background-color: #ddd;}

#tab th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #95777c;
    color: white;
}
</style>
</head>


	<!--// header_top -->
	<!-- top Products -->
	<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
		<div class="container">
			<h3 class="tittle-w3layouts text-center my-lg-4 my-4"><%=title%></h3>
	
