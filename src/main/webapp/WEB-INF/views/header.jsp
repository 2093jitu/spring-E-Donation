<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="<c:url value='img/favicon.png'/>" type="image/png">
<title>eDonation</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="<c:url value='/css/bootstrap.css'/>">
<link rel="stylesheet" href="<c:url value='/vendors/linericon/style.css'/>">
<link rel="stylesheet" href="<c:url value='/css/font-awesome.min.css'/>">
<link rel="stylesheet" href="<c:url value='/vendors/owl-carousel/owl.carousel.min.css'/>">
<link rel="stylesheet" href="<c:url value='/vendors/lightbox/simpleLightbox.css'/>">
<link rel="stylesheet" href="<c:url value='/vendors/nice-select/css/nice-select.css'/>">
<link rel="stylesheet" href="<c:url value='/vendors/animate-css/animate.css'/>">
<link rel="stylesheet" href="<c:url value='/vendors/jquery-ui/jquery-ui.css'/>">
<!-- main css -->
<link rel="stylesheet" href="<c:url value='/css/style.css'/>">
<link rel="stylesheet" href="<c:url value='/css/responsive.css'/>">
<script src="<c:url value='/js/jquery-3.2.1.min.js'/>"></script>
<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js">
</script>
</head>
<body>
	<!--================Header Menu Area =================-->
	<header class="header_area">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="<c:url value='/'/>"> <img
						src="<c:url value='img/logo.png'/>" alt="">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset"
						id="navbarSupportedContent">
						<div class="row ml-0 w-100">
							<div class="col-lg-12 pr-0">
								<ul class="nav navbar-nav center_nav pull-right">
									<li class="nav-item "><a class="nav-link"
										href="<c:url value='/loginorsinup'/>">Create Donation</a></li>
									<li class="nav-item "><a class="nav-link"
										href="<c:url value='/donationcurd'/>">Donate Now</a></li>
									<li class="nav-item "><a class="nav-link"
										href="<c:url value='/bloodDonation'/>">Blood Donation</a></li>
									<li class="nav-item submenu dropdown"><a href="#"
										class="nav-link dropdown-toggle" data-toggle="dropdown"
										role="button" aria-haspopup="true" aria-expanded="false">Join
											Us</a>
										<ul class="dropdown-menu">
											<li class="nav-item"><a class="nav-link"
												href="<c:url value='/jointeam'/>">Join Our Team</a></li>
											<li class="nav-item"><a class="nav-link"
												href="<c:url value='/teammember'/>">Team Member</a></li>
										</ul>
										</li>
									<li class="nav-item "><a class="nav-link"
										href="<c:url value='/contactUs'/>">ContactUs </a></li>
									<!-- <li class="nav-item submenu dropdown"><a href="#"
										class="nav-link dropdown-toggle" data-toggle="dropdown"
										role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
										<ul class="dropdown-menu">
											<li class="nav-item"><a class="nav-link"
												href="/contactUs">Contact Us</a></li>
											<li class="nav-item"><a class="nav-link"
												href="single-blog.html">Blog Details</a></li>
										</ul>
									</li> -->
									<li class="nav-item"><a class="main_btn"
										href="<c:url value='/donationcurd'/>">donate now</a></li>
									<li class="nav-item"><a class="main_btn"
										data-toggle="modal" data-target="#exampleModalCenter">
											Admin</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</header>