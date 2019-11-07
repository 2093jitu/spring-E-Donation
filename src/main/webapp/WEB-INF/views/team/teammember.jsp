
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../header.jsp"></jsp:include>
<!--================Header Menu Area =================-->

<!--================ Banner Area =================-->
<section class="banner_area">
	<div class="banner_inner d-flex align-items-center">
		<div class="overlay"></div>
		<div class="container">
			<div class="banner_content text-center">
				<h2>Causes</h2>
				<div class="page_link">
					<a href="<c:url value='/'/>">Home</a> <a href="causes.html">Causes</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!--================Header Menu Area =================-->
<!--================ Start About Us Section =================-->
<section class="about_us section_gap">
	<div class="container">
		<c:forEach var="mamber" items="${teammamber}">
			<c:if test="${mamber.status=='Team Member'}">
				<div class="row">
					<div class="col-lg-5">
						<div class="about_img">
							<img class="img-fluid"
								src="<c:url value='img/teammemberpic/${mamber.profilepic}'/>"
								alt="" style="box-shadow: 0px 13px 35px #c9c9c91f;">
						</div>
					</div>
					<div class="offset-lg-1 col-lg-6">
						<div class="content_wrapper">
							<h1>Name : ${mamber.fullName}</h1>
							<hr style="border-top: 2px solid;"></hr>
							<h2>Address : ${mamber.fullName}</h2>
							<h2>Gender : ${mamber.gender}</h2>
							<h2>Occupation : ${mamber.occupation}</h2>
							<h2>Email Address : ${mamber.email}</h2>
							<!-- <p>inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially
							in the workplace. That’s why it’s crucial that, as women, our behavior on the job is beyond reproach. inappropriate
							behavior is often laughed.</p>
						<p>inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially
							in the workplace.</p> -->
							<a href="#" class="main_btn">view more details</a>
						</div>
					</div>
				</div>
			</c:if>
		</c:forEach>
	</div>
</section>
<!--================ End About Us Area =================-->
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<hr>
		</div>
	</div>
</div>
<!--================ Start Clients Logo Area =================-->
<section class="clients_logo_area section_gap">
	<div class="container">
		<div class="clients_slider owl-carousel">
			<div class="item">
				<img src="<c:url value='img/clients-logo/c-logo-1.png'/>" alt="">
			</div>
			<div class="item">
				<img src="<c:url value='img/clients-logo/c-logo-2.png'/>" alt="">
			</div>
			<div class="item">
				<img src="<c:url value='img/clients-logo/c-logo-3.png'/>" alt="">
			</div>
			<div class="item">
				<img src="<c:url value='img/clients-logo/c-logo-4.png'/>" alt="">
			</div>
			<div class="item">
				<img src="<c:url value='img/clients-logo/c-logo-5.png'/>" alt="">
			</div>
		</div>
	</div>
</section>
<!--================ End Clients Logo Area =================-->

<!--================ Start Footer Area  =================-->
<jsp:include page="../footer.jsp"></jsp:include>